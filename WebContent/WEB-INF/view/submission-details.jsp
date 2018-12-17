<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Submission Details</title>
		<style>
			td{
				border: 1px solid black;
			}
		</style>
	</head>
	<body>
	<h1 align=center>Submission Details</h1>
	<br>
		<table style="border: 1px solid black;">
			<thead>
				<tr>
					<th>Attribute Name</th>
					<th>Value</th>
				</tr>
			</thead>
			<tr>
				<td>First Name: </td>
				<td>${user.firstName}</td>
			</tr>
			<tr>
				<td>Last Name: </td>
				<td>${user.lastName}</td>
			</tr>
			<tr>
				<td>User Name: </td>
				<td>${user.userName}</td>
			</tr>
			<tr>
				<td>Gender: </td>
				<td>${user.gender}</td>
			</tr>
			<tr>
				<td>Phone Number: </td>
				<td>${user.contactInfo.phoneNumber}</td>
			</tr>
			<tr>
				<td>E-Mail: </td>
				<td>${user.contactInfo.email}</td>
			</tr>
			<tr>
				<td>LinkedIn URL: </td>
				<td>${user.contactInfo.linkedInUrl}</td>
			</tr>
			<tr>
				<td>Social Security Number: </td>
				<td>${user.privateInfo.ssn}</td>
			</tr>
			<tr>
				<td>Credit Card Number: </td>
				<td>${user.privateInfo.ccn}</td>
			</tr>
			<tr>
				<td>Date of Birth: </td>
				<td>${user.privateInfo.dob}</td>
			</tr>
			<tr>
				<td colspan="2">Date: ${date}</td>
			</tr>
		</table>
	</body>
</html>