<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/v/bs4/dt-1.10.20/sc-2.0.1/datatables.min.css" />
    <link rel="stylesheet" href='<c:url value="/resources/css/landing-page.css"></c:url>'>

    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- jquery ends -->
    
    <!-- chart library -->
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <!-- chart library end-->

    <!-- datePicker -->
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <!-- datePicker ends -->

    <title>Landing page</title>
</head>

<body>
    <!-- Header -->
    <div class="container-fluid">
        <div class="row" style="background-color: #205081; vertical-align: baseline;">
            <div class="col-lg-2 pl-3 my-auto">
                <a href="landing-page.html"><img src='<c:url value="/resources/img/fpt-logo 70x53.png"></c:url>' alt="fpt-logo"></a>
            </div>
            <div class="col-lg-3 my-auto">
                <h5 class="my-auto text-white">
                    FSOFT HR UTILITY
                </h5>
            </div>
            <div class="col-lg-7 my-auto">
                <p class="float-right my-auto text-white">
                    Welcome, Username
                </p>
                <br>
                <p class="float-right my-auto text-white">
                    Logout
                </p>
            </div>
        </div>
    </div>
    <!-- Header ends -->

    <div class="container-fluid">
        <div class="row">
            <!-- side menu -->
            <div class="col-lg-2" id="side-bar">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Your role now is</li>
                    <li class="list-group-item">
                        <select class="form-control" id="">
                            <option>FA. Manager</option>
                            <option>Delivery Manager</option>
                            <option>Class Admin</option>
                            <option>FA. Rec</option>
                            <option>Trainer</option>
                            <option>System admin</option>
                        </select>
                    </li>
                    <li class="list-group-item">
                        <a href="#" id="landing-page-link">
                            Dashboard
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#">
                            Class Management
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#">
                            Candidate Management
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#">
                            Trainer Management
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#" id="trainee-management-link">
                            Trainee Management
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="#">
                            General Setting
                        </a>
                    </li>
                </ul>
            </div>
            <!-- side menu end -->

            <!-- body -->
            <div class="col-lg-10 border-left shadow" id="ajax-area">
                <h3 class="pt-3">Dashboard</h3>
                <hr class="shadow-sm">
                <div class="row">
                    <div class="col-lg-3">
                        <td class="float-left">
                            <form class="form-inline">
                                <label class="col-form-label mr-2">Dashboard for</label>
                                <select class="form-control">
                                    <option>Class</option>
                                    <option>Candidate</option>
                                    <option>Trainee</option>
                                    <option>Trainer</option>
                                </select>
                            </form>
                        </td>
                    </div>
                    <div class="col-lg-3">
                        <td class="float-left">
                            <form class="form-inline">
                                <label class="col-form-label mr-2">Location</label>
                                <select class="form-control">
                                    <option>All</option>
                                    <option>Hanoi</option>
                                    <option>Danang</option>
                                    <option>Ho Chi Minh</option>
                                </select>
                            </form>
                        </td>
                    </div>
                    <div class="col-lg-3">
                        <td class="float-left">
                            <form class="form-inline">
                                <label class="col-form-label mr-2">Type of Dashboard</label>
                                <select class="form-control" id="type-of-dasboard">
                                    <option value="0" selected>Table</option>
                                    <option value="1">Chart</option>
                                </select>
                            </form>
                        </td>
                    </div>
                    <div class="col-lg-3">
                        <td class="float-left">
                            <form class="form-inline">
                                <label class="col-form-label mr-2">Status</label>
                                <select class="form-control">
                                    <option>All</option>
                                    <option>Allocated</option>
                                    <option>Not allocated</option>
                                </select>
                            </form>
                        </td>
                    </div>
                </div>
                <hr class="shadow-sm mb-5">
                
                <div class="dashboard-content">
                    
                </div>
            </div>
            <!-- body end -->
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer text-center" style="background-color: #205081;">
        <span class="text-white">Copyright fresher academy 2020</span>
    </footer>
    <!-- Footer ends -->

    <!-- landing-page.js -->
    <!-- landing-page.js ends -->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>

    <!-- google chart -->
    <script src="https://www.gstatic.com/charts/loader.js"></script>

    <!-- datePicker -->
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>

    <!-- JS for login and landing page -->
    <script language="javascript" src= '<c:url value="/resources/js/landing-page.js"></c:url>'></script>
</body>

</html>