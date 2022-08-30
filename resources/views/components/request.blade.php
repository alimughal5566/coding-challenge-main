<div class="my-2 shadow text-white bg-dark p-1" id="">
    <div class="d-flex justify-content-between">
        <table class="ms-1"  style="width: 100%" id={{$mode."_table"}}>
            @if ($mode == 'receiver')
                @foreach($receivers as $receiver)
                    <tr>
                        <td class="align-middle">{{$receiver['sender']['name']}}</td>
                        <td class="align-middle"> -</td>
                        <td class="align-middle">{{$receiver['sender']['email']}}</td>
                        <td align="right">
                            <button id="accept_request_btn_" class="btn btn-primary me-1" data-accept-id="{{$receiver['id']}}">Accept </button>
                        </td>
                    </tr>
                @endforeach
                    @else
                        @foreach($senders as $sender)

                            <tr>
                                <td class="align-middle">{{$sender['receiver']['name']}}</td>
                                <td class="align-middle"> -</td>
                                <td class="align-middle">{{$sender['receiver']['email']}}</td>
                                <td align="right">
                                    <button id="cancel_request_btn_" class="btn btn-danger me-1" data-remove-id="{{$sender['id']}}">Withdraw Request</button>
                                </td>
                            </tr>
                        @endforeach
                    @endif
        </table>
    </div>
</div>
