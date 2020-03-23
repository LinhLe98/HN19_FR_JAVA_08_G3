<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <link rel="stylesheet" href='<c:url value="/resources/css/trainee-profile-update-ajax.css"></c:url>'>
    <h3 class="pt-3">Trainee profile</h3>

    <!-- tabs -->
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#traineeInformation" id="trainee-information">Trainee
                Information</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#" data-target="#traineeResult"
                id="training-result">Training Result</a>
        </li>
    </ul>

    <!-- tab area -->
    <div id="traineeInformation" class="container-fluid tab-pane active"><br>
        <form id="informationUpdateForm">
            <table class="table table-bordered">
                <tr>
                    <td colspan="8" class="text-white" style="background-color:cornflowerblue;">Personal
                        Information</td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Empl ID</td>
                    <td class="traineeValue">00126448</td>
                    <td class="traineeAttribute">Type</td>
                    <td class="traineeValue">Trainee</td>
                    <td class="traineeAttribute">Status</td>
                    <td class="traineeValue">Waiting for Class</td>
                    <td class="traineeAttribute">Allocation Status</td>
                    <td class="traineeValue">Not allocated</td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Account</td>
                    <td colspan="3" class="traineeValue">AnhDD3</td>

                    <td class="traineeAttribute">Name (*)</td>
                    <td colspan="3" class="traineePadding">
                        <input type="text" class="td-input w-100" id="name" name="name" value="Đào Đức Anh">
                    </td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Gender (*)</td>
                    <td colspan="3" class="">
                        <div class="form-check form-check-inline gender">
                            <input class="form-check-input" type="radio" name="gender" id="male" value="1" checked>
                            <label class="form-check-label" for="male">Male</label>
                        </div>
                        <div class="form-check form-check-inline gender">
                            <input class="form-check-input" type="radio" name="gender" id="female" value="0">
                            <label class="form-check-label" for="female">Female</label>
                        </div>
                    </td>
                    <td class="traineeAttribute">DOB (*)</td>
                    <td colspan="3" class="traineePadding">
                        <!-- <input class="td-input bg-white" id="dateOfBirth" name="dateOfBirth" placeholder="Choose a date smaller than the current day" readonly> -->
                        <input type="date" class="td-input w-100" id="dateOfBirth" name="dateOfBirth">
                    </td>
                </tr>
                <tr>
                    <td class="traineeAttribute">University</td>
                    <td colspan="3" class="traineePadding">
                        <select class="td-input w-100">
                            <option value="hust">HUST</option>
                            <option value="fpt">FPT</option>
                        </select>
                    </td>

                    <td class="traineeAttribute">Faculty</td>
                    <td colspan="3" class="traineePadding">
                        <select class="td-input w-100">
                            <option value="dtvt">ĐTVT</option>
                            <option value="cntt">CNTT</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Phone (*)</td>
                    <td colspan="3" class="traineePadding">
                        <input type="text" class="td-input w-100" id="phone" name="phone" value="09878900009">
                    </td>

                    <td class="traineeAttribute">Email (*)</td>
                    <td colspan="3" class="traineePadding">
                        <input type="text" class="td-input w-100" id="email" name="email" value="anhdd3@gmail.com">
                    </td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Salary Paid (*)</td>
                    <td colspan="3" class="">
                        <div class="form-check form-check-inline salaried">
                            <input class="form-check-input " type="radio" name="salaried" id="salaryYes" value="yes"
                                checked>
                            <label class="form-check-label" for="salaryYes">Yes</label>
                        </div>
                        <div class="form-check form-check-inline salaried">
                            <input class="form-check-input " type="radio" name="salaried" id="salaryNo" value="no">
                            <label class="form-check-label" for="salaryNo">No</label>
                        </div>
                    </td>

                    <td class="traineeAttribute">TPB Account</td>
                    <td colspan="3" class="traineePadding">
                        <input type="text" class="td-input w-100" id="bankAccount" value="001196003762">
                    </td>
                </tr>
                <tr>
                    <td class="traineeAttribute">Allowance Group</td>
                    <td colspan="3" class="traineePadding">
                        <select class="td-input w-100">
                            <option value="devn">Dev-N</option>
                            <option value="devs">Dev-S</option>
                        </select>
                    </td>

                    <td class="traineeAttribute">Commitment</td>
                    <td colspan="3" class="traineeValue">6 months - 02/07/2018</td>
                </tr>
                <tr>
                    <td class="traineeAttribute">History</td>
                    <td colspan="7" class="traineeValue">17/06/2017 - Created by HangTTT2</td>
                </tr>
            </table>
            <!-- submit button -->
            <button type="button" class="btn btn-customized" data-toggle="modal" data-target="#confirm-submit"><i
                    class="far fa-check-circle mr-1" style="font: size 20px; color: cornflowerblue;"></i>Submit
            </button>
            <!-- submit button ends -->

            <!-- close button -->
            <a href="#">
                <button type="button" class="btn btn-customized" id="close-btn"><i
                        class="fas fa-reply mr-1" style="color: crimson;"></i>Close
                    </button>
            </a>
            <!-- close button ends -->
            <!-- submit modal -->
            <div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Confirm update</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body text-center">
                            <i class="fas fa-info-circle mr-2" style="color: green;"></i>Are you sure to
                            submit
                        </div>
                        <div class="modal-footer">
                            <a href="trainee-profile-view.html"><button type="submit"
                                    class="btn btn-primary">OK</button></a>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- submit modal end -->
        </form>
    </div>
    </div>
    <!-- body end -->
    <script src= '<c:url value="/resources/js/trainee-profile-update-ajax.js"></c:url>'></script>


