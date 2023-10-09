@extends('admin.layout.master')
@section('page_title')
Agent Info
@endsection
@section('agent_menu_active')
active
@endsection
@section('content')
<section class="content py-4">
    <div class="container-fluid">

        <div class="row">

            <section class="col-lg-12 connectedSortable">

                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h3 class="card-title mb-0">
                            Agent Info
                        </h3>
                        <a href="{{route('admin.agents.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Agent List</a>
                    </div>

                    <div class="card-body">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-md-4">
                                <div class="card" style="border-top: 2px solid blue">
                                    <div class="card-header">
                                        <h6>Account Activation #{{$agent->id}}</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-flex justify-content-end">
                                            <p>Registered On: {{$agent->created_at->format("d M Y")}}</p>
                                        </div>
                                        <div class="w-100 d-flex align-items-center justify-content-center">
                                            <div style="height: 80px;width:80px"
                                                class="d-flex align-items-start align-items-sm-center">
                                                <img style="height: 100%;width:100%" src="{{$agent->profile_photo}}"
                                                    alt="" class="d-block rounded ">
                                            </div>
                                        </div>
                                        <div class="text-center py-2">
                                            <h3 class="mb-0">{{$agent->name}}</h3>
                                            <p class="mb-0">
                                                Gender:
                                                @if($agent->gender=='m')
                                                Male
                                                @elseif($agent->gender=='f')
                                                Female
                                                @else
                                                N/A
                                                @endif
                                            </p>
                                            <p class="mb-0">
                                                Date of birth:
                                                {{\Carbon\Carbon::parse($agent->dob)->format('Y-m-d')??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                IC Number: {{$agent->ic_number??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                Level: {{$agent->level??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                Downline: {{$agent->downline??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                Username: {{$agent->user_name??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                Upline Name: {{$agent->up_line_name??'N/A'}}
                                            </p>
                                            <p class="mb-0">
                                                Role: {{$agent->role??'N/A'}}
                                            </p>
                                        </div>

                                        <div class="py-2">
                                            <input type="text" class="form-control"
                                                placeholder="Memo (Required if reject/block)" id="memo" />
                                            <small class="memo_error text-danger"></small>
                                            <input type="hidden" name="agent_id" class="agent_id" id="agent_id"
                                                value="{{$agent->id}}">
                                        </div>
                                        <div class="d-flex justify-content-end py-2">
                                            <button class="btn btn-danger me-1 block_btn">Block</button>
                                            <button class="btn btn-warning me-1 reject_btn">Reject</button>
                                            <button class="btn btn-success approve_btn">Approve</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- /.card -->
            </section>


        </div>

    </div>
</section>
@endsection
@section('custom_js')
<script>
    $(".block_btn").click(function(){
        let memo = $("#memo").val();
        let agent_id = $("#agent_id").val();
        if(memo==""||memo==undefined||memo==null){
           $("#memo").css("border","1px solid red") 
           $(".memo_error").text("Memo is required") 
        }
        else{
            $("#memo").css("border","1px solid #d9dee3");
            $(".memo_error").text("");
            let data ={agent_id:agent_id,memo:memo,activation_type:"block"}
            $.ajaxSetup({
                headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                },
            });
            $.ajax({
                type: "post",
                url: "{{route('admin.agents.activation')}}",
                data: data,
                dataType: "json",
                success: function (response) {
                    if(response.status==200){
                        $("#memo").val("")
                        toastr.success(response.message, {
                            timeOut: 5000
                        });
                        // window.location.reload();

                    }
                }
            });
        }
    });
    $(".reject_btn").click(function(){
        let memo = $("#memo").val();
        let agent_id = $("#agent_id").val();
        if(memo==""||memo==undefined||memo==null){
           $("#memo").css("border","1px solid red") 
           $(".memo_error").text("Memo is required") 
        }
        else{
            $("#memo").css("border","1px solid #d9dee3");
            $(".memo_error").text("");
            let data ={agent_id:agent_id,memo:memo,activation_type:"reject"}
            $.ajaxSetup({
                headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                },
            });
            $.ajax({
                type: "post",
                url: "{{route('admin.agents.activation')}}",
                data: data,
                dataType: "json",
                success: function (response) {
                    if(response.status==200){
                        $("#memo").val("")
                        toastr.success(response.message, {
                            timeOut: 5000
                        });
                        // window.location.reload();
                    }
                }
            });
        }
    });

    $(".approve_btn").click(function(){
            let agent_id = $("#agent_id").val();
            let data ={agent_id:agent_id,activation_type:"approve"};
            $.ajaxSetup({
            headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
            });
            $.ajax({
            type: "post",
            url: "{{route('admin.agents.activation')}}",
            data: data,
            dataType: "json",
            success: function (response) {
            if(response.status==200){
            toastr.success(response.message, {
            timeOut: 5000
            });
            // setTimeout(() => {
            //     window.location.reload();
            // }, 1000);
            }
            }
            });
        
    });
</script>
@endsection