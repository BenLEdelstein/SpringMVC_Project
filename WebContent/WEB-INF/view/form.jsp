<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Form</title>
	</head>
	<body>
		<h1 align=center>User Form</h1>
		<div align=right style="border: 2px dotted black;">Date: ${date}</div><br/>
		<form:form action="process-form" method="post" modelAttribute="user">
			
			<form:label path="lastName">First Name: </form:label>
			<form:input path="firstName"/>
			<form:errors path="firstName" style="color:red"/><br/>
			
			<form:label path="lastName">Last Name: </form:label>
			<form:input path="lastName"/>
			<form:errors path="lastName" style="color:red"/><br/>
			
			<form:label path="userName">User Name: </form:label>
			<form:input path="userName" />
			<form:errors path="userName" style="color:red"/><br/>
			
			<form:label path="gender">Gender: </form:label>
			<form:radiobutton value="female" path="gender" />
			<form:label path="gender">Female</form:label>
			<form:radiobutton value="male" path="gender" />
			<form:label path="gender">Male</form:label><br/>
			
			<form:label path="contactInfo.phoneNumber">Phone Number: </form:label>
			<form:input type="number" path="contactInfo.phoneNumber" /><br/>
			
			<form:label path="contactInfo.email">Email: </form:label>
			<form:input path="contactInfo.email" /><br/>
			
			<form:label path="contactInfo.linkedInUrl">LinkedIn URL: </form:label>
			<form:input path="contactInfo.linkedInUrl" /><br/>
			
			<form:label path="privateInfo.ssnString">Social Security Number: </form:label>
			<form:input type="text" path="privateInfo.ssnString" />
			<form:errors path="privateInfo.ssnString" style="color:red"/><br/>
			
			<form:label path="privateInfo.ccnString">Credit Card Number: </form:label>
			<form:input type="text" path="privateInfo.ccnString"/>
			<form:errors path="privateInfo.ccnString" style="color:red"/><br/>
			
			<form:label path="privateInfo.dob">Date of Birth: </form:label>
			<form:input type="date" path="privateInfo.dob"/><br/>
			
			<input type="submit" name="submit" value="Submit"/>
			
		</form:form>
	</body>
</html>