$(document).ready(function(){

    //define date picker library
        // $('#dateOfBirth').datepicker({
        //     uiLibrary: 'bootstrap4',
        //     format: 'dd/mm/yyyy',
        //     todayHighlight: true
        // });

    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    // var currentDay = (('' + day).length<2 ? '0' : '') + day + '/' +  (('' + month).length < 2 ? '0' : '') + month + '/' + year;
    var currentDay = year + '-' + (('' + month).length < 2 ?  '0'+ month : month) + '-' + (('' + day).length <2 ? '0' + 'day' : day);
    // $('#dateOfBirth').change(function(){
    //     if ($("#dateOfBirth").val() > currentDay) {
    //         $("#dateOfBirth").attr("style", "border: 1px solid red");
    //     } else {
    //         $("#dateOfBirth").attr("style", "border: 1px solid #dbdbdb");
    //     }
    // });

    //if salary = yes => bank account is editable and reverse
    $('.form-check-inline').change(function(){
        if ($(".salaried :checked").val() == "no"){
            $("#bankAccount").attr("readonly", true);
            $("#bankAccount").attr("style", "background-color: #f7f7f7");
        } else if ($(".salaried :checked").val() == "yes") {
            $("#bankAccount").attr("readonly", false);
            $("#bankAccount").attr("style", "background-color: white");
        }
    });

    const msg4 = "You must input all required fields!";
    const msg5 = "Wrong format.";
    const msg9 = "You must start phone number with “0”.";
    const msg10 = "Cannot input future date.";
    const msg13 = "This trainee is already existed.";
    const msg24 = "10 ≤ “Phone” ≤ 14";

    var emailRegex = /^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$/;
    var nameRegex = /^([A-Za-zÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ]+\s)*[A-Za-zÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ]*$/;
    var phoneRegex = /^(0)[0-9]{9,13}$/;

    $.validator.addMethod('namePattern', function(input) {
        return nameRegex.test(input);
    });

    $.validator.addMethod('emailPattern', function(input) {
        return emailRegex.test(input);
    });

    //check Regex phone
    $.validator.addMethod('phonePattern', function(input) {
        return phoneRegex.test(input);
    });

    //check phone start with 0
    $.validator.addMethod('startWith0', function(input){
        if (input.charAt(0) == 0) {
            return true;
        } else {
            return false;
        }
    });

    //check phone's length
    $.validator.addMethod('checkPhoneLength', function(input){
        if (input.length < 10 || input.length > 14) {
            return false;
        } else {
            return true;
        }
    });

    $.validator.addMethod('checkBithDate', function (input){
        if ($("#dateOfBirth").val() > currentDay) {
            return false;
        } else {
            return true;
        }
    });

    $("#informationUpdateForm").validate({
        rules: {
            name: {
                required: true,
                namePattern: true
            },
            gender: {
                required: true
            }, 
            dateOfBirth: {
                required: true,
                checkBithDate: true
            },
            phone: {
                required: true,
                startWith0: true,
                checkPhoneLength: true,
                phonePattern: true
            },
            email: {
                required: true,
                emailPattern: true
            },
            salaried: {
                required: true
            },
        }, messages: {
            name: {
                required: msg4,
                namePattern: msg5
            },
            gender: {
                required: msg4
            },
            dateOfBirth: {
                required: msg4,
                checkBithDate: msg10
            },
            phone: {
                required: msg4,
                startWith0: msg9,
                checkPhoneLength: msg24,
                phonePattern: msg5,
            },
            email: {
                required: msg4,
                emailPattern: msg5

            },
            salaried: {
                required: msg4
            }
        }
    });

    $("#close-btn").click(function(e){
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
});