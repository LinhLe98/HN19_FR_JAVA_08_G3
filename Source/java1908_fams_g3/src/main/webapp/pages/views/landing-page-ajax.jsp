<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- body -->

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

<!-- body end -->
<!-- JS for login and landing page -->
<script language="javascript" src='<c:url value="/resources/js/landing-page.js"></c:url>'></script>