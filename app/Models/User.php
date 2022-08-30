<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getRequests() {
        return $this->hasMany(ConnectionModel::class, 'sender_id', 'id');
    }
    public function sentRequests()
    {
        return $this->belongsToMany(User::class, 'connection_models', 'sender_id', 'receiver_id')
            ->where('friend_status', '1');
    }
    public function recievedRequests()
    {
        return$this->belongsToMany(User::class, 'connection_models', 'receiver_id', 'sender_id')
            ->where('friend_status', '1');
    }
    public function friends()
    {
        $sentAccepted = $this->sentRequests();
        $recievedAccepted = $this->recievedRequests();
        return $sentAccepted->union($recievedAccepted);
    }


}
