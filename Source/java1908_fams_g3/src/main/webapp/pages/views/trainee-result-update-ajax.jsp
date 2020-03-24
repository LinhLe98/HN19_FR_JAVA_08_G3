<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href= '<c:url value="/resources/css/trainee-result-update-result.css"></c:url>'>
                <h3 class="pt-3">Trainee profile</h3>

                <!-- tabs -->
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#traineeInformation">Trainee Information</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#trainingResult">Training Result</a>
                    </li>

                </ul>

                <!-- tab area -->
                <div id="trainingResult" class="container-fluid tab-pane active"><br>
                    <!-- Place Modal Here-->
                    <!-- First modal to view Attendence Status-->
                    <div id="modal-attendace-status">
                        <!-- Modal content -->
                    </div>
                    
                    <!-- ///////////////////modal/////////////// -->
                    <div style="text-align: center; color: red;" id="message"></div>
                    <br />
                    <form action="">
                        <table class="table table-bordered">
                            <tr>
                                <td colspan="9" class="text-black" style="background-color:rgb(139, 176, 243);">
                                    <a class="btn btn-primary text-decoration-none border" data-toggle="collapse"
                                        href="#milestoneCollapse" role="button">
                                        <i class="fas fa-sort-down"></i>
                                    </a>
                                    <span class="left-border">Milestone Configuration</span>
                                </td>
                            </tr>
                            <tbody class="collapse show" id="milestoneCollapse">
                                <tr>
                                    <td colspan="2" class="th">Total Max Score</td>
                                    <td>3040</td>
                                    <td class="th">Total Passing Score</td>
                                    <td>1824</td>
                                    <td class="th">Total Weighted Number</td>
                                    <td>304</td>
                                    <td class="th">Learning Path</td>
                                    <td class="td-input">
                                        <select class="selectClass w-100">
                                        <c:forEach items="${listLearingPathDetail}" var="lp">
                                         <option value="${lp.id}">${lp.learningPath.learningCode}</option>
                                        </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td id="icon-add-more-milestone"><a href="#"><i class="fas fa-plus-circle"></i></a>
                                    </td>
                                    <td colspan="2" class="th">Milestone Name</td>
                                    <td colspan="2" class="th">Salary Paid</td>
                                    <td colspan="2" class="th">Start Date</td>
                                    <td colspan="2" class="th">End Date</td>

                                </tr>
                                <!-- bbbbbb -->
                                <!-- content will add more here -->
                            </tbody>
                        </table>
                        <!-- table Attendace status -->
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td colspan="8" class="text-black" style="background-color:rgb(142, 179, 247);">
                                        <span>
                                            <a class="btn btn-primary" data-toggle="collapse"
                                                href="#tbody-attendance-status" role="button">
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
                                <!-- Here to click to display modal-->
                                
                            </tbody>

                        </table>
                        <!-- Table Topic mark -->
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td colspan="8" class="text-black" style="background-color:rgb(142, 179, 247);">
                                        <span>
                                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-toppic-mark"
                                                role="button" aria-expanded="false" aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>Topic Mark</span>
                                </tr>
                            </thead>
                            <tbody class="collapse show" id="tbody-toppic-mark">
                                <tr class="row" id="content" style="padding:0 15px;">
                                    <!-- content of table -->
                                </tr>
                                <tr class="row" style="padding: 0 15px;">
                                    <td class="col-11">
                                        Final
                                    </td>
                                    <td class="col-1">
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
                                            <a class="btn btn-primary" data-toggle="collapse"
                                                href="#tbody-reward-penalty" role="button" aria-expanded="false"
                                                aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>Reward & Penalty</span>
                                </tr>
                            </thead>
                            <tbody class="collapse show" id="tbody-reward-penalty">
                                <tr>
                                    <th>
                                        <a>
                                            <i class="fas fa-plus-circle" id="add-row-penalty-table"></i>
                                        </a>
                                    </th>
                                    <th>Milestone</th>
                                    <th>Date</th>
                                    <th>Bonus Point</th>
                                    <th>Penalty Point</th>
                                    <th>Reason</th>
                                </tr>
                                <!-- content continue of table -->
                            </tbody>

                        </table>
                        <!-- Table GPA -->
                        <table class="table table-bordered" id="gpa">
                            <thead>
                                <tr>
                                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                                        <span>
                                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-gpa"
                                                role="button" aria-expanded="false" aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>GPA</span>
                                </tr>
                            </thead>
                            <tbody id="tbody-gpa" class="collapse show">
                                <tr>
                                    <th></th>
                                    <th>Academic Mark</th>
                                    <th>Disciplinary</th>
                                    <th>Bonus</th>
                                    <th>Penalty</th>
                                    <th>GPA</th>
                                </tr>
                                <!-- content continue of table -->

                            </tbody>
                        </table>


                        <!-- Table Commitment-->
                        <table class="table table-bordered" id="gpa">
                            <thead>
                                <tr>
                                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                                        <span>
                                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-commit"
                                                role="button" aria-expanded="false" aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>Commitment</span>
                                </tr>
                            </thead>
                            <tbody id="tbody-commit" class="collapse show">
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
                                    <td class="td-input">
                                        <input id="start-date-commitment" type="date" />
                                    </td>
                                    <td class="td-input">
                                        <input type="date" />
                                    </td>
                                    <td class="td-input">
                                        <input type="text" value="" />
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
                                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-allowance"
                                                role="button" aria-expanded="false" aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>Allowance</span>
                                </tr>
                            </thead>
                            <tbody id="tbody-allowance" class="collapse show">
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
                                    <td>2</td>
                                    <td>7</td>
                                    <td>78%</td>
                                    <td>60%</td>
                                    <td class="td-input">
                                        <input type="text" value="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="th">Thg2-18</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>78%</td>
                                    <td>60%</td>
                                    <td class="td-input">
                                        <input type="text" value="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="th">Thg2-18</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>78%</td>
                                    <td>60%</td>
                                    <td class="td-input">
                                        <input type="text" value="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="th" colspan="4">Total</td>
                                    <td colspan="2">8.000.000</td>
                                </tr>
                            </tbody>
                        </table>

                        <!-- Table Allocation -->
                        <table class="table table-bordered" id="allocation">
                            <thead>
                                <tr>
                                    <td colspan="8" class="text-black" style="background-color: rgb(149, 188, 242);">
                                        <span>
                                            <a class="btn btn-primary" data-toggle="collapse" href="#tbody-allocation"
                                                role="button" aria-expanded="false" aria-controls="collapseExample">
                                                <i class="fas fa-sort-down"></i>
                                            </a>
                                        </span>
                                        <span>Allocation</span>
                                </tr>
                            </thead>
                            <tbody id="tbody-allocation" class="collapse show">
                                <tr>
                                    <th>Allocated FSU</th>
                                    <th>Salary</th>
                                    <th>Start Date</th>
                                    <th>Allowcation Status</th>
                                    <th>Remarks</th>
                                </tr>
                                <tr>
                                    <td class="td-input">
                                        <input type="text" value="FSU2J8" />
                                    </td>
                                    <td class="td-input">
                                        <input type="text" value="7,2M" />
                                    </td>
                                    <td class="td-input">
                                        <input id="start-date-allocation" type="date" />
                                    </td>
                                    <td class="td-input">
                                        <select id="sel1">
                                            <option>NotAllocated</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select>
                                    </td>
                                    <td class="td-input">
                                        <input type="text" value="" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <button type="button" id="btn-submit"
                            class="btn btn-secondary">Submit</button> &nbsp;
                        <button class="btn btn-outline-dark">
                            <i class="fas fa-reply" style="color: red;"></i>
                            Close
                        </button>
                    </form>
                </div>
            </div>
            <!-- body end -->
            <div class="modal fade" id="rejectClass" tabindex="-1" role="dialog" aria-labelledby="rejectClass1" aria-hidden="true">

                <div class="modal-dialog" role="document">
            
                    <div class="modal-content">
            
                        <div class="modal-header">
            
                            <h5 class="modal-title" id="rejectClass1">Confirm</h5>
            
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            
                                <span aria-hidden="true">&times;</span>
            
                            </button>
            
                        </div>
            
                        <div class="modal-body">
            
                            <label for="recipient-name" class="col-form-label">
            
                                <h5><i class="fas fa-info-circle green"></i> Are you sure to submit?</h5>
            
                            </label>
            
                        </div>
            
                        <div class="modal-footer">
            
                            <button type="button" id="btn-modal-submit" class="btn btn-primary return-view">OK</button>
            
                            <button type="button" id="return-view" class="btn btn-secondary return-view" data-dismiss="modal">Cancel</button>
            
                        </div>
            
                    </div>
            
                </div>
            
            </div>
        </div>
    </div>
    

    <script src='<c:url value="/resources/js/trainee-result.js"></c:url>'></script>