<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Keeper"%>
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
table, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
}

body{
background-color: #2196F3;
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


	Keeper keeper = new Keeper();

	keeper = SelectQueries.getKeeperInfoByID(Integer.parseInt(id));

	if (keeper == null) {
	%>
	<h3>No Keeper Data Found...</h3>
	<%
	} else {
	%>
	<form name="myform" method="post"
		action="<%=request.getContextPath()%>/Action/KeeperUpdateAction.jsp"
		onsubmit="return validateform()">
        <div style="margin-top: -7em">
		<table>
			<tr>
				<th colspan="2">Add Keeper Information</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="keeper_id" value="<%=keeper.getKeeper_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="keepers_name"
					placeholder="U Aung Zaw" required="required"
					value="<%=keeper.getKeepers_name()%>"></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><input type="date" name="date_of_birth" required="required"
					value="<%=keeper.getDate_of_birth()%>"></td>
			</tr>
			<tr>
				<td>Rank</td>
				<td style="text-align: left"><input type="radio"
					name="keepers_rank" value="Senior" checked>Senior <input
					type="radio" name="keepers_rank" value="Junior">Junior <input
					type="radio" name="keepers_rank" value="Standard">Standard</td>
			</tr>
			<tr>
				<td></td>
				<td style="color: red; font-size: 18px; text-align: left">*Senior
					will be selected as default</td>
			</tr>
			<tr>
				<td>Phone number</td>
				<td><input type="text" name="phno"
					placeholder="09123456789" required="required"
					value="<%=keeper.getPhno()%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email"
					placeholder="aungzaw@gmail.com" required="required"
					value="<%=keeper.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea name="address" placeholder="Yangon"
						required="required"><%=keeper.getAddress()%>"</textarea></td>
			</tr>
			<tr>
				<td><a style="text-transform: uppercase;"
					href="<%=request.getContextPath()%>/View/ViewKeeperInfo.jsp">
						View Keeper Info</a></td>
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