<%@page import="antlr.collections.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="hib.UserDao"%>  
    <%@page import="hib.User"%>  
        <%@page import="java.util.*"%>  
        <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
<table class="table table-hover table-bordered" style="width:300px" >
<tr><th>ID</th><th>NAME</th><th>EMAIL</th><th>PASSWORD</th></tr>
<c:forEach var="value" items="${UserDao.GetUsers()}">  
<tr>
<td><c:out value="${value.id}"/></td>
<td><c:out value="${value.name}"/></td>
<td><c:out value="${value.email}"/></td>
<td><c:out value="${value.password}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>