<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Diet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<style>
body{
background-color: #932092;
}
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
	String id = request.getParameter("id");

    Diet diet = new Diet();

	diet = SelectQueries.getDietInfoByID(Integer.parseInt(id));

	if (diet == null) {
	%>
	<h3>No Diet Data Found...</h3>
	<%
	} else {
	%>
	<form name="myform" method="post"
		action="<%=request.getContextPath()%>/Action/DietUpdateAction.jsp"
		onsubmit="return validateform()">


        <div style="margin-top: -23em">
		<table>
			<tr>
				<th colspan="2">Add Diet Information</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=diet.getDiet_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="diet_type" required="required"
					value="<%=diet.getDiet_type()%>"></td>
			</tr>
			<tr>
				<td>FPD</td>
				<td><input type="text" name="feeds_per_day" required="required"
					value="<%=diet.getFeeds_per_day()%>"></td>
			</tr>
			
			<tr>
				<td><a style="text-transform: uppercase;"
					href="<%=request.getContextPath()%>/View/ViewDietInfo.jsp">
						View Diet Info</a></td>
				<td><input type="submit" value="UPDATE" class="formButton">
					<input type="reset" value="CLEAR" class="formButton"></td>
			</tr>
		</table>
		</div>
	</form>
	<%
	}
	%>
</body>
</html>