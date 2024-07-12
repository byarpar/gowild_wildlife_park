<%@page import="Validation.MyValidations"%>
<%@page import="Entity.Diet"%>
<%@page import="Model.UpdateQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Diet Information</title>
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
	String type = request.getParameter("diet_type");
	String fpd = request.getParameter("feeds_per_day");
	
	String id = request.getParameter("id");
	
	out.print(type+ " " + fpd + " ");
	
	if (type == null || type == "") {
		out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
	} else if (fpd == null || fpd == "") {
		out.println("Feeds_per_day can't be blank.\nPlease Go Back and Fill the Feeds_per_day.");
	}else if(!MyValidations.validNumber(fpd)){
		out.println("Invalid number format");
	}
	else {

		
	
	Diet diet = new Diet();
	diet.setDiet_id(Integer.parseInt(id));
	diet.setDiet_type(type);
	diet.setFeeds_per_day(Integer.parseInt(fpd));
	
	int row = UpdateQueries.updateDietInfoByID(diet);
	
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