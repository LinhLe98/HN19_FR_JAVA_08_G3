$(document).ready(function () {

    $('#traineeTable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
        "lengthMenu": [ 10, 20, 30, 50, 100 ],
        "order": [[ 3, "asc" ]],
        "searching": false,
        // "info": false,
        "dom": '<"top"i>rt<"bottom"lp><"clear">',
        "columns": [
            { 
                "searching" : false,
                "orderable": false,
                "width": "3%"
            },
            {
                "width": "5%"
            },
            null,
            null,
            null,
            null
        ]
    });

    $("#checkAll").click(function(){
        if (this.checked) {
            // Iterate each checkbox
            $(':checkbox').each(function () {
                this.checked = true;
            });
        } else {
            $(':checkbox').each(function () {
                this.checked = false;
            });
        }
    });
    
    //check update, alert if != 0 or update > 1 record, load page if == 1
    $("#update-btn").click(function(e){
        var checkedCheckBox = 0;
        
        $(":checkbox").each(function(){
            if (this.checked) {
                checkedCheckBox += 1;
            }
        });

        if (checkedCheckBox > 1 ) {
            alert("You can't edit two or more records at the same time");
            e.preventDefault();
        } if (checkedCheckBox == 0) {
            alert("Please select a record");
            e.preventDefault();
        } if (checkedCheckBox == 1) {
            $("#ajax-area").html("Loading...");
            $.ajax({
                type: "POST",
                url: "/trainee-management/trainee-profile-update-ajax",
                success: function(data){
                    setTimeout(() => {
                        $("#ajax-area").html(data);
                    }, 1000);
                }
            });
        }
    });

    //check delete !=0
    $("#delete-btn").click(function(){
        var checkedCheckBox = 0;
        
        $(":checkbox").each(function(){
            if (this.checked == true) {
                checkedCheckBox += 1;
            }
        });

        var list = [];
        $(":checkbox").each(function(){
        	if (this.checked == true) {
	            var traineeId = $(this).attr("txt");
	            list.push({
	            	traineeId : traineeId
	            });
        	}
        });
        
        if (checkedCheckBox == 0) {
            $("#delete-btn").attr('data-target','#mo');
            alert("Please select a record");
        } else {
            $("#delete-btn").attr('data-target','#modalDelete');
        }
    });
    
    //delete = modal
    $("#delete-btn-modal").click(function(){
    	$.post({
    		url: "",
    		data: "",
    		success: function(data) {
    			$("ajax-area").html(data);
    		}
    	});
    });

    //ajax to view page if click in TraineeID
    $(".ajax-class").click(function(e){
        e.preventDefault();
        $("#ajax-area").html("Loading...");
        $.ajax({
            type: "POST",
            url: "/trainee-management/trainee-profile-view-ajax",
            success: function(data) {
                setTimeout(() => {
                    $("#ajax-area").html(data);
                }, 1000);
            }
        });
    });

    //ajax to view update page if checked 1 checkbox and click on update button
        // $("#update-btn").click(function(e){
        //     e.preventDefault();
        //     var checkedCheckBox = 0;
            
        //     $(":checkbox").each(function(){
        //         if (this.checked == true) {
        //             checkedCheckBox += 1;
        //         }
        //     });
        //     if(checkedCheckBox == 1) {
        //         $.ajax({
        //             type: "GET",
        //             url: "trainee-profile-update-ajax.html",
        //             success: function(data){
        //                 setTimeout(() => {
        //                     $("#ajax-area").html(data);
        //                 }, 1000);
        //             }
        //         });
        //     }
        // });
});