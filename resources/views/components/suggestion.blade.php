<div class="my-2 shadow  text-white bg-dark p-1" id="">
  <div class="d-flex justify-content-between" >
    <table class="ms-1" style="width: 100%" id="suggestion_table">
        @foreach($suggestions as $suggestion)
            <tr>
              <td class="align-middle">{{ $suggestion->name }}</td>
              <td class="align-middle"> - </td>
              <td class="align-middle">{{ $suggestion->email }}</td>
              <td align="right">
                  <button id="create_request_btn_"  class=" send-connection btn btn-primary me-1" data-id="{{ $suggestion->id }}" >Connect</button>
              </td>
            </tr>
        @endforeach
    </table>
  </div>
</div>
