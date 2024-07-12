<%@page import="com.mysql.cj.x.protobuf.MysqlxCrud.Update"%>
<%@page import="Validation.MyValidations"%>
<%@page import="Entity.Keeper"%>
<%@page import="Model.UpdateQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Keeper Information</title>
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
String keepers_name = request.getParameter("keepers_name");
	String date_of_birth = request.getParameter("date_of_birth");
	String keepers_rank = request.getParameter("keepers_rank");
	String phno = request.getParameter("phno");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	String keeper_id = request.getParameter("keeper_id");
	
	out.print(keepers_name+ " " + date_of_birth + " " + keepers_rank + " " + phno + " " + email + " " + address + " ");
	
	if (keepers_name == null || keepers_name == "") {
		out.println("Name can't be blank.\nPlease Go Back and Fill the Name.");
	} else if (date_of_birth == null || date_of_birth == "") {
		out.println("DOB can't be blank.\nPlease Go Back and Fill the DOB.");
	} else if (!MyValidations.validateJavaDate(date_of_birth)) {
		out.println("Invalid date Format (yyyy-MM-dd).");
	} else if (keepers_rank == null || keepers_rank == "") {
		out.println("Rank can't be blank.\nPlease Go Back and Fill the Rank.");
	} else if (!MyValidations.checkKeeperRank(keepers_rank)) {
		out.println("Invalid Rank. (Senior, Junior or Standard)");
	} else if (phno == null || phno == "") {
		out.println("Phno can't be blank.\nPlease Go Back and Fill the Phno.");
	} else if(phno.length()<6 || phno.length()>14){
		out.println("Phno length must between 7 and 13");
	} else if (!MyValidations.validNumber(phno)) {
		out.println("Phno must be number type only ...");
	} else if (email == null || email == "") {
		out.println("Email can't be blank.\nPlease Go Back and Fill the Email.");
	} else if (!MyValidations.validEmail(email)) {
		out.println("Invalid Email Format ...");
	} else if (address == null || address == "") {
		out.println("Address can't be blank.\nPlease Go Back and Fill the Address.");
	} else {
	
	Keeper keeper = new Keeper();
	keeper.setKeeper_id(Integer.parseInt(keeper_id));
	keeper.setKeepers_name(keepers_name);
	keeper.setDate_of_birth(date_of_birth);
	keeper.setKeepers_rank(keepers_rank);
	keeper.setPhno(phno);
	keeper.setEmail(email);
	keeper.setAddress(address);
	
	out.print(keepers_name+ " " +date_of_birth+ " " +keepers_rank+ " " + phno+" " +email+ " " +address);
	
	
	int row = UpdateQueries.updateKeeperInfoByID(keeper);
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