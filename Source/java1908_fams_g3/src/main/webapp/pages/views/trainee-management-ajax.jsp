<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <link rel="stylesheet" href= '<c:url value="/resources/css/trainee-management-ajax.css"></c:url>'>
</head>


<h3 class="pt-3">Trainee Listing</h3>
<table id="traineeTable" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>
                <input type="checkbox" name="checkAll" id="checkAll">
            </th>
            <th>#</th>
            <th>Empl ID</th>
            <th>Account</th>
            <th>Name</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
     <% int i = 1; %>
     <c:forEach items="${traineeList}" var="trainee" >
        <tr>
        	<td>
        		<input type="checkbox" class="checkBoxTrainee" txt="${trainee.id}">
        	</td>
        	<td>
        		<%= i++ %>
        	</td>
        	<td>
        		<a href="#" class="ajax-class">
                    ${trainee.id}
                </a>
        	</td>
        	<td>${trainee.account}</td>
        	<td>${trainee.name}</td>
        	<td>${trainee.status}</td>
        </tr>
     </c:forEach>
           
    </tbody>
</table>
<!-- update button -->
<a href="#" id="update-link" >
    <button type="button" class="btn btn-customized" id="update-btn">
        <i class="fa fa-arrow-circle-up mr-1" style="font: size 20px; color: cornflowerblue;"></i>Update Trainee
    </button>
</a>

<!-- delete button -->
<button type="button" class="btn btn-customized" id="delete-btn" data-toggle="modal" data-target="#modalDelete">
    <i class="fa fa-times" style="color: crimson;"></i> Delete trainee</button>
<!-- delete modal-->
<div id="modalDelete" class="modal fade" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Confirm Delete</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body text-center">
                <i class="fas fa-info-circle mr-2" style="color: green;"></i>Are you sure want to delete?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="detele-btn-modal">
                    Yes</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
            </div>
        </div>
    </div>
</div>
<!-- body end -->

<script src='<c:url value="/resources/js/trainee-management-ajax.js"></c:url>'></script>
</body>

</html>