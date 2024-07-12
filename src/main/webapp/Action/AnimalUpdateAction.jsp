<%@page import="Entity.Animal"%>
<%@page import="Model.UpdateQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Animal Information</title>
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
String animal_name = request.getParameter("animal_name");
	String doa = request.getParameter("date_of_arrival");
	String animal_gender = request.getParameter("animal_gender");
	String kid = request.getParameter("keeper_id");
	String sid = request.getParameter("species_id");
	String did = request.getParameter("diet_id");
	String eid = request.getParameter("enclosure_id");
	
	String id = request.getParameter("id");
	
	
	
	out.print(animal_name+ " " + doa + " " + animal_gender + " " + kid + " " + sid + " " + did + " " + eid + " ");
	
	if (animal_name == null || animal_name == "") {
		out.println("Name can't be blank");
	} else if(animal_gender == "" || animal_gender == null){
		out.println("Gender can't be blank");
	}else if(doa == "" || doa == null){
		out.println("Date of arrival can't be blank.");		
	} else if(kid == "NO DATA FOUND" || kid == ""){
		out.println("Please add keeper information");
	}else if(sid == "NO DATA FOUND" || sid == null){
		out.println("Please add species information");
	}else if(eid == "NO DATA FOUND" || eid == null){
		out.println("Please add enclosure information");
	}else if(did == "NO DATA FOUND" || did == null){
		out.println("Please add diet information");
}else{
	
	Animal animal = new Animal();
	animal.setDate_of_arrival(doa);
	animal.setDiet_id(Integer.parseInt(did));
	animal.setEnclosure_id(Integer.parseInt(eid));
	animal.setAnimal_gender(animal_gender);
	animal.setKeeper_id(Integer.parseInt(kid));
	animal.setAnimal_name(animal_name);
	animal.setSpecies_id(Integer.parseInt(sid));
	animal.setAnimal_id(Integer.parseInt(id));
	
	int row = UpdateQueries.updateAnimalInfoByID(animal);
	
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