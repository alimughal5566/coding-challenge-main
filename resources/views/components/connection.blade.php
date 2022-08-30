
<div class="my-2 shadow text-white bg-dark p-1" id="">
    <div class="d-flex justify-content-between">
        <table class="ms-1" style="width: 100%" id="connection_table">
            @foreach($connections as $connection)
                <tr>
                    <td class="align-middle">{{$connection->name}}</td>
                    <td class="align-middle"> -</td>
                    <td class="align-middle">{{$connection->email}}</td>
                    <td class="align-middle"></td>
                    <td align="right">
                        <button style="width: 220px" id="get_connections_in_common_" class="btn btn-primary get-common-connection"
                                type="button" data-bs-toggle="collapse" data-bs-target="#collapse_{{$connection->id}}" data-connection-common="{{$connection->id}}"
                                aria-expanded="false" aria-controls="collapseExample">Connections in common ({{$connection->mutuals}})
                        </button>
                        <button id="create_request_btn_" class="btn btn-danger me-1" data-remove-connection="{{$connection->id}}">Remove Connection</button>

                    </td>
                </tr>
                <tr>
                   <td colspan="5">
                       <div class="collapse" id="collapse_{{$connection->id}}" style="width: 100%">
                           <div id="content_{{$connection->id}}" class="p-2">

                           </div>
                           <div class="d-flex justify-content-center w-100 py-2">
                               <button class="btn btn-sm btn-primary load_more_connections_in_common" data-loadmore-id="{{$connection->id}}" id="load_more_connections_in_common_">Load
                                   more
                               </button>
                           </div>
                       </div>
                   </td>
                </tr>
            @endforeach

        </table>

    </div>


</div>
