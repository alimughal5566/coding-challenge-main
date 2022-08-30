<div class="row justify-content-center mt-5">
  <div class="col-12">
    <div class="card shadow  text-white bg-dark">
      <div class="card-header">Coding Challenge - Network connections</div>
      <div class="card-body">
        <div class="btn-group w-100 mb-3" role="group" aria-label="Basic radio toggle button group">
          <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
          <label class="btn btn-outline-primary" data-content="suggestions" for="btnradio1" id="get_suggestions_btn">Suggestions ({{$data['suggestions']->total()}})</label>

          <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
          <label class="btn btn-outline-primary" data-content="sent" for="btnradio2" id="get_sent_requests_btn">Sent Requests ({{$data['senders']->total()}})</label>

          <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
          <label class="btn btn-outline-primary"  data-content="received"  for="btnradio3" id="get_received_requests_btn">Received
            Requests({{$data['receivers']->total()}})</label>

          <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off">
          <label class="btn btn-outline-primary" data-content="connections" for="btnradio4" id="get_connections_btn">Connections ({{$data['connections']->total()}})</label>
        </div>
        <hr>
          <div id="content" class="tab-content" data-content="suggestions">
              <span class="fw-bold">Suggestion Blade</span>
              <x-suggestion :suggestions="$data['suggestions']"/>

          </div>
          <div class="tab-content d-none" data-content="sent">
              <span class="fw-bold" >Sent Request Blade</span>
              <x-request :mode="'sender'" :senders="$data['senders']" />
          </div>
          <div class="tab-content d-none" data-content="received">
              <span class="fw-bold">Received Request Blade</span>
              <x-request :mode="'receiver'" :receivers="$data['receivers']"/>
          </div>
          <div class="tab-content d-none" data-content="connections">
            <span class="fw-bold">Connections in common</span>
              <x-connection :connections="$data['connections']"/>
          </div>


        {{-- Remove this when you start working, just to show you the different components --}}
{{--        <span class="fw-bold">Sent Request Blade</span>--}}
{{--        <x-request :mode="'sent'" :senders="$data[1]" />--}}

{{--        <span class="fw-bold">Received Request Blade</span>--}}
{{--        <x-request :mode="'received'" />--}}

{{--        <span class="fw-bold">Suggestion Blade</span>--}}
{{--        <x-suggestion :/>--}}

{{--        <span class="fw-bold">Connection Blade (Click on "Connections in common" to see the connections in common--}}
{{--          component)</span>--}}
{{--        <x-connection />--}}
{{--        --}}{{-- Remove this when you start working, just to show you the different components --}}

        <div id="skeleton" class="d-none">
          @for ($i = 0; $i < 10; $i++)
            <x-skeleton />
          @endfor
        </div>

{{--        <span class="fw-bold">"Load more"-Button</span>--}}
        <div class="d-flex justify-content-center mt-2 py-3"  id="load_more_btn_parent">
          <button class="btn btn-primary" onclick="" data-tab="suggestions" id="load_more_btn">Load more</button>
        </div>
      </div>
    </div>
  </div>
</div>

{{-- Remove this when you start working, just to show you the different components --}}

<div id="connections_in_common_skeleton" class="d-none">
  <br>
  <span class="fw-bold text-white">Loading Skeletons</span>
  <div class="px-2">
    @for ($i = 0; $i < 10; $i++)
      <x-skeleton />
    @endfor
  </div>
</div>
