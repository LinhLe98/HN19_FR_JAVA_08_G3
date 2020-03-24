<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header text-center">
                Planned
            </div>
            <div class="card-body">
                <div id="chartContainer1" style="height: 370px; width: 100%;"></div>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header text-center">
                Planning
            </div>
            <div class="card-body">
                <div id="chartContainer2" style="height: 370px; width: 100%;"></div>
            </div>
        </div>
    </div>
    <div class="col-lg-4">

        <div class="card">
            <div class="card-header text-center">
                In-progress
            </div>
            <div class="card-body">
                <div id="chartContainer3" style="height: 370px; width: 100%;"></div>
            </div>
        </div>
    </div>
</div>
<!-- JS -->
<script src='<c:url value="/resources/js/chart.js"></c:url>'></script>