<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href= '<c:url value="/resources/css/trainee-result.css"></c:url>'>
<h3 class="pt-3">Trainee profile</h3>

<!-- tabs -->
<ul class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link" href="trainee-profile-view.html" data-target="#traineeInformation"
            id="trainee-information">Trainee Information</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#trainingResult" id="training-result">Training Result</a>
    </li>
</ul>

<!-- tab area -->
<div id="trainingResult" class="container-fluid tab-pane active"><br>
    <form action="">
        <table class="table table-bordered">
            <tr>
                <td colspan="9" class="text-black" style="background-color:rgb(139, 176, 243);">
                    <a class="btn btn-primary text-decoration-none" data-toggle="collapse" href="#milestoneCollapse"
                        role="button">
                        <i class="fas fa-sort-down"></i>
                    </a>
                    <span class="left-border">Milestone Configuration</span>
                </td>
            </tr>
            <tbody class="collapse show" id="milestoneCollapse">
                <tr>
                    <td class="th">Total Max Score</td>
                    <td>3040</td>
                    <td class="th">Total Passing Score</td>
                    <td>1824</td>
                    <td class="th">Total Weighted Number</td>
                    <td>304</td>
                    <td class="th">Learning Path</td>
                    <td>

                    </td>
                </tr>
                <tr>

                    <td colspan="2" class="th">Milestone Name</td>
                    <td colspan="2" class="th">Salary Paid</td>
                    <td colspan="2" class="th">Start Date</td>
                    <td colspan="2" class="th">End Date</td>

                </tr>
                <tr>

                    <td colspan="2">Thg2-18</td>
                    <td colspan="2">
                        Yes
                    </td>
                    <td colspan="2">
                        12/12/2020
                    </td>
                    <td colspan="2">
                        12/12/2020
                    </td>
                </tr>
                <tr>
                    <td></td>

                    <td class="th">Topic</td>
                    <td colspan="2" class="th">Max Score</td>
                    <td colspan="2" class="th">Passing Score</td>
                    <td colspan="2" class="th">Weighted Number</td>
                </tr>
                <tr>
                    <td></td>

                    <td>ASQL</td>
                    <td colspan="2">10</td>
                    <td colspan="2">6</td>
                    <td colspan="2">40</td>
                </tr>
            </tbody>
        </table>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color:rgb(142, 179, 247);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-attendance-status"
                                role="button">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Attendace status</span>
                </tr>
            </thead>
            <tbody class="collapse show" id="tbody-attendance-status">
                <tr>
                    <th></th>
                    <th>Absent Times</th>
                    <th>Late & Early Leave</th>
                    <th>No permisstions Rate</th>
                    <th>Disciplinary Point</th>
                </tr>



                <tr data-toggle="modal" data-target="#modalViewAttendence">
                    <td class="th">Thg2-18</td>
                    <td>2</td>
                    <td>7</td>
                    <td>78%</td>
                    <td>60%</td>
                </tr>



                <tr>
                    <td class="th">Thg2-18</td>
                    <td>2</td>
                    <td>7</td>
                    <td>78%</td>
                    <td>60%</td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>2</td>
                    <td>7</td>
                    <td>78%</td>
                    <td>60%</td>
                </tr>
                <tr>
                    <td class="th">Final</td>
                    <td>2</td>
                    <td>7</td>
                    <td>26%</td>
                    <td>87%</td>
                </tr>
            </tbody>

        </table>
        <!-- Table Topic mark -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color:rgb(142, 179, 247);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-toppic-mark" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Topic Mark</span>
                </tr>
            </thead>
            <tbody class="collapse show" id="tbody-toppic-mark">
                <tr>
                    <td class="tbl-area">
                        <table>
                            <tr>
                                <th>Thg2-18</th> <td>70%
                    </td>
                </tr>
                <tr>
                    <th>Topic</th>
                    <th>Score</th>
                </tr>
                <tr>
                    <td>ASQL</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td>BTJB-Test1</td>
                    <td class="">

                    </td>
                </tr>
        </table>
        </td>
        <td class="tbl-area">
            <table>
                <tr>
                    <th>Thg3-18</th>
                    <td>70%</td>
                </tr>
                <tr>
                    <th>Topic</th>
                    <th>Score</th>
                </tr>
                <tr>
                    <td>ASQL</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td>BTJB-Test1</td>
                    <td class="">

                    </td>
                </tr>
            </table>
        </td>
        <td class="tbl-area">
            <table>
                <tr>
                    <th>Thg4-18</th>
                    <td>70%</td>
                </tr>
                <tr>
                    <th>Topic</th>
                    <th>Score</th>
                </tr>
                <tr>
                    <td>ASQL</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td>BTJB-Test1</td>
                    <td class="td-input">

                    </td>
                </tr>
            </table>
        </td>
        </tr>
        <tr>
            <th colspan="2">
                Final
            </th>
            <td>
                66%
            </td>
        </tr>
        </tbody>

        </table>
        <!-- Table Reward & Penalty -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color:rgb(142, 179, 247);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-reward-penalty" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Reward & Penalty</span>
                </tr>
            </thead>
            <tbody class="collapse show" id="tbody-reward-penalty">
                <tr>

                    <th>Milestone</th>
                    <th>Date</th>
                    <th>Bonus Point</th>
                    <th>Penalty Point</th>
                    <th>Reason</th>
                </tr>
                <tr>

                    <td>
                        Thg2-18
                    </td>
                    <td class="">
                        7,3
                    </td>
                    <td class="">
                        7,3
                    </td>
                    <td class="">
                        7,3
                    </td>
                    <td>
                        Lớp trưởng
                    </td>
                </tr>
            </tbody>

        </table>

        <!-- Table GPA -->
        <table class="table table-bordered" id="gpa">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-gpa" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>GPA</span>
                </tr>
            </thead>
            <tbody id="tbody-gpa">
                <tr>
                    <th></th>
                    <th>Accademic Mark</th>
                    <th>Discipline Point</th>
                    <th>Bonus</th>
                    <th>Penalty</th>
                    <th>GPA</th>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>70%</td>
                    <td>60%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>67%</td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>70%</td>
                    <td>60%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>67%</td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>70%</td>
                    <td>60%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>67%</td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>70%</td>
                    <td>60%</td>
                    <td>0%</td>
                    <td>0%</td>
                    <td>67%</td>
                </tr>
            </tbody>
        </table>


        <!-- Table Commitment-->
        <table class="table table-bordered" id="gpa">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-commit" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Commitment</span>
                </tr>
            </thead>
            <tbody id="tbody-commit">
                <tr>

                    <th>Committed Value</th>
                    <th>Commited Working Duration</th>
                    <th>Commited Working Start Date</th>
                    <th>Commited Working End Date</th>
                    <th>Remarks</th>
                </tr>
                <tr>

                    <td>2</td>
                    <td>7</td>
                    <td>12/12/2020</td>
                    <td>13/11/2021</td>
                    <td class="">

                    </td>
                </tr>

            </tbody>
        </table>

        <!-- Table Allowance -->
        <table class="table table-bordered" id="allowance">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-allowance" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Allowance</span>
                </tr>
            </thead>
            <tbody id="tbody-allowance">
                <tr>
                    <th></th>
                    <th>GPA</th>
                    <th>Level</th>
                    <th>Salary Paid</th>
                    <th>Standard Allowance</th>
                    <th>Remarks</th>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>67%</td>
                    <td>C</td>
                    <td>Yes</td>
                    <td>5.000.000</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>67%</td>
                    <td>C</td>
                    <td>Yes</td>
                    <td>5.000.000</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td class="th">Thg2-18</td>
                    <td>67%</td>
                    <td>C</td>
                    <td>Yes</td>
                    <td>5.000.000</td>
                    <td class="">

                    </td>
                </tr>
                <tr>
                    <td class="th" colspan="4">Total</td>
                    <td colspan="2">15.000.000</td>
                </tr>
            </tbody>
        </table>

        <!-- Table Allocation -->
        <table class="table table-bordered" id="allocation">
            <thead>
                <tr>
                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                        <span>
                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-allocation" role="button"
                                aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-sort-down"></i>
                            </a>
                        </span>
                        <span>Allocation</span>
                </tr>
            </thead>
            <tbody id="tbody-allocation">
                <tr>
                    <th>Allocated FSU</th>
                    <th>Salary</th>
                    <th>Start Date</th>
                    <th>Allowcation Status</th>
                    <th>Remarks</th>
                </tr>
                <tr>
                    <td class="">
                        FHS
                    </td>
                    <td class="">
                        7M
                    </td>
                    <td class="">
                        10/1/2020
                    </td>
                    <td class="">
                        10/1/2021
                    </td>
                    <td class="">
                        Normal
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- update trainee -->
        <a href="#">
            <button type="button" class="button btn">
                <i class="fa fa-arrow-circle-up mr-1" style="font: size 20px; color: cornflowerblue;"></i>Update Trainee

            </button>
        </a>
        <button class=" button btn "> <i class="fa fa-times" style="color: crimson;"></i> Delete trainee</button>
        <a href="">
            <button type="button" class="button btn btn-default mr-2" data-dismiss="modal"><i class="fas fa-reply"
                    style="color: crimson;"></i>Close</button>
        </a>
    </form>
</div>

<script src='<c:url value="/resources/js/trainee-result-view-ajax.js"></c:url>'></script>