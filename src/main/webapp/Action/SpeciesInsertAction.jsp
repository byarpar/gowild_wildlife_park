<%@page import="Validation.MyValidations"%>
<%@page import="Model.InsertQueries"%>
<%@page import="Entity.Species"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Species Action</title>
</head>
<body>

<%
String type = request.getParameter("species_type");
String lifestyle = request.getParameter("lifestyle");
String group = request.getParameter("species_group");
String conservation = request.getParameter("conservation_status");


if (type == null || type == "") {
	out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
} else if (group == null || group == "") {
	out.println("Group can't be blank.\nPlease Go Back and Fill the Group.");
}else if (!MyValidations.validSpeciesGroup(group)){
	group = "Mammal";
}else if (lifestyle == null || lifestyle == "") {
	out.println("Lifestyle can't be blank.\nPlease Go Back and Fill the Lifestyle.");
} else if (!MyValidations.validSpeciesLifeStyle(lifestyle)){
	lifestyle = "group";
}else if (conservation == null || conservation == "") {
	out.println("Conservation_status can't be blank.\nPlease Go Back and Fill the Conservation_status.");
} else if (!MyValidations.validConservationStatus(conservation)){
	conservation = "least concern";
}
Species species =new Species();

species.setConservation_status(conservation);
species.setSpecies_type(type);
species.setLifestyle(lifestyle);
species.setSpecies_group(group);

int row = InsertQueries.insertSpeciesinfo(species);

if(row!=0){
	response.sendRedirect(request.getContextPath()+"/View/Thanks.jsp");
}else {
	response.sendRedirect(request.getContextPath()+"/View/Fail.jsp");
}
%>

</body>
</html>