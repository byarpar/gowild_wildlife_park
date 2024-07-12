<%@page import="Entity.Enclosure"%>
<%@page import="Model.UpdateQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Enclosure Information</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<style>
table, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
}

table tr td {
	text-align: left;
}

table {
	width: 100%
}
</style>
	<%@ include file="/Header.jsp"%>
</head>
<body>
<%
	String type = request.getParameter("enclosure_type");
	String location = request.getParameter("location");
	
	String id = request.getParameter("id");
	
	out.print(type + " " + location + " ");
	
	if (type == null || type == "") {
		out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
	} else if (location == null || location == "") {
		out.println("Location can't be blank.\nPlease Go Back and Fill the Location.");
	} else {
	
	Enclosure enclosure = new Enclosure();
	enclosure.setEnclosure_id(Integer.parseInt(id));
	enclosure.setType(type);
	enclosure.setLocation(location);
	
	int row = UpdateQueries.updateEnclosureInfoByID(enclosure);
	
	if(row != 0){
		out.print("Successfully Inserted");
		response.sendRedirect(request.getContextPath() + "/View/Thanks.jsp");
	}else{
		response.sendRedirect(request.getContextPath() + "/View/Fail.jsp");
	}
	}
	%>
</body>
</html>