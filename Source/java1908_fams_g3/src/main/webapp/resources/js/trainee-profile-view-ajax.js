$(document).ready(function(){

    //click update > to trainee-update page
    $("#update-btn").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.get({
//            url: "trainee-profile-update-ajax.html",
        	url: "/trainee-management/trainee-profile-update-ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 500);
            }
        });
    });

    //click close > back to the Trainee Listing page
    $("#close-btn").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.get({
//            url: "trainee-management-ajax.html",
        	url: "/trainee-management/trainee-listing",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 500);
            }
        });
    });

    // $("#trainee-information").click(function(e){
    //     e.preventDefault();
    //     $("#ajax-area").html("Loading...");
    //     $.get({
    //         url: "trainee-profile-view-ajax.html",
    //         success: function(data) {
    //             setTimeout(() => {
    //                 $("#ajax-area").html(data);
    //             }, 500);
    //         }
    //     });
    // });

    $("#training-result").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.get({
//            url: "trainee-result-view-ajax.html",
        	url: "/trainee-management/trainee-result-view-ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 500);
            }
        });
    });

});
//trainee-management-ajax.html