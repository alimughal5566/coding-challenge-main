<?php

namespace App\Http\Controllers;

use App\Models\ConnectionModel;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard
     *
     */
    public static function friends($id ,$id2=null){
        $a = User::Join('connection_models','users.id','=','connection_models.sender_id')
            ->selectRaw('users.*')
            ->where('connection_models.receiver_id',$id)
            ->where('connection_models.friend_status','1');

        $b = User::Join('connection_models','users.id','=','connection_models.receiver_id')
            ->selectRaw('users.*')
            ->where('connection_models.sender_id',$id)
            ->where('connection_models.friend_status','1');

        $c= User::Join('connection_models','users.id','=','connection_models.sender_id')
            ->selectRaw('users.*')
            ->where('connection_models.receiver_id',$id2)
            ->where('connection_models.friend_status','1');
        $d = User::Join('connection_models','users.id','=','connection_models.receiver_id')
            ->selectRaw('users.*')
            ->where('connection_models.sender_id',$id2)
            ->where('connection_models.friend_status','1');
         $union= $a->union($b);
         $union2= $c->union($d);
        if($id2==null){
            return $union;
        }else{
//            Mutual friend
            $data=[$union,$union2];
            return $data;
        }
    }
    public function index(){

        $suggestions = User::whereNotIn('users.id', function($query){
            $query->select('connection_models.sender_id')->from('connection_models')->distinct();
        })->whereNotIn('users.id', function($query){
            $query->select('connection_models.receiver_id')->from('connection_models')->distinct();
        })->paginate(10);

        $senders = ConnectionModel::with("receiver")
            ->where('sender_id', Auth::id())
            ->where('friend_status', '=','0')
            ->paginate(10);

        $receivers = ConnectionModel::with("sender")
            ->where('receiver_id', Auth::id())
            ->where('friend_status', '=','0')
            ->paginate(10);

        $connections = self::friends(Auth::id())->distinct()->paginate(10);
                    foreach ($connections as $key=>$friend){
                        $data=self::friends(Auth::id(),$friend->id);
                        $connections[$key]->mutuals= ($data[0]->get()->INTERSECT($data[1]->get()))->count();
                    }
        $data = ['suggestions'=>$suggestions, 'senders'=>$senders, 'receivers'=>$receivers, 'connections'=>$connections];

        return view('home', compact("data"));
    }
    public function getMoreSuggestionUsers($skip, $take) {

        $users = User::whereNotIn('users.id', function($query){
            $query->select('connection_models.sender_id')->from('connection_models')->distinct();
        })->whereNotIn('users.id', function($query){
            $query->select('connection_models.receiver_id')->from('connection_models')->distinct();
        })->skip($skip)->take($take)->get();

        return response()->json($users);
    }

    public function getMoreRequestUsers($skip, $take,$tab) {

        $users = ConnectionModel::with("sender", "receiver")
            ->where($tab.'_id', Auth::id())
            ->where('friend_status', '=','0')
            ->skip($skip)->take($take)->get();

        return response()->json($users);
    }

    public function sendSuggestionRequest(Request $request ){
        $connection = new ConnectionModel();
        $connection->sender_id = Auth::id();
        $connection->receiver_id = $request->id;
        $connection->friend_status = '0';
        $connection->save();
    }

    public function deleteRequest($id) {
        $connetion = ConnectionModel::where("id", $id)->where("friend_status", '1')->first();
        $connetion->delete();
    }

    public function deleteConnection($id) {
        $connetion = ConnectionModel::where("friend_status", '1')
            ->where('sender_id',$id)
            ->orwhere('receiver_id',$id)
            ->first();
        $connetion->delete();
    }
    public function acceptRequest($id) {
        $connetion = ConnectionModel::where("id", $id)->first();
        $connetion->friend_status = '1';
        $connetion->update();
    }
    public function getMoreConnections($skip, $take) {

        $connections = self::friends(Auth::id())->distinct()->skip($skip)->take($take)->get();
        foreach ($connections as $key=>$friend){
            $data=self::friends(Auth::id(),$friend->id);
            $connections[$key]->mutuals= ($data[0]->get()->INTERSECT($data[1]->get()))->count();
        }
        return response()->json($connections);
    }
    public function getConnectionsInCommon($id){
        $data=self::friends(Auth::id(),$id);
        $commonInConnections= ($data[0]->get()->INTERSECT($data[1]->get()))->take(4);
        return $commonInConnections;
    }
    public function getMoreConnectionsInCommon($id,$counter){
        $data=self::friends(Auth::id(),$id);
        $commonInConnections= ($data[0]->get()->INTERSECT($data[1]->get()))->skip($counter*4)->take(4);

        return $commonInConnections;
    }
}
