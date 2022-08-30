var skeletonId = 'skeleton';
var contentId = 'content';
var skipCounter = 0;
var takeAmount = 10;
var suggestionCounter = 1;
var sentRequestCounter = 1;
var connectionCounter = 1;
var commonCounter = 1;


function getRequests(mode) {
  // your code here...
}

function getMoreRequests(type, mode,table) {
    let tabType = "sender";

    if (mode === "receive") {
        tabType = "receiver";
    }
    $.ajax({
        type:'GET',
        url:'/user/get-more-requests/' + takeAmount*sentRequestCounter +'/'+takeAmount+'/'+tabType,
        beforeSend: function () {
                $('#skeleton').removeClass('d-none');

        },
        success:function(res) {
            var response = res;
            let html = ''
            if (response.length > 0){
                $.each(response, function(index, item) {
                    html += '<tr><td class="align-middle">'+ item[tabType == 'sender' ? 'receiver' : 'sender']['name'] +'</td>';
                    html += '<td class="align-middle"> - </td>';
                    html += '<td class="align-middle"> '+ item[tabType == 'sender' ? 'receiver' : 'sender']['email'] +'</td>';

                    if (mode === "receive") {
                        html += '<td align="right"><button class="btn btn-primary accept-connection me-1" data-accept-id="'+item['id']+'">Accept</button></td></tr>';
                    } else {
                        html += '<td align="right"><button class="btn btn-danger with-draw-connection me-1" data-remove-id="'+item['id']+'">Withdraw Request</button></td></tr>';
                    }
                });
            } else {
                html += 'No suggestions available';
                $('#load_more_btn').addClass('d-none')
            }
            if (mode === "receive") {
                $('#load_more_btn').attr("data-tab", "receive");
                $('#tot_received').html(response.total);
            } else {
                $('#load_more_btn').attr("data-tab", "sent");
                $('#tot_sent').html(response.total);
            }
                $($(table).children()[1]).find("table").append(html);
                $('#skeleton').addClass('d-none');
            sentRequestCounter++;
        }
    });
}

function getConnections() {
  // your code here...
}
function getMoreConnections() {
    $.ajax({
        type:'GET',
        url:'/get-more-connections/' + takeAmount*connectionCounter +'/'+takeAmount,
        beforeSend: function () {
                $('#skeleton').removeClass('d-none');
        },
        success:function(res) {
            var response =res;
            let html = ''
            if (response.length > 0){
                $.each(response, function(index, item) {
                    html += '<tr><td class="align-middle">'+ item['name'] +'</td>';
                    html += '<td class="align-middle"> - </td>';
                    html += '<td class="align-middle"> '+ item['email'] +'</td>';
                    html += '<td class="align-middle"></td>';
                    html += `<td align="right">

                                  <button class="btn btn-primary get-common-connection"  type="button" data-connection-common="`+ item['id'] +`" data-bs-toggle="collapse"
                                  style="width: 220px" id="get_connections_in_common_"
                                  data-bs-target="#collapse_`+ item['id'] +`" aria-expanded="false" aria-controls="collapse_`+ item['id'] +`">
                                    Connections in common (`+ item['mutuals'] +`)
                                  </button>
                                <button class="btn btn-danger remove-connection me-1" data-remove-connection="`+ item['id'] +`">Remove Connection</button>
                              </td>
                                </tr>
                              <tr>
                               <td colspan="5">
                                   <div class="collapse" id="collapse_`+ item['id'] +`" style="width: 100%">
                                       <div id="content_`+ item['id'] +`" class="p-2">

                                       </div>
                                       <div class="d-flex justify-content-center w-100 py-2">
                                           <button class="btn btn-sm btn-primary load_more_connections_in_common" data-loadmore-id="`+ item['id'] +`" id="load_more_connections_in_common_">Load
                                               more
                                           </button>
                                       </div>
                                   </div>
                               </td>
                            </tr>
`;
                });
            } else {
                html += 'No suggestions available';
                $('#load_more_btn').addClass('d-none');
            }
            $('#load_more_btn').attr("data-tab", "connections");
            $('#tot_connecs').html(response.length);
                $('#connection_table').append(html);
                $('#skeleton').addClass('d-none');
            connectionCounter++;
        }
    });
}

function getConnectionsInCommon(connectionId) {

    $.ajax({
        type:'GET',
        url:'/get-connections-in-common/'+connectionId,
        beforeSend: function () {
            $('.connections_in_common_skeleton2').removeClass('d-none');
        },
        success:function(res) {
            var response = res;
            let html = ''
            if (response.length > 0){
                $.each(response, function(index, item) {
                    html += '<div class="p-2 shadow rounded mt-2  text-white bg-dark">'+ item['name'] +'--'+ item['email'] +'</div>';
                });
            } else {
                html += 'No suggestions available';
                $('#load_more_btn').addClass('d-none')
            }
            $("#content_"+connectionId+"").html(html)
            $('.connections_in_common_skeleton2').addClass('d-none');
        }
    });
}

function getMoreConnectionsInCommon(connectionId) {
    $.ajax({
        type:'GET',
        url:'/get-more-connections-in-common/' + connectionId +'/'+commonCounter,
        beforeSend: function () {
            $('#skeleton').removeClass('d-none');

        },
        success:function(res) {
            var response = res;
            console.log(typeof response,connectionId)
            let html = ''
            if (Object.keys(response).length > 0){
                $.each(response, function(index, item) {
                    html += '<div class="p-2 shadow rounded mt-2  text-white bg-dark">'+ item['name'] +'--'+ item['email'] +'</div>';
                });
            } else {
                html += 'No suggestions available';
                $('[data-loadmore-id='+connectionId+']').addClass('d-none')
            }

            $("#content_"+connectionId+"").append(html);
            $('#skeleton').addClass('d-none');
            commonCounter++;
        }
    });
}

function getSuggestions() {
  // your code here...
}

function getMoreSuggestions() {
    $.ajax({
        type:'GET',
        url:'/get-more-suggestion-users/' + takeAmount*suggestionCounter +'/'+takeAmount,
        beforeSend: function () {
            $('#skeleton').removeClass('d-none');
        },
        success:function(res) {
            var response = res;
            let html = ''
            if (response.length > 0){
                $.each(response, function(index, item) {
                    html += '<tr><td class="align-middle">'+ item['name'] +'</td>';
                    html += '<td class="align-middle"> - </td>';
                    html += '<td class="align-middle"> '+ item['email'] +'</td>';
                    html += '<td align="right">\n' +
                '                  <button id="create_request_btn_" class="btn btn-primary send-connection me-1" data-id="'+item['id']+'">Connect</button>\n' +
                '              </td></tr>';
                });
            } else {
                html += 'No suggestions available';
                $('#load_more_btn').addClass('d-none')
            }
            suggestionCounter++;
            $("#suggestion_table").append(html)
            $('#skeleton').addClass('d-none');
        }
    });
}

function sendRequest( suggestionId) {
    $.ajax({
        type:'POST',
        url:'/send-suggestion-request',
        data: { id: suggestionId},
        success:function(res) {
            console.log(res)
            $('#tot_sugges').html(res.total)
        }
    });

}

function deleteRequest(userId) {
    $.ajax({
        type:'DELETE',
        url:'/delete-request/'+ userId,
        success:function(res) {
        }
    });
}

function acceptRequest(userId) {
    $.ajax({
        type:'PATCH',
        url:'/accept-request/'+ userId,
        data: { id: userId},
        success:function() {
            $('#tot_received').html( parseInt($('#tot_received').text()) - 1);
        }
    });
}

function removeConnection(userId) {
    $.ajax({
        type:'DELETE',
        url:'/delete-connection/'+ userId,
        success:function(res) {
        }
    });
}

$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $("#load_more_btn").on("click", function () {
        let table = '';
        $(".tab-content").each(function(index, item){
            if(!$(item).hasClass('d-none')){
                table = $(item);
            }
        })
        let type = $(this).attr("data-tab");
        if (type === "suggestions") {
            getMoreSuggestions();
            suggestionCounter++;
        } else if (type === "sent") {
            getMoreRequests("load", "sent",table);
            sentRequestCounter++;
        } else if (type === "receive") {
            getMoreRequests("load", "receive",table);
            sentRequestCounter++;
        }else if (type === "connections") {
            getMoreConnections();
            connectionCounter++;
        }
    });
    /**
     * tab movements
     */

    $("#get_suggestions_btn").on("click", function () {
        manageContents($(this).attr("data-content"));
        $('#load_more_btn').attr("data-tab", "suggestions");
    });
    $("#get_sent_requests_btn").on("click", function () {
        manageContents($(this).attr("data-content"));
        $('#load_more_btn').attr("data-tab", "sent");
    });
    $("#get_received_requests_btn").on("click", function () {
         manageContents($(this).attr("data-content"));
        $('#load_more_btn').attr("data-tab", "receive");
    });
    $("#get_connections_btn").on("click", function () {
        manageContents($(this).attr("data-content"));
        $('#load_more_btn').attr("data-tab", "connections");
    });

    $(".load_more_connections_in_common").on("click", function (e) {
        e.preventDefault()
        getMoreConnectionsInCommon($(this).attr("data-loadmore-id"));
    });
});

//Button Functionalities
$(document).on('click','[data-id]', function () {
    sendRequest($(this).attr("data-id"));
    $(this).closest('tr').remove();
});
$(document).on('click','[data-connection-common]', function () {
    getConnectionsInCommon($(this).attr("data-connection-common"));
});
$(document).on('click','[data-remove-id]', function () {
    deleteRequest($(this).attr("data-remove-id"));
    $(this).closest('tr').remove();
});
$(document).on('click','[data-remove-connection]', function () {
    removeConnection($(this).attr("data-remove-connection"));
    $(this).closest('tr').remove();
});
$(document).on('click','[data-accept-id]', function () {
    acceptRequest($(this).attr("data-accept-id"));
    $(this).closest('tr').remove();
});

function manageContents(tab) {
    let retItem = '';
    $(".tab-content").each(function (index, item) {
        if ($(item).attr("data-content") !== tab) {
            $(item).addClass("d-none");
        } else {
            $(item).removeClass("d-none");
            retItem = item;
        }
    });
    $('#load_more_btn').removeClass('d-none')

    return retItem;
}
