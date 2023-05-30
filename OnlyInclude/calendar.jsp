<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
var CDate = new Date(); 
var today = new Date();
var selectCk = 0;

var buildcalendar = function(){
	var htmlDates = ''; 
	var prevLast = new Date(CDate.getFullYear(), CDate.getMonth(), 0); //지난 달의 마지막 날 
	var thisFirst = new Date(CDate.getFullYear(), CDate.getMonth(), 1); //이번 달의 첫쨰 날
	var thisLast = new Date(CDate.getFullYear(), CDate.getMonth() + 1, 0); //이번 달의 마지막 날
	document.querySelector(".year").innerHTML = CDate.getFullYear() + "년";  // year에 년도 출력
	document.querySelector(".month").innerHTML = (CDate.getMonth() + 1) + "월";  //month에 월 출력
	const dates = []; 
	if(thisFirst.getDay()!=0){ 
		for(var i = 0; i < thisFirst.getDay(); i++){
			dates.unshift(prevLast.getDate()-i); // 지난 달 날짜 채우기
		} 
	} 
	for(var i = 1; i <= thisLast.getDate(); i++){
			 dates.push(i); // 이번 달 날짜 채우기 
	} 
	for(var i = 1; i <= 13 - thisLast.getDay(); i++){ 
			 dates.push(i); // 다음 달 날짜 채우기 (나머지 다 채운 다음 출력할 때 42개만 출력함)
	} 
	
	for(var i = 0; i < 42; i++){
		if(i < thisFirst.getDay()){
			htmlDates += '<div class="date last">'+dates[i]+'</div>'; 
		}else if(today.getDate()==dates[i] && today.getMonth()==CDate.getMonth() && today.getFullYear()==CDate.getFullYear()){
			 htmlDates += '<div id="date_'+dates[i]+'" class="date today" onclick="fn_selectDate('+dates[i]+');">'+dates[i]+'</div>'; 
		}else if(i >= thisFirst.getDay() + thisLast.getDate()){
			 htmlDates += '<div class="date next">'+dates[i]+'</div>'; 
		}else{
			htmlDates += '<div id="date_'+dates[i]+'" class="date" onclick="fn_selectDate('+dates[i]+');">'+dates[i]+'</div>'; 
		}
	 } 
document.querySelector(".dates").innerHTML = htmlDates; 
} 
function prevCal(){
	 CDate.setMonth(CDate.getMonth()-1); 
	 buildcalendar(); 
} 
function nextCal(){
	 CDate.setMonth(CDate.getMonth()+1);
	 buildcalendar(); 
}

function fn_selectDate(date){
	
	var year = CDate.getFullYear();
	var month = CDate.getMonth() + 1;
	var date_txt = "";
	if(CDate.getMonth + 1 < 10){
		month = "0" + (CDate.getMonth() + 1);
	}
	if(date < 10){
		date_txt = "0" + date;
	}
	
	if(selectCk == 0){
		$(".date").css("background-color", "");
		$(".date").css("color", "");
		$("#date_"+date).css("background-color", "red");
		$("#date_"+date).css("color", "white");
		
		$("#period_1").val(year+"-"+month+"-"+date);
		$("#period_2").val("");
		selectCk = date;
	}
	else{
		$("#date_"+date).css("background-color", "red");
		$("#date_"+date).css("color", "white");		
		for(var i = selectCk + 1 ; i < date ; i++){
			$("#date_"+i).css("background-color", "#FFDDDD");
		}
		
		$("#period_2").val(year+"-"+month+"-"+date);
		selectCk = 0;
	}
	
}
$(document).ready(function() {

		buildcalendar();
		
	
});
</script>
<style type="text/css">
.calendar {width: 100%; padding: 5px 20px 20px 20px; box-sizing: border-box; border: 1px solid;} 
.calendar > .header {text-align: center;} 
.calendar > .header > .title {width:50%; display: inline-block;} 
.calendar > .header > .calendar_btn { 
	width: 30px; 
 	height: 30px; 
 	border: none; 
 	padding: 0; 
 	background-color: #ffffff; 
 	vertical-align: middle; 
 	color: black; 
} 
.calendar > .day {width:100%; display: table; table-layout: fixed;} 
.calendar > .day > div {display: table-cell; text-align: center; height: 50px; vertical-align: middle;} 
.calendar > .day > div:first-child {color: red;} 
.calendar > .day > div:last-of-type {color: blue;} 
.calendar > .dates {display: flex; flex-wrap: wrap; width: 100%;} 
.calendar > .dates > .date {text-align: center; width: calc(100%/7); height: 50px; box-sizing: border-box;line-height: 3; border-radius: 3px;}  
.calendar > .dates > .date:nth-child(7n){color: blue;} 
.calendar > .dates > .date:nth-child(7n+1){color: red;} 
.calendar > .dates > .last {color: #c8c8c8 !important;} 
.calendar > .dates > .next {color: #c8c8c8 !important;} 
</style>
<title>Insert title here</title>
</head>
<body>
 <div class="calendar">
	<div class="header">
		<button class="calendar_btn" onclick="prevCal();">&lt;</button>
		<div class="title"><span class="year"></span><span class="month"></span></div>
		<button class="calendar_btn" onclick="nextCal();">&gt;</button>
	</div>
	<div class="day">
		<div>S</div>
		<div>M</div>
		<div>T</div>
		<div>W</div>
		<div>T</div>
		<div>F</div>
		<div>S</div>
	</div>
	<div class="dates"></div>
</div>
<input type="hidden" id="period_1">
</body>
</html>