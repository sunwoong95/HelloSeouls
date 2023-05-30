<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello,Seoul</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="뮤지컬 〈루드윅 : 베토벤 더 피아노〉">
<meta property="og:type" content="website">
<meta property="og:image"
	content="http://tkfile.yes24.com/upload2/PerfBlog/202301/20230125/20230125-44090.jpg">
<meta property="og:url" content="http://ticket.yes24.com/Perf/44090">
<meta property="og:site_name" content="YES24 티켓">
<meta property="og:description"
	content="뮤지컬 〈루드윅 : 베토벤 더 피아노〉 상세정보 장르: 뮤지컬 일시: 2022.12.20 ~ 2023.03.12 등급: 만 10세이상 관람가  관람시간: 110분 장소: 예스24스테이지 1관 ">
<meta property="fb:app_id" content="530899446925997">
<meta name="description"
	content="뮤지컬 〈루드윅 : 베토벤 더 피아노〉 상세정보 장르: 뮤지컬 일시: 2022.12.20 ~ 2023.03.12 등급: 만 10세이상 관람가  관람시간: 110분 장소: 예스24스테이지 1관 ">
<!--#### Open Graph Meta ####-->
<meta property="og:title" content="YES24 티켓">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta property="og:url" content="http://ticket.yes24.com/New/Main.aspx">
<meta property="og:image"
	content="http://tkfile.yes24.com/imgNew/yes24ticket.gif">
<meta property="og:site_name" content="YES24 티켓">
<!--#### Open Graph Meta ####-->

<title>YES24 티켓 / 뮤지컬 〈루드윅 : 베토벤 더 피아노〉</title>

<link rel='stylesheet' type='text/css'
	href='/web/resources/ticketDetail/New/Css/Dreset.css'>
<link rel='stylesheet' type='text/css'
	href='/web/resources/ticketDetail/New/Css/Dcommon.css?v=17'>
<link rel='stylesheet' type='text/css'
	href='/web/resources/ticketDetail/New/Css/Dmain2.css?v=2020012203'>
<link rel='stylesheet' type='text/css'
	href='/web/resources/ticketDetail/New/Css/Detc.css'>
<link rel='stylesheet' type='text/css'
	href='/web/resources/ticketDetail/New/Css/Dsub.css?v=20210628'>

<script>
	// jQuery import 바로아래
	// Cannot read property 'msie' of undefined 에러 나올때
	jQuery.browser = {};
	(function() {
		jQuery.browser.msie = false;
		jQuery.browser.version = 0;
		if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
			jQuery.browser.msie = true;
			jQuery.browser.version = RegExp.$1;
		}
	})();
</script>
<body>

	<jsp:include page="../Final_Pro/header.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {
			if (0 == "1") {
				getExhbt();
			}
		});

		function getExhbt() {
			$.ajax({
				async : true,
				type : "POST",
				url : "/New/Controls/Main/Ajax/axExhbt.aspx",
				dataType : "html",
				success : function(data, textStatus) {
					if (data != "") {
						//$(".sec07").after(data)
						$(".sec07").append(data)
					}
				},
				error : function(xhr, textStatus, errorThrown) {
				},
				beforeSend : function(xhr, settings) {
				},
				complete : function(xhr, textStatus) {
				}
			});
		}
	</script>

	<script type="text/javascript">
		$(function() {
			$("div a#scrap").click(function() {
				console.log("test");
			});
		});
	</script>

	<form name="mainForm" method="post"
		action="./44090?IdPerf=44090&amp;Gcode=009_403" id="mainForm">
		<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
			value="/wEPDwULLTEyMDkwMjQ2NzQPZBYCAgUPZBYMAhUPFgIeBFRleHQF4QI8YSBocmVmPSdodHRwczovL3R3aXR0ZXIuY29tL3NoYXJlP3VybD1odHRwOi8vdGlja2V0LnllczI0LmNvbS9QZXJmLzQ0MDkwJnRleHQ9JWViJWFlJWE0JWVjJWE3JTgwJWVjJWJiJWFjKyVlMyU4MCU4OCVlYiVhMyVhOCVlYiU5MyU5YyVlYyU5YyU4NSslM2ErJWViJWIyJWEwJWVkJTg2JWEwJWViJWIyJWE0KyVlYiU4ZCU5NCslZWQlOTQlYmMlZWMlOTUlODQlZWIlODUlYjglZTMlODAlODknICBjbGFzcz0ncHMtc29jaWFsLWJ0bjInIHRhcmdldD0nX2JsYW5rJyA+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL2ltZ05ldy9jb21tb24vcm4tc29jaWFsLTAyLnBuZycgYWx0PSftirjsnITthLAnIC8+PC9hPmQCFg9kFgICAQ8WAh8AZWQCHw8WAh4HVmlzaWJsZWhkAioPFgIeBXN0eWxlBQ1kaXNwbGF5OiBub25lZAIxD2QWAgIBDxYCHwAF/CU8ZGl2IGNsYXNzPSdzd2lwZXItc2xpZGUnPjxhIGhyZWY9Jy9QZXJmLzQ0ODE5JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAyLzIwMjMwMjAxLzIwMjMwMjAxLTQ0ODE5LmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+ydgOuwgO2VmOqyjCDsnITrjIDtlZjqsozvvJpUSEUgTEFTVCcgIGNsYXNzPSdsYXp5bG9hZCcgLz48c3Bhbj7snYDrsIDtlZjqsowg7JyE64yA7ZWY6rKM77yaVEhFIExBU1Q8L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0ODAxJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAxLzIwMjMwMTMxLzIwMjMwMTMxLTQ0ODAxLmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uupOyngOy7rCDjgIjslrTrprDsmZXsnpDjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOyWtOumsOyZleyekOOAiTwvc3Bhbj48L2E+PGEgaHJlZj0nL1BlcmYvNDQ3OTgnIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0naHR0cDovL3RrZmlsZS55ZXMyNC5jb20vdXBsb2FkMi9QZXJmQmxvZy8yMDIzMDEvMjAyMzAxMTkvMjAyMzAxMTktNDQ3OTguanBnL2RpbXMvcXVhbGl0eS83MC8nIGFsdD0n666k7KeA7LusIO+8nO2YuO2UhCDvvJog7J297Z6I7KeAIOyViuydgCDssYXqs7wg7J297Z6I7KeAIOyViuydgCDsnbjsg53vvJ4nICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIO+8nO2YuO2UhCDvvJog7J297Z6I7KeAIOyViuydgCDssYXqs7wg7J297Z6I7KeAIOyViuydgCDsnbjsg53vvJ48L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0NzQ1JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAxLzIwMjMwMTE4LzIwMjMwMTE4LTQ0NzQ1LmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uupOyngOy7rCBb67mo656YXScgIGNsYXNzPSdsYXp5bG9hZCcgLz48c3Bhbj7rrqTsp4Dsu6wgW+u5qOuemF08L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0NzI4JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAxLzIwMjMwMTE5LzIwMjMwMTE5LTQ0NzI4LmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uUlCDsmKTrpqzsp4DrhJAg7ZSE66CM7LmY666k7KeA7LusIOqwiOudvOy9mOyEnO2KuCcgIGNsYXNzPSdsYXp5bG9hZCcgLz48c3Bhbj7rlJQg7Jik66as7KeA64SQIO2UhOugjOy5mOuupOyngOy7rCDqsIjrnbzsvZjshJztirg8L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0NzEwJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAxLzIwMjMwMTE3LzIwMjMwMTE3LTQ0NzEwLmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+yKrOudvOuwlCDtj7Tro6jri4zsnZgg4oCY7Iqk64W47Jqw7Ie84oCZJyAgY2xhc3M9J2xhenlsb2FkJyAvPjxzcGFuPuyKrOudvOuwlCDtj7Tro6jri4zsnZgg4oCY7Iqk64W47Jqw7Ie84oCZPC9zcGFuPjwvYT48L2Rpdj48ZGl2IGNsYXNzPSdzd2lwZXItc2xpZGUnPjxhIGhyZWY9Jy9QZXJmLzQ0NzAzJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAxLzIwMjMwMTE0LzIwMjMwMTE0LTQ0NzAzLmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uupOyngOy7rCDjgIjrk5zrnbzrnoTrnbzsuZjqs7zjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOuTnOudvOuehOudvOy5mOqzvOOAiTwvc3Bhbj48L2E+PGEgaHJlZj0nL1BlcmYvNDQ3MDEnIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0naHR0cDovL3RrZmlsZS55ZXMyNC5jb20vdXBsb2FkMi9QZXJmQmxvZy8yMDIzMDIvMjAyMzAyMDcvMjAyMzAyMDctNDQ3MDEuanBnL2RpbXMvcXVhbGl0eS83MC8nIGFsdD0n666k7KeA7LusIOOAiOyduOyCrOydtOuTnOuvuOOAiScgIGNsYXNzPSdsYXp5bG9hZCcgLz48c3Bhbj7rrqTsp4Dsu6wg44CI7J247IKs7J2065Oc66+444CJPC9zcGFuPjwvYT48YSBocmVmPScvUGVyZi80NDY5MCcgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdodHRwOi8vdGtmaWxlLnllczI0LmNvbS91cGxvYWQyL1BlcmZCbG9nLzIwMjMwMS8yMDIzMDExOC8yMDIzMDExOC00NDY5MC5qcGcvZGltcy9xdWFsaXR5LzcwLycgYWx0PSfrrqTsp4Dsu6wg44CI7JyM66as7JeE6rO8IOycjOumrOyXhOydmCDsnIzrpqzsl4Trk6TjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOycjOumrOyXhOqzvCDsnIzrpqzsl4TsnZgg7JyM66as7JeE65Ok44CJPC9zcGFuPjwvYT48YSBocmVmPScvUGVyZi80NDU3NicgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdodHRwOi8vdGtmaWxlLnllczI0LmNvbS91cGxvYWQyL1BlcmZCbG9nLzIwMjMwMS8yMDIzMDEwMi8yMDIzMDEwMi00NDU3Ni5qcGcvZGltcy9xdWFsaXR5LzcwLycgYWx0PSfrrqTsp4Dsu6wg44CI6rKw7Yis44CJJyAgY2xhc3M9J2xhenlsb2FkJyAvPjxzcGFuPuuupOyngOy7rCDjgIjqsrDtiKzjgIk8L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0NTI1JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMzAyLzIwMjMwMjA2LzIwMjMwMjA2LTQ0NTI1LmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uupOyngOy7rCDjgIjslajrpqzsiqTjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOyVqOumrOyKpOOAiTwvc3Bhbj48L2E+PGEgaHJlZj0nL1BlcmYvNDQ0NzYnIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0naHR0cDovL3RrZmlsZS55ZXMyNC5jb20vdXBsb2FkMi9QZXJmQmxvZy8yMDIyMTIvMjAyMjEyMjAvMjAyMjEyMjAtNDQ0NzYuanBnL2RpbXMvcXVhbGl0eS83MC8nIGFsdD0n666k7KeA7LusIOOAiOyynOyCrOyXkCDqtIDtlZjsl6w6IO2DgOudveyynOyCrCDtjrjjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOyynOyCrOyXkCDqtIDtlZjsl6w6IO2DgOudveyynOyCrCDtjrjjgIk8L3NwYW4+PC9hPjwvZGl2PjxkaXYgY2xhc3M9J3N3aXBlci1zbGlkZSc+PGEgaHJlZj0nL1BlcmYvNDQ0NTInIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0naHR0cDovL3RrZmlsZS55ZXMyNC5jb20vdXBsb2FkMi9QZXJmQmxvZy8yMDIyMTIvMjAyMjEyMTkvMjAyMjEyMTktNDQ0NTIuanBnL2RpbXMvcXVhbGl0eS83MC8nIGFsdD0n666k7KeA7LusIFvslYTquLDrj7zsp4DsgrztmJXsoJwg64qR64yA7IiyIOuYkOyYueuPvOyngOybkOygleuMgF0nICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIFvslYTquLDrj7zsp4DsgrztmJXsoJwg64qR64yA7IiyIOuYkOyYueuPvOyngOybkOygleuMgF08L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0Mzk1JyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMjEyLzIwMjIxMjE0LzIwMjIxMjE0LTQ0Mzk1LmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9J+uupOyngOy7rCDjgIjsiqTrhbjsmrDrjbDsnbTjgIknICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOOAiOyKpOuFuOyasOuNsOydtOOAiTwvc3Bhbj48L2E+PGEgaHJlZj0nL1BlcmYvNDQzNzQnIHRhcmdldD0nX2JsYW5rJz48aW1nIHNyYz0naHR0cDovL3RrZmlsZS55ZXMyNC5jb20vdXBsb2FkMi9QZXJmQmxvZy8yMDIzMDEvMjAyMzAxMTgvMjAyMzAxMTgtNDQzNzQuanBnL2RpbXMvcXVhbGl0eS83MC8nIGFsdD0n666k7KeA7LusIOOAiOuvuOuTnOuCmOyehyA6IOyVpO2LgOufrOyKpOOAiScgIGNsYXNzPSdsYXp5bG9hZCcgLz48c3Bhbj7rrqTsp4Dsu6wg44CI66+465Oc64KY7J6HIDog7JWk7YuA65+s7Iqk44CJPC9zcGFuPjwvYT48YSBocmVmPScvUGVyZi80NDM1NScgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdodHRwOi8vdGtmaWxlLnllczI0LmNvbS91cGxvYWQyL1BlcmZCbG9nLzIwMjIxMi8yMDIyMTIxMi8yMDIyMTIxMi00NDM1NS5qcGcvZGltcy9xdWFsaXR5LzcwLycgYWx0PSfrrqTsp4Dsu6wg44CI66Oo7JOw44CJJyAgY2xhc3M9J2xhenlsb2FkJyAvPjxzcGFuPuuupOyngOy7rCDjgIjro6jsk7DjgIk8L3NwYW4+PC9hPjxhIGhyZWY9Jy9QZXJmLzQ0MzEwJyB0YXJnZXQ9J19ibGFuayc+PGltZyBzcmM9J2h0dHA6Ly90a2ZpbGUueWVzMjQuY29tL3VwbG9hZDIvUGVyZkJsb2cvMjAyMjExLzIwMjIxMTMwLzIwMjIxMTMwLTQ0MzEwLmpwZy9kaW1zL3F1YWxpdHkvNzAvJyBhbHQ9JzIwMjPrhYQg666k7KeA7LusIOuCtCDsuZzqtawg7Jyg6rSA7IicJyAgY2xhc3M9J2xhenlsb2FkJyAvPjxzcGFuPjIwMjPrhYQg666k7KeA7LusIOuCtCDsuZzqtawg7Jyg6rSA7IicPC9zcGFuPjwvYT48YSBocmVmPScvUGVyZi80NDI5NycgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdodHRwOi8vdGtmaWxlLnllczI0LmNvbS91cGxvYWQyL1BlcmZCbG9nLzIwMjMwMS8yMDIzMDEyNS8yMDIzMDEyNS00NDI5Ny5qcGcvZGltcy9xdWFsaXR5LzcwLycgYWx0PSfrrqTsp4Dsu6wg7ISk66+87ISd7J2YIO2VnOq1reyCrCDrjIDrqqjtl5gnICBjbGFzcz0nbGF6eWxvYWQnIC8+PHNwYW4+666k7KeA7LusIOyEpOuvvOyEneydmCDtlZzqta3sgqwg64yA66qo7ZeYPC9zcGFuPjwvYT48L2Rpdj5kAjIPZBYCAgEPFgIfAAXhATxkaXYgY2xhc3M9J3N3aXBlci1zbGlkZSc+DQo8YSBocmVmPScvUGVyZi80NDA5MCcgdGFyZ2V0PSdfYmxhbmsnPjxpbWcgc3JjPSdodHRwOi8vdGtmaWxlLnllczI0LmNvbS91cGxvYWQyL1BlcmZCbG9nLzIwMjMwMS8yMDIzMDEyNS8yMDIzMDEyNS00NDA5MC5qcGcnIGFsdD0n666k7KeA7LusIOOAiOujqOuTnOychSA6IOuyoO2GoOuypCDrjZQg7ZS87JWE64W444CJJyAvPjwvYT48L2Rpdj4NCmRkk9XpsQfSpjw2l6kQ75bbXdB4CoE=">

		<input type="hidden" name="__VIEWSTATEGENERATOR"
			id="__VIEWSTATEGENERATOR" value="334906C5"> <input
			type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
			value="/wEdAAwq7tY6oKdeRSFmk2eaU9j830QIjKz+9dTD92BqWPNR/fMw69aYtEtxAS3aO5YktbP7kdjAXnQqJd/nmemb14URCqRheFDktZGJN2J0Xz7nTJNcT8Gnmp4A60Xj4lFLlFdupFJSbVPEIf1MAsSlDSNYhbBQMtfWfvdu395vfwFDXiU5L2gTdb9YlRZ8U7oqUqDJEfk+Wd8q/ukU5CDBKvXWtL+uLfspYPd3kBymSDXakW3FMgWm5R5TEdtVVv4vT5bJA5HLBwGUYX7kpEf3oMbO69i2lA==">
		<div id='dialogAlert' style='display: none;'></div>
		<div id='dialogConfirm' style='display: none;'></div>
		<div id='dialogPopup' style='display: none;'></div>
		<img id='imgAjaxLoader' style='display: none;'
			src='/web/resources/ticketDetail/img/ajax/loader.gif'
			alt='ajaxLoader'>
		<!-- Google Tag Manager (noscript) -->
		<noscript>
			<iframe src='https://www.googletagmanager.com/ns.html?id=GTM-PVHFWWM'
				height='0' width='0' style='display: none; visibility: hidden'></iframe>
		</noscript>
		<!-- End Google Tag Manager (noscript) -->

<form>
		<div class="rnew-top-wrap">
			<div class="rnew-top">
				<div class="rntop-img">
					<img
						src='http://tkfile.yes24.com/upload2/PerfBlog/202302/20230220/20230220-44090.jpg'>
				</div>
				<div class="rntop-box">
					<p class="rntop-tit">뮤지컬 〈루드윅 : 베토벤 더 피아노〉</p>
					<div class="rntop-select-wrap"></div>
				</div>
			</div>
		</div>

		<div class="renew-wrap">
			<div class="renew-content">
				<div class="rn-02">
					<!--제목-->
					<p class="rn-big-title">${ticketinfo.title}</p>
					<!-- 뮤지컬 + 컨텐츠제목 포스터 위 메인 제목 -->
					<div class="rn-product-short-data">
						<p>
							<span class="ps-date">${ticketinfo.rundate}</span> <span
								class="ps-location">${ticketinfo.loc_name}</span>
						</p>
						<!-- 상영기간 / 상영장소 + 상영관 -->
					</div>
					<img
						src="http://tkfile.yes24.com/upload2/PerfBlog/202302/20230220/20230220-44090.jpg"
						alt="" class="copy-url">
				</div>

				<div class="movie-pop-wrap">
					<div class="movie-pop-bg">
						<div class="movie-pop">
							<div class="movie-list">





								<div class="swiper-container">
									<div class="swiper-wrapper"></div>
								</div>
								<!-- Add Arrows -->
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>




							</div>
							<div class="movie-area" id="playerPerf"></div>
							<a href="#" class="movie-area-close"><img
								src="http://tkfile.yes24.com/upload2/PerfBlog/202302/20230220/20230220-44090.jpg"
								alt=""></a>
						</div>
					</div>
				</div>

				<div class="renew-wrap rw2">
					<div class="renew-content">
						<div class="rn-03">
							<!--상단-->
							<div class="rn-03-left">
								<!--포스터, 지역, 동영상-->
								<div class="rn-product-imgbox">
									<img src='${ticketinfo.imgsrc}'>
									<!-- 메인 포스터 위치 -->
									<!-- 					<a href="#" class="rn-product-movie" style="display:none;"><img src="http://tkfile.yes24.com/upload2/PerfBlog/202302/20230220/20230220-44090.jpg" alt=""></a> -->
								</div>
								<div class="rn-product-maps" id="divPerfRelation"
									style="display: none;"></div>
								<div class="rn-product-social">
									<a href="#" class="rn-product-good" id="scrap" name="scrap">
										<img
										src="http://tkfile.yes24.com/imgNew/sub/rn-product-good1.png"
										alt=""> <!-- 						<img src="http://tkfile.yes24.com/imgNew/sub/rn-product-good2.png" alt=""><span class="rn-pdg-txt2"></span><span class="rn-pdg-txt1">Likes</span> -->
									</a>
									<div class='rn-product-star' id='rnProductStar'
										style='cursor: pointer';="">
										<!-- 						<div class='rnp-bg'><p class='rnp-star'></p></div> -->
										<span>${ticketinfo.reviews}<span>Reviews</span></span>
									</div>
								</div>
							</div>
							<!--rn-03-left-->
							<div class="rn-03-right">
								<!--상품정보-->
								<div class="rn-product-area1">
									<!--등급, 관람시간, 출연, 가격, 혜택-->
									<dl>
										<dt>등급</dt>
										<dd>&nbsp;${ticketinfo.grade}</dd>
										<dt>관람시간</dt>
										<dd>&nbsp;${ticketinfo.runtime}</dd>
										<!-- 관람시간 -->
										<dt>출연</dt>
										<!-- 출연자는 a태그 달지않고 출연진만 입력해도 무관 -->
										<dd>&nbsp;${ticketinfo.performer}</dd>
										<dt id="dtPrice">가격</dt>
										<dd id="divPrice" class="rn-product-price">
											<!-- 							<ul class="rn-product-price1 scroll-color"> -->
											<li>${ticketinfo.price}</li>
											<!-- 가격(연령별) -->
											<!-- 							</ul> -->
											<!-- 							<p class='rn-product-price2'>할인 적용 시 최저가 <span class='rn-red'>22,000</span>원 ~ 최고가 <span class='rn-red'>59,400</span>원<span class='rn-label rlb-12'><a href='javascript:;' class='rn-pop-btn' data-popbtn='1'>자세히</a></span></p> -->
										</dd>
										<!-- 						<dt>혜택</dt> -->
										<!-- 						<dd class="rn-product-dc"> -->
										<!-- 							<p class="rn-product-dc1" style="display:none;"><a href="#" class="ico-pop rn-pop-btn" data-popbtn="6" id="infoBenefit"></a></p> -->
										<!-- 							<p class="rn-product-dc2"> -->
										<!-- 								<a href="#" class="ico-pop rn-pop-btn" data-popbtn="5"> -->
										<!--                                     사용가능쿠폰(<span class="rn-red">2</span>) -->
										<!--                                 </a> -->
										<!-- 								<a href="#" class="ico-pop rn-pop-btn" data-popbtn="3">무이자할부</a> -->
										<!-- 								<a href="#" class="ico-pop rn-pop-btn" data-popbtn="2">제휴카드할인</a> -->
										<!-- 							</p>							 -->
										<!-- 						</dd> -->
									</dl>
								</div>
								<!--rn-05-->

								<div class="rn-04" id="divTimeTable">
									<div class="rn-04-left on">
										<!--날짜시간선택-->
										<div class="rn-04-left-tit">
											<!--타이틀및 버튼-->
											<p class="rn-04-xtit">날짜/시간 선택</p>
											<p class="rn-04-poptit">
												관람 <span>3시간전 </span> 예매 가능
											</p>
											<span class="rn-label rlb-12"><a href="#"
												class="rn-pop-btn" data-popbtn="0">캐스팅 일정</a></span>
										</div>
										<div class="rn-04-left-wrap">
											<div class="rn-04-left-cal">
												<!--캘린더-->
												<div id="rncalendar" class="hasDatepicker">
													<div
														class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
														style="display: block;">
														<div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
															<a class="ui-datepicker-prev ui-corner-all ui-state-disabled" title="이전 달">
															<span class="ui-icon ui-icon-circle-triangle-w">이전 달</span>
																</a>
																<a class="ui-datepicker-next ui-corner-all"	data-handler="next" data-event="click" title="다음 달">
																<span class="ui-icon ui-icon-circle-triangle-e">다음 달</span>
																</a>
															<div class="ui-datepicker-title" align="center">
															<span class="ui-datepicker-year">2023</span>
															.&nbsp;
															<span class="ui-datepicker-month">03</span>
															</div>
														</div>
														<table class="ui-datepicker-calendar">
															<thead>
																<tr>
																	<th scope="col" class="ui-datepicker-week-end"><span
																		title="일">일</span></th>
																	<th scope="col"><span title="월">월</span></th>
																	<th scope="col"><span title="화">화</span></th>
																	<th scope="col"><span title="수">수</span></th>
																	<th scope="col"><span title="목">목</span></th>
																	<th scope="col"><span title="금">금</span></th>
																	<th scope="col" class="ui-datepicker-week-end"><span
																		title="토">토</span></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
																	<td
																		class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
																	<td
																		class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">1</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">2</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">3</span></td>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">4</span></td>
																</tr>
																<tr>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">5</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">6</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">7</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">8</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">9</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">10</span></td>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">11</span></td>
																</tr>
																<tr>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">12</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">13</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">14</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">15</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">16</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">17</span></td>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">18</span></td>
																</tr>
																<tr>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default"
																		style="color: rgb(237, 64, 55);">19</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled  ui-datepicker-today"><span
																		class="ui-state-default">20</span></td>
																	<td
																		class=" ui-datepicker-days-cell-over  ui-datepicker-current-day"
																		data-handler="selectDay" data-event="click"
																		data-month="2" data-year="2023"><a
																		class="ui-state-default ui-state-active eveon"
																		href="#">21</a></td>
																	<td class=" " data-handler="selectDay"
																		data-event="click" data-month="2" data-year="2023"><a
																		class="ui-state-default eveon" href="#">22</a></td>
																	<td class=" " data-handler="selectDay"
																		data-event="click" data-month="2" data-year="2023"><a
																		class="ui-state-default eveon" href="#">23</a></td>
																	<td class=" " data-handler="selectDay"
																		data-event="click" data-month="2" data-year="2023"><a
																		class="ui-state-default eveon" href="#">24</a></td>
																	<td class=" ui-datepicker-week-end "
																		data-handler="selectDay" data-event="click"
																		data-month="2" data-year="2023"><a
																		class="ui-state-default eveon" href="#">25</a></td>
																</tr>
																<tr>
																	<td class=" ui-datepicker-week-end "
																		data-handler="selectDay" data-event="click"
																		data-month="2" data-year="2023"><a
																		class="ui-state-default eveon" href="#">26</a></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">27</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">28</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">29</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">30</span></td>
																	<td
																		class=" ui-datepicker-unselectable ui-state-disabled "><span
																		class="ui-state-default">31</span></td>
																	<td
																		class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!--회차정보-->
											<div
												class="rn-04-left-calist scroll-color mCustomScrollbar _mCS_2 mCS_no_scrollbar"
												id="PerfPlayTime" style="height: 233px;">
												<a href="#" idtime="1218909" title="오후 8시 00분"
													onclick="jsf_pdi_ChangePlayTime('calendar','1218909','오후8시00분');"><span>1회</span>
													오후 8시 00분</a>
											</div>
										</div>
										<div class="rn-04-popbox" style="display: none; opacity: 0;">
											<p class="rn-04-popbox-tit">본 상품은 관람 당일 예매가 가능한 상품입니다.</p>
											<p class="rn-04-popbox-txt">
												관람 시간 기준으로 해당 시간까지 예매 가능합니다. 단, <span>관람 당일 예매 시
													취소/환불/변경이 불가</span> 하오니 신중하게 예매해주시기 바랍니다. <br>
												<br> (* 상품에 따라 관람 당일 취소 정책이 다르게 적용될 수 있으니, 예매 시
												‘취소가능시간’을 확인해주세요)
											</p>
										</div>
									</div>
									<!--예매가능좌석-->
									<!-- 			<div class="rn-04-right off" style="height: 367px;"> -->
									<!-- 				<p class="rn-04-right-tit">예매 가능 좌석</p> -->
									<!-- 				<div class="rn-04-right-list scroll-color mCustomScrollbar _mCS_4 mCS_no_scrollbar" style="height: 169px;"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"> -->
									<!-- 					<dl id="SeatRemain"> -->
									<!-- 								<li>전석 <span class="rn-red">65,000</span>원</li> -->
									<!-- 							</dl> -->
									<!-- 				</div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; height: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div> -->
									<!-- 			</div> -->
								</div>
								<div class="rn-05">
									<a href='/web/booking?no=${ticketinfo.no}' onclick='jsf_pdi_GoPerfSale();' class='rn-bb03'>예매하기</a>
								</div>
								<!--포인트-->

								<!-- 				<div class="rn-product-area3">공연시간안내, 배송정보 -->
								<!-- 					<dl> -->
								<!-- 						<dt>공연시간 안내</dt> -->
								<!-- 						<dd>평일 오후 8시 / 수요일 4시, 8시(12월 21일 제외) / 토요일 3시, 7시 / 일, 공휴일 2시, 6시 (월 쉼)</dd>   상영일정 -->
								<!-- 						<dt>배송정보</dt> -->
								<!-- 						<dd>현장 수령만 가능</dd> -->
								<!-- 					</dl> -->
								<!-- 				</div> -->

								<!--자동주문방지적용-->


							</div>
							<!--rn-03-right-->
						</div>
						<!--rn-03-->
						</form>
</body>
</html>