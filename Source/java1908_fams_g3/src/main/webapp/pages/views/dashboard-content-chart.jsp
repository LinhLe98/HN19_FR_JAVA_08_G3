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
                <div id="chartContainer" style="height: 370px; width: 100%;"></div>
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

<script type="text/javascript">
    window.onload = function () {
        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
            title: {
                text: ""
            },
            data: [{
                type: "pie",
                startAngle: 240,
                yValueFormatString: "##0.00\"%\"",
                indexLabel: "{label} {y}",
                dataPoints: [
                    { y: 79.45, label: ".NET" },
                    { y: 7.31, label: "Android" },
                    { y: 7.06, label: "C/C++" },
                    { y: 4.91, label: "Front-end" },
                    { y: 1.26, label: "Java" }
                ]
            }]
        });
        chart.render();

        var chart2 = new CanvasJS.Chart("chartContainer2", {
            animationEnabled: true,
            title: {
                text: ""
            },
            data: [{
                type: "pie",
                startAngle: 240,
                yValueFormatString: "##0.00\"%\"",
                indexLabel: "{label} {y}",
                dataPoints: [
                    { y: 79.45, label: ".NET" },
                    { y: 7.31, label: "Android" },
                    { y: 7.06, label: "C/C++" },
                    { y: 4.91, label: "Front-end" },
                    { y: 1.26, label: "Java" }
                ]
            }]
        });
        chart2.render();

        var chart3 = new CanvasJS.Chart("chartContainer3", {
            animationEnabled: true,
            title: {
                text: ""
            },
            data: [{
                type: "pie",
                startAngle: 240,
                yValueFormatString: "##0.00\"%\"",
                indexLabel: "{label} {y}",
                dataPoints: [
                    { y: 79.45, label: ".NET" },
                    { y: 7.31, label: "Android" },
                    { y: 7.06, label: "C/C++" },
                    { y: 4.91, label: "Front-end" },
                    { y: 1.26, label: "Java" }
                ]
            }]
        });
        chart3.render();
    }
</script>