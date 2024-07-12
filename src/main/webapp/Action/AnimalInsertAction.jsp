<%@page import="Model.InsertQueries"%>
<%@page import="Entity.Animal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String animal_name = request.getParameter("animal_name");
	String animal_gender = request.getParameter("animal_gender");
	String date_of_arrival = request.getParameter("date_of_arrival");
	int keeper_id = Integer.parseInt(request.getParameter("keeper_id"));
	int diet_id = Integer.parseInt(request.getParameter("diet_id"));
	int enclosure_id = Integer.parseInt(request.getParameter("enclosure_id"));
	int species_id = Integer.parseInt(request.getParameter("species_id"));

	Animal animal = new Animal();
	animal.setDate_of_arrival(date_of_arrival);
	animal.setDiet_id(diet_id);
	animal.setEnclosure_id(enclosure_id);
	animal.setAnimal_gender(animal_gender);
	animal.setKeeper_id(keeper_id);
	animal.setAnimal_name(animal_name);
	animal.setSpecies_id(species_id);

	int row = InsertQueries.insertAnimalInfo(animal);
	

	if (row != 0) {
		response.sendRedirect(request.getContextPath() + "/View/Thanks.jsp");
		return;
	} else {
		response.sendRedirect(request.getContextPath() + "/View/Thanks.jsp");
	}
	%>

</body>
</html>