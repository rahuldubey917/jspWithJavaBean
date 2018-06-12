<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>response from javaBeanUse.jsp File</h1>

<!-- setting properties of Details.java class attributes by using javaBean Action Tags -->
<jsp:useBean id="ob" class="servlet.Details">
<jsp:setProperty name="ob" property="name" value="${param.name }"/>
<jsp:setProperty name="ob" property="surname" value="${param.surname }" />
<jsp:setProperty name="ob" property="ph" value="${param.ph }"/>
<jsp:setProperty name="ob" property="add" value="${param.add }"/>
</jsp:useBean>
<table border="1px">
<!-- getting properties of Details.java class attributes by using javaBean Action Tags -->
===============response by using jsp action tags====================<br>
<tr>
Name:<td><jsp:getProperty property="name" name="ob"/></td>
Surname:<td> <jsp:getProperty property="surname" name="ob"/></td>
Ph.:<td><jsp:getProperty property="ph" name="ob"/></td>
add:<td><jsp:getProperty property="add" name="ob"/></td>
</tr>
</table>

<%out.println("=========response by using java code in jsp===========");out.println("<br>");
out.println("name=");out.println(ob.getName());out.println("<br>");
out.println("surname=");out.println(ob.getSurname());out.println("<br>");
out.println("ph.=");out.println(ob.getPh());out.println("<br>");
out.println("Add=");out.println(ob.getAdd());out.println("<br>");
%>

</body>
</html>