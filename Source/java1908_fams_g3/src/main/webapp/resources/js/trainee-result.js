$(document).ready(function () {
    var countMilestone = 0;
    // $('.datepicker-startDate-milestone').datepicker({
    //     uiLibrary: 'bootstrap4'
    // });

    // $('.datepicker-endDate-milestone').datepicker({
    //     uiLibrary: 'bootstrap4'
    // });
    
//    $("#return-view").click(function(e){
//        e.preventDefault();
//        $("#ajax-area").html("Loading...");
//        $.get({
////            url: "trainee-profile-view-ajax.html",
//        	url: "/trainee-management/trainee-result-view-ajax",
//            success: function(data) {
//                setTimeout(() => {
//                    $("#ajax-area").html(data);
//                }, 500);
//            }
//        });
//    });

//    //get modal attendace status
//    $(document).on('click','.attendace-row-n',function(e){
//        var code = $(this).find('.milestoneName').text();
//        var date = $(this).find('.milestoneName').attr('txt');
//        
//        $.get({
//        	url: "/trainee-management/modal-attendace-status",
//        	data:{
//        		dateCode:code,
//        		date	:date
//        	},
//        	success: function (data) {
//        		$("#modal-attendace-status").html(data);
//        		$("#modalViewAttendence").modal("show");
//        	}
//        });
//        
//    });
    var listMinestone = [];
    var listTopic = [];
    
    $.get({
        url: "/trainee-resul/getAllTopic",
        success: function (data) {
        	listTopic = data;
        }
    });
    
   
    
    $('.datepicker-startDate-allocation').datepicker({
        uiLibrary: 'bootstrap4'
    });

    // $('.datepicker-startDate-milestone').datepicker({
    //     uiLibrary: 'bootstrap4'
    // });

    // $('.datepicker-endDate-milestone').datepicker({
    //     uiLibrary: 'bootstrap4'
    // });

    $('#datepicker-date-penalty').datepicker({
        uiLibrary: 'bootstrap4'
    });



    $("#btn-submit").click(function () {
        var check = true;
        $("#message").text("");
        
        /////////////////////////////////////////////
        if(!checkTopicMark() || !checkDatePenalty()){
            check = false;
        }
        // check = checkTopicMark();
        // check = checkDatePenalty();
        /////////////////////////////////////////////

        var startDateMilestone = $("#datepicker-startDate-milestone").val();
        var endDateMilestone = $("#datepicker-endDate-milestone").val();
        if (Date.parse(startDateMilestone) > Date.parse(endDateMilestone)) {
            $("#datepicker-startDate-milestone").addClass("error-border");
            $("#message").append('“Start Date” must not be later than “End Date”.<br />');
            check = false;
        } else {
            $("#datepicker-startDate-milestone").removeClass("error-border");
        }
        //validate start date for allocation table
        var startDateCommitment = $('#start-date-commitment').val();
        var startDateAllocation = $('#start-date-allocation').val();
        if(Date.parse(startDateAllocation) < Date.parse(startDateCommitment)){
            $("#start-date-allocation").addClass("error-border");
            $("#message").append('“Start Date” must be later than “Committed Working Start Date”.<br />');
            check = false;
        } else {
            $("#start-date-allocation").removeClass("error-border");
        }
        // validate select topic

        $(".topic-milestone").each(function () {
            var topic = $(this).val();
            var count = 0;
            $(".topic-milestone").each(function () {
                if ($(this).val() == topic) {
                    count = count + 1;
                }
            });
            if (count > 1) {
                $("#message").append('“Topic” must be unique.<br />');
                $(this).addClass("error-border");
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });

       

        // validata score
        $(".score").each(function () {
            if (isNaN($(this).val())) {
                $("#message").append('Please input number only.<br />');
                $(this).addClass("error-border");
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });

        $(".bonus-point").each(function () {
            var point = $(this).val();
            if (point<0 || point > 20) {
                $("#message").append('0 ≤ “Bonus Point” ≤ 20.<br />');
                $(this).addClass("error-border");
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });

        $(".penalty-point").each(function () {
            var point = $(this).val();
            if (point<0 || point > 20) {
                $("#message").append('0 ≤ “Penalty Point” ≤ 20.<br />');
                $(this).addClass("error-border");
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });
        

        //check max score than pass score
        var listMaxCore = $(".max-score");
        var listPassCore = $(".pass-score");
        listPassCore.each(function (i, item) {
            if (parseInt($(listPassCore[i]).val()) > parseInt($(listMaxCore[i]).val())) {
                $("#message").append('“Passing Score” must not be greater than “Max Score”.<br />');
                $(this).addClass("error-border");
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });

        // check score with maxsscore
        if (check) {
            $("#rejectClass").modal("show");
        } else {

            $("#rejectClass").modal("hide");
        }

    });

    // click icon add more milestone
    // $("#icon-add-more-milestone").click(function () {
    $(document).on('click', "#icon-add-more-milestone", function (e) {
        var now = new Date();
        var day = now.getDate()
        var month = now.getMonth() + 1;
        var year = now.getFullYear().toString().substring(2);
        var dateCode = `Thg${month}-${year}`;
        var today = now.getFullYear()+'-'+month+'-'+day;
        $(this).closest(".milestones").children(".milestoneName").text(dateCode);
        var content = `<tr class="milestones">
                        <td class="icon-delete-milestone"><a href="#"><i
                                    class="fas fa-trash-alt"></i></a>
                        </td>
                        <td colspan="2" class="milestoneName">${dateCode}</td>
                        <td colspan="2" class="td-input salaryPaid">
                            <select class="selectClass w-100">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>
                        </td>
                        <td colspan="2" class="td-input">
                            <!-- <input class="w-75 datePicker" type="date" name="startDate" id="startDate"> -->
                            <input type="date" class="startDate" value='${today}' />
                        </td>
                        <td colspan="2" class="td-input">
                            <!-- <input class="w-75 datePicker" type="date" name="endDate" id="endDate"> -->
                            <input type="date" class="endDate" value='${today}' />
                        </td>
                    </tr>
            <!-- Topic header -->
                <tr class="list-topic">
                    <td></td>
                    <td class=""><a href="#"><i class="fas fa-plus-circle icon-add-more-topic" ></i></a>
                    </td>
                    <td class="th">Topic</td>
                    <td colspan="2" class="th">Max Score</td>
                    <td colspan="2" class="th">Passing Score</td>
                    <td colspan="2" class="th">Weighted Number</td>
                </tr>`;

        $("#milestoneCollapse").append(content);
        // .ready(function(){
        //     $('.datepicker-startDate-milestone').datepicker({
        //         uiLibrary: 'bootstrap4'
        //     });

        //     $('.datepicker-endDate-milestone').datepicker({
        //         uiLibrary: 'bootstrap4'
        //     });
        // });

        //add a milestone in listMilestone
        var milestone = $(".milestones:last");
        listMinestone.push(
            {
                name: "",
                salaryPaid: "",
                startDate: "",
                endDate: "",
                listOfTopic: []
            }
        );

        var milestoneName = $(".milestones:last .milestoneName").text();
        // add more row on attendace status table 
//        $("#tbody-attendance-status").append(`
         $("#tbody-attendance-status .att-status-tr:last").after(`
            <tr class="attendace-row-n att-status-tr">
                <th class="th milestoneName " txt='${today}'>${milestoneName}</th>
                <td class="absentTime">0</td>
                <td class="lateOrEarly">0</td>
                <td class="noPermissionRate">0</td>
                <td class="disPoint">0</td>
            </tr>
        `);

        // add new area in table Topic Marks
        // var n = listMinestone.length;
        // var mstone = listMinestone[n-1];
        // var listTopic = listMinestone[n-1].listOfTopic;
        $("#tbody-toppic-mark #content").append(`
                <td class="tbl-area topicMarks col-4">
                    <table>
                        <tr>
                            <td class="dateCode">${dateCode}</td>
                            <td>70%</td>
                        </tr>
                        <tr>
                            <td>Topic</td>
                            <td>Score</td>
                        </tr>
                    </table>
                </td>
        `);

        // add new row for GPA table
        $("#tbody-gpa").append(`
            <tr>
                <td class="th dateCode-gpa">${dateCode}</td>
                <td>70%</td>
                <td>60%</td>
                <td>0%</td>
                <td>0%</td>
                <td>67%</td>
            </tr>
       `);


    });

    //event onchange milestone name
    $(document).on('change', '.milestoneName', function () {
        var index = getIndex(this, "tr.milestones", "tr.milestones");
        var milestoneName = $(this).text();
        listMinestone[index].name = milestoneName;
    });

    //event onchange salary paid
    $(document).on('change', '.salaryPaid', function () {
        var index = getIndex(this, "tr.milestones", "tr.milestones");
        var salaryPaid = $(this).find('option:selected').text();
        listMinestone[index].salaryPaid = salaryPaid;
    });

    //event onchange start date
    $(document).on('change', '.startDate', function () {
        var index = getIndex(this, "tr.milestones", "tr.milestones");
        var startDate = $(this).val();
        var arr = startDate.split('-');
        var month = arr[1];
        var year = arr[0].substring(2);
        var dateCode = `Thg${month}-${year}`;
        $(this).closest(".milestones").children(".milestoneName").text(dateCode);
        /*$(this).closest(".milestones").children(".milestoneName").prop('txt',startDate);*/
        listMinestone[index].startDate = startDate;
        listMinestone[index].name = dateCode;
        listMinestone[index].salaryPaid = "Yes";

        $(`#tbody-attendance-status tr.attendace-row-n:nth-child(${index + 2}) th`).text(dateCode);
        $(`#tbody-attendance-status tr.attendace-row-n:nth-child(${index + 2}) th`).attr('txt',startDate);
        $(`#tbody-toppic-mark #content td:nth-child(${index + 1})`).find(".dateCode").text(dateCode);

        $(`#tbody-gpa tr:nth-child(${index + 2})`).find(".dateCode-gpa").text(dateCode);
        
        var n = listMinestone.length;
        var selectList = document.createElement('select');

        for (var i = 0; i < n; i++) {
            var option = document.createElement('option');
            option.value = i;
            option.text = listMinestone[i].name;
            selectList.appendChild(option);
        }
        $(".selectMilestone:last").html(selectList);
    });

    //event onchange end date
    $(document).on('change', '.endDate', function () {
        var index = getIndex(this, "tr.milestones", "tr.milestones");
        var endDate = $(this).val();
        listMinestone[index].endDate = endDate;
        console.log("list: " + JSON.stringify(listMinestone));
    });


    //click to add more topic icon
    $(document).on('click', ".icon-add-more-topic", function (e) {
    		//get list topic from database
    		var n = listTopic.length;
    	    var selectListTopic = document.createElement('select');

    	    for (var i = 0; i < n; i++) {
    	        var option = document.createElement('option');
    	        option.value = listTopic[i].id;
    	        option.text = listTopic[i].topicName;
    	        selectListTopic.appendChild(option);
    	    }
    	    //
        $(this).closest(".list-topic").nextUntil('.milestones').addBack().last().after(`
            <tr class="topics">
                <td></td>
                <td><a href="#"><i class="fas fa-trash-alt icon-delete-topic"></i></a>
                </td>
                <td class="td-input listTopicName">
                    
                </td>
                <td colspan="2" class="td-input">
                    <select class="selectClass w-100 score max-score">
                        <option value="10">10</option>
                        <option value="100">100</option>
                        <option value="abc">abc</option>
                    </select>
                </td>
                <td colspan="2" class="td-input">
                    <select class="selectClass w-100 score pass-score">
                        <option value="6">6</option>
                        <option value="60">60</option>
                        <option value="abc">abc</option>
                    </select>
                </td>
                <td colspan="2" class="td-input">
                    <select class="selectClass w-100 scoreWn">
                        <option value="40">40</option>
                        <option value="50">50</option>
                        <option value="abc">abc</option>
                    </select>
                </td>
            </tr>
        `);
        
        $(".listTopicName:last").append(selectListTopic);

        // var newTopic = $(".topics:last td");
        var milestoneParentOfTopic = $(this).closest('tr').prev();
        var index = $('.milestones').index(milestoneParentOfTopic);
        listMinestone[index].listOfTopic.push({
            name: $(".topics:last .topic-milestone").val(),
            maxScore: $(".topics:last .max-score").val(),
            passScore: $(".topics:last .pass-score").val(),
            wnumber: $(".topics:last .scoreWn").val()
        });

        ///
        // event to selver topicmarks table

        var nameMilestone = $(this).closest('tr').prevAll('.milestones').first().find(".milestoneName").text();

        var nameTopic = $(this).closest('tr').nextUntil('.milestones').last().find('.listTopicName option:selected').text();

        $(`#tbody-toppic-mark #content .topicMarks:nth-child(${index + 1}) table`)
            .append(`
            <tr>
                <td class="topicName-topicMarks">${nameTopic}</td>
                <td class="td-input">
                    <input type="text" class="score-topic score" />
                </td>
            </tr>
        `);
    });

    //event onchange name of topic
    $(document).on('change', '.listTopicName', function () {
        var milestoneParentOfTopic = $(this).closest('.topics').prevAll('.milestones').first();
        var index = $(".milestones").index(milestoneParentOfTopic);
        // alert("index: "+index);
        var topicName = $(this).find("option:selected").text();
        listMinestone[index].listOfTopic.name = topicName;
        var indexOfTopic = $(this).closest('tr').prevUntil(".milestones").length;
        // alert("index of topic: "+indexOfTopic);
        $(`#tbody-toppic-mark #content td:nth-child(${index + 1})`)
            .find(`tr:nth-child(${indexOfTopic + 1}) .topicName-topicMarks`).text(topicName);
            listMinestone[index].listOfTopic[indexOfTopic-1].name = topicName;
        // .text(topicName);
    });

    //event onchange max score of topic
    $(document).on('change', '.max-score', function () {
        var milestoneParentOfTopic = $(this).closest('.topics').prevAll('.milestones').first();
        var index = $(".milestones").index(milestoneParentOfTopic);
        var indexOfTopic = $(this).closest('tr').prevUntil(".milestones").length;
        var maxScore = $(this).find('option:selected').text();
        listMinestone[index].listOfTopic[indexOfTopic-1].maxScore = maxScore;
    });

    //event onchange passing score of topic
    $(document).on('change', '.pass-score', function () {
        var milestoneParentOfTopic = $(this).closest('.topics').prevAll('.milestones').first();
        var index = $(".milestones").index(milestoneParentOfTopic);
        var indexOfTopic = $(this).closest('tr').prevUntil(".milestones").length;
        var passScore = $(this).find('option:selected').text();
        listMinestone[index].listOfTopic[indexOfTopic-1].passScore = passScore;
    });

    //event onchange score wnumber of topic
    $(document).on('change', '.scoreWn', function () {
        var milestoneParentOfTopic = $(this).closest('.topics').prevAll('.milestones').first();
        var index = $(".milestones").index(milestoneParentOfTopic);
        var indexOfTopic = $(this).closest('tr').prevUntil(".milestones").length;
        var scoreWnumber = $(this).find('option:selected').text();
        listMinestone[index].listOfTopic[indexOfTopic-1].wnumber = scoreWnumber;
    });



    // click delete milestone icon
    $(document).on('click', '.icon-delete-milestone', function (e) {
        var index = $('.milestones').index($(this).closest('tr'));
        $(this).closest('.milestones').nextUntil(".milestones").addBack().remove();
        $(`#tbody-attendance-status tr.attendace-row-n:nth-child(${index + 2})`).remove();
        $(`#tbody-toppic-mark #content td:nth-child(${index + 1})`).remove();

        $(`#tbody-gpa tr:nth-child(${index + 2})`).remove();
        listMinestone.splice(index, 1);

    });

    //click delete topic icon
    $(document).on('click', '.icon-delete-topic', function (e) {
        var index = $('.milestones').index($(this).closest('tr').prevAll('.milestones').first());
        // alert("index: "+index);
        var indexOfTopic = $(this).closest('tr').prevUntil(".milestones").length;
        listMinestone[index].listOfTopic.splice(indexOfTopic - 1, 1);
        // alert(listMinestone[index].listOfTopic[indexOfTopic-1].name);
        // alert("index of topic: "+indexOfTopic);
        $(`#tbody-toppic-mark #content td:nth-child(${index + 1})`)
            .find(`tr:nth-child(${indexOfTopic + 1})`).remove();
        $(this).closest('.topics').remove();

    });


    $(document).on('click', "#btn-modal-submit", function (e) {
        console.log("submit successfully");
    });

    //lay vi tri cua phan tu dang tuong tac
    function getIndex(elementChange, elementTarget, listElement) {
        var elementNeedFind = $(elementChange).closest(elementTarget);
        var index = $(listElement).index(elementNeedFind);
        return index;
    }

    ////////// Penalty and reward table
    //click add row penalty and reward

    $("#add-row-penalty-table").click(function () {
        var n = listMinestone.length;
        var selectList = document.createElement('select');

        for (var i = 0; i < n; i++) {
            var option = document.createElement('option');
            option.value = i;
            option.text = listMinestone[i].name;
            selectList.appendChild(option);
        }
        var content = `
                    <tr>
                        <td>
                            <a>
                                <i class="far fa-trash-alt icon-remove-penalty"></i>
                            </a>
                        </td>
                        <td class="td-input selectMilestone"></td>
                        <td class="td-input">
                            <input class="date-penalty" type="date" />
                        </td>
                        <td class="td-input">
                            <input class="score bonus-point" type="number" />
                        </td>
                        <td class="td-input ">
                            <input class="score penalty-point" type="number" />
                        </td>
                        <td class="td-input">
                            <select>
                                <option>Lớp trưởng</option>
                            </select>
                        </td>
                    </tr>
                 `;
        $("#tbody-reward-penalty").append(content);
        $(".selectMilestone:last").append(selectList);
    });

    $(document).on('click', '.icon-remove-penalty', function (e) {
        $(this).closest('tr').remove();
    });

    function checkTopicMark() {
        // $('#tbody-toppic-mark #content topicMarks')
        var check = true;
        var n = listMinestone.length;
        for (var i = 0; i < n; i++) {
            var topics = listMinestone[i].listOfTopic;
            var nTopic = topics.length;
            for (var j = 0; j < nTopic; j++) {
                var scoreMax = topics[j].maxScore;
                var score = $(`#tbody-toppic-mark #content .topicMarks:nth-child(${i + 1}) tr:nth-child(${j + 2}) .score-topic`).val();
                if (parseInt(score) > parseInt(scoreMax)) {
                    $(`#tbody-toppic-mark #content .topicMarks:nth-child(${i + 1}) tr:nth-child(${j + 2}) .score-topic`).addClass("error-border");
                    $("#message").append('“Score” must not be greater than “Max Score”.<br />');
                    check = false;
                } else {
                    $(`#tbody-toppic-mark #content .topicMarks:nth-child(${i + 1}) tr:nth-child(${j + 2}) .score-topic`).removeClass("error-border");
                }
            }
        }
        return check;
    }

    function checkDatePenalty(){
        var check = true;
        $('.date-penalty').each(function(){
            var date = $(this).val();
            var index = $(this).closest('tr').find('.selectMilestone option:selected').val();
            // alert(index);
            var startDate = listMinestone[index].startDate;
            var endDate = listMinestone[index].endDate;
            if(Date.parse(date)<Date.parse(startDate) || Date.parse(date) > Date.parse(endDate)){
                $(this).addClass("error-border");
                $("#message").append('“Date” must be in “Milestone”.<br />');
                check = false;
            } else {
                $(this).removeClass("error-border");
            }
        });
        return check;
    }


});
