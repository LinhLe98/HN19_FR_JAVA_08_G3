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
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>1</td>
            <td>
                <a href="#" class="ajax-class">
                    0012679
                </a>
            </td>
            <td>AnhDD3</td>
            <td>Đào Đức Anh</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>2</td>
            <td>
                <a href="#" class="ajax-class">
                    0073735
                </a>
            </td>
            <td>AnhDD5</td>
            <td>Đà Đức Anh</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>3</td>
            <td>
                <a href="#" class="ajax-class">
                    0022148
                </a>
            </td>
            <td>AnDD4</td>
            <td>Đàm Đức An</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>4</td>
            <td>
                <a href="#" class="ajax-class">
                    0037412
                </a>
            </td>
            <td>AnDD3</td>
            <td>Đào Đức An</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>5</td>
            <td>
                <a href="#" class="ajax-class">
                    0011237
                </a>
            </td>
            <td>BeNV</td>
            <td>Nguyễn Văn Bê</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>6</td>
            <td>
                <a href="#" class="ajax-class">
                    0037911
                </a>
            </td>
            <td>YenH</td>
            <td>Hoàng Yến</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>7</td>
            <td>
                <a href="#" class="ajax-class">
                    0044225
                </a>
            </td>
            <td>TuanPM22</td>
            <td>Phan Minh Tuấn</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>8</td>
            <td>
                <a href="#" class="ajax-class">
                    0053443
                </a>
            </td>
            <td>DuongHM</td>
            <td>Hoàng Minh Dương</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>9</td>
            <td>
                <a href="#" class="ajax-class">
                    0044444
                </a>
            </td>
            <td>LinhNT70</td>
            <td>Nguyễn Tùng Linh</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>10</td>
            <td>
                <a href="#" class="ajax-class">
                    0066787
                </a>
            </td>
            <td>AnhLQ8</td>
            <td>Lê Quang Anh</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>11</td>
            <td>
                <a href="#" class="ajax-class">
                    0037241
                </a>
            </td>
            <td>LinhNTM3</td>
            <td>Lê Thị Mỹ Linh</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>12</td>
            <td>
                <a href="#" class="ajax-class">
                    0011001
                </a>
            </td>
            <td>ThanhDT19</td>
            <td>Đoàn Trung Thành</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>13</td>
            <td>
                <a href="#" class="ajax-class">
                    0013437
                </a>
            </td>
            <td>ThanhCT2</td>
            <td>Chu Tuấn Thành</td>
            <td>Waiting for Class</td>
        </tr>
        <tr>
            <td>
                <input type="checkbox" class="checkBoxTrainee">
            </td>
            <td>14</td>
            <td>
                <a href="#" class="ajax-class">
                    0033778
                </a>
            </td>
            <td>VietPT</td>
            <td>Phùng Tuấn Việt</td>
            <td>Waiting for Class</td>
        </tr>
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
                <button type="button" class="btn btn-primary">
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