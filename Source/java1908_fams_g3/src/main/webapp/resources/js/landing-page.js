$(document).ready(function () {

    $("#landing-page-link").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.ajax({
            type: "GET",
            url: "/landing-page/ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 1000);
            }
        });
    });

    $("#trainee-management-link").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.ajax({
            type:"GET",
            url: "/trainee-management/trainee-listing",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 1500);
            }
        });
    });

    // display Table in landing page
    $("#type-of-dasboard").ready(function(){
        if($('#type-of-dasboard option:selected').val() == 1){
            $.ajax({
                type: "GET",
//                url: "chart.html",
                url: "/landing-page/chart",
                success: function (x) {
                    $(".dashboard-content").html(x);
                }
            });
        }
        else{
            $.ajax({
                type: "GET",
//                url: "dashboard-content-table.html",
                url: "/landing-page/content-table",
                success: function (x) {
                    $(".dashboard-content").html(x);
                }
            });
        }
    });

    // onchange() for table and chart
    $('#type-of-dasboard').change(function() {
        if($('#type-of-dasboard option:selected').val() == 1){
            $.ajax({
                type: "GET",
//                url: "chart.html",
                url: "/landing-page/chart",
                success: function (x) {
                    $(".dashboard-content").html(x);
                }
            });
        }
        else{
            $.ajax({
                type: "GET",
//                url: "dashboard-content-table.html",
                url: "/landing-page/content-table",
                success: function (x) {
                    $(".dashboard-content").html(x);
                }
            });
        }
    });

    // dataTable
    $('#table1').DataTable({
        "scrollY": "400px",
        "scrollCollapse": true,
        "paging": false,
        "searching": false,
        "ordering": false,
        "info": false
    });

    // dataTable
    $('#table2').DataTable({
        "scrollY": "400px",
        "scrollCollapse": true,
        "paging": false,
        "searching": false,
        "ordering": false,
        "info": false
    });

    // dataTable
    $('#table3').DataTable({
        "scrollY": "400px",
        "scrollCollapse": true,
        "paging": false,
        "searching": false,
        "ordering": false,
        "info": false
    });
})