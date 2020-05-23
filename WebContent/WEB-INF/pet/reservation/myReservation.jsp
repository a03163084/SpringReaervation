<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyReservation</title>
</head>
<body>
	
	
	<H2>${petMembers.username}的預約<br>
	帳號 : ${petMembers.email}</H2>
	<table border="1">
	 <tr style="text-align:center">
	 	<td>寵物名稱</td>
	 	<td>品種</td>
	 	<td>服務項目</td>
	 	<td>需求</td>
	 	<td>預約日期</td>
	 	<td>預約時間</td>
	 	<td>金額</td>
	 	<td>預約狀態</td>
	<c:forEach varStatus="star" var="View" items="${myReservation}">
	<tr style="text-align:center">
			<td>${View.petName}</td>
			<td>${View.breed}</td>
			<td>${View.serviceItem}</td>
			<td>${View.require}</td>
			<td>${View.createDate}</td>
			<td>${View.availableDateTime}:00</td>
			<td>${View.amount}</td>
			<td>${View.statuss}</td>
			<td>
				<form style='float:left' method='post' action='update'>
				<input type="hidden" name='reservationId' value='${View.reservationId}'>
				<input type="submit" name='statuss' value="取消預約">
				</form>
				
				<form style='float:left' method='post' action='queryReservation'>
				<input type="hidden" name="reservationId" value="${View.reservationId}">
				<input type='submit' value='評分'>
				</form>
			</td>
	</tr>
	</c:forEach>
	</tr>
	</table>


	<a href="index37">上一頁</a>

</body>
</html>