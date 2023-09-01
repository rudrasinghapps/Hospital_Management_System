<%@include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<h4 style="text-align:center;">Hello, Dr. ${doc.name }</h4>
<br>
	<h1 style="color: brown; text-align: center;">Booking History</h1>
	
	<table class="table" style="width:1200px; margin:auto;">
		<thead>
			<tr>
				<th scope="col">Booking Date</th>
				<th scope="col">Booking Slot</th>
				<th scope="col">Patient</th>
				<th scope="col">Status</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="booking">
			<tr>
				<td>${booking.appDate}</td>
					<td>${booking.appTime}</td>
					<td><a href="/cyberhealth/${booking.patientId}/profilep">View
							Patient</a></td>
					<td>${booking.bookingStatus}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>