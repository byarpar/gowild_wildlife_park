<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Enclosure"%>
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
background-color: #41028d;
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

    Enclosure enclosure = new Enclosure();

	enclosure = SelectQueries.getEnclosureInfoByID(Integer.parseInt(id));

	if (enclosure == null) {
	%>
	<h3>No Enclosure Data Found...</h3>
	<%
	} else {
	%>
	<form name="myform" method="post"
		action="<%=request.getContextPath()%>/Action/EnclosureUpdateAction.jsp"
		onsubmit="return validateform()">


          <div style="margin-top: -24em"> 
		<table>
			<tr>
				<th colspan="2">Add Enclosure Information</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=enclosure.getEnclosure_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="enclosure_type" required="required"
					value="<%=enclosure.getType()%>"></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><input type="text" name="location" required="required"
					value="<%=enclosure.getLocation()%>"></td>
			</tr>
			
			<tr>
				<td><a style="text-transform: uppercase;"
					href="<%=request.getContextPath()%>/View/ViewEnclosureInfo.jsp">
						View Enclosure Info</a></td>
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