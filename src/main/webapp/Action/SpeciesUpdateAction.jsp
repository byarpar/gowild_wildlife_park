<%@page import="Validation.MyValidations"%>
<%@page import="Entity.Species"%>
<%@page import="Model.UpdateQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Species Information</title>
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
String species_type = request.getParameter("species_type");
	String lifestyle = request.getParameter("species_Ls");
	String species_group = request.getParameter("species_gp");
	String conservation = request.getParameter("species_conservation");
	
	String id = request.getParameter("id");
	
	out.print(species_type + " " + lifestyle + " " + species_group + " " + conservation + " ");
	
	if (species_type == null || species_type == "") {
		out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
	} else if (species_group == null || species_group == "") {
		out.println("Group can't be blank.\nPlease Go Back and Fill the Group.");
	}else if (!MyValidations.validSpeciesGroup(species_group)){
		species_group = "Mammal";
	}else if (lifestyle == null || lifestyle == "") {
		out.println("Lifestyle can't be blank.\nPlease Go Back and Fill the Lifestyle.");
	} else if (!MyValidations.validSpeciesLifeStyle(lifestyle)){
		lifestyle = "group";
	}else if (conservation == null || conservation == "") {
		out.println("Conservation_status can't be blank.\nPlease Go Back and Fill the Conservation_status.");
	} else if (!MyValidations.validConservationStatus(conservation)){
		conservation = "least concern";
	} else {

	
	Species species = new Species();
	
	species.setSpecies_id(Integer.parseInt(id));
	species.setSpecies_type(species_type);
	species.setLifestyle(lifestyle);
	species.setSpecies_group(species_group);
	species.setConservation_status(conservation);
	
	int row = UpdateQueries.updateSpeciesInfoByID(species);
	
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