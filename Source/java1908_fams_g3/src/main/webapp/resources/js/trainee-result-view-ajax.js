$(document).ready(function(){
    
    $("#trainee-information").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.get({
//            url: "trainee-profile-view-ajax.html",
        	url: "/trainee-management/trainee-profile-view-ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 500);
            }
        });
    });

    
    $("#btn-update-trainee").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.get({
//            url: "trainee-profile-view-ajax.html",
        	url: "/trainee-management/trainee-profile-update-ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 500);
            }
        });
    });
    
    // $("#training-result").click(function(e){
    //     e.preventDefault();
    //     $("#ajax-area").html("Loading...");
    //     $.get({
    //         url: "trainee-result-view-ajax.html",
    //         success: function(data) {
    //             setTimeout(() => {
    //                 $("#ajax-area").html(data);
    //             }, 500);
    //         }
    //     });
    // });
});