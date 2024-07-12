<%@page import="Model.InsertQueries"%>
<%@page import="Entity.Enclosure"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Enclosure Action</title>
</head>
<body>

<%
String enclosure_type = request.getParameter("enclosure_type");
String location = request.getParameter("location");
out.print(location);

if (enclosure_type == null || enclosure_type == "") {
	out.println("Type can't be blank.\nPlease Go Back and Fill the Type.");
} else if (location == null || location == "") {
	out.println("Location can't be blank.\nPlease Go Back and Fill the Location.");
} else{
	


Enclosure enclosure = new Enclosure();
		

enclosure.setType(enclosure_type);
enclosure.setLocation(location);


int row = InsertQueries.insertEnclosureinfo(enclosure);

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