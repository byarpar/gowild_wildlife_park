<%@page import="Validation.MyValidations"%>
<%@page import="Model.InsertQueries"%>
<%@page import="Entity.Diet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Diet Action</title>
</head>
<body>

<%
String type = request.getParameter("diet_type");
String feeds_per_day = request.getParameter("fpd");

if (type == null || type == "") {
	out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
} else if (feeds_per_day == null || feeds_per_day == "") {
	out.println("Group can't be blank.\nPlease Go Back and Fill the Group.");
}else if (!MyValidations.validNumber(feeds_per_day)){
 out.println("Invalid Number Format");

} else {


Diet diet = new Diet();

diet.setDiet_type(type);
diet.setFeeds_per_day(Integer.parseInt(feeds_per_day));

int row = InsertQueries.insertDietinfo(diet);

if (row != 0) {
	out.print("Insert Successfully ....");
	response.sendRedirect(request.getContextPath() + "/View/Thanks.jsp");
	return;
} else {
	out.print("Insert Fail");
	response.sendRedirect(request.getContextPath() + "/View/Fail.jsp");

	}
}
%>

</body>
</html>