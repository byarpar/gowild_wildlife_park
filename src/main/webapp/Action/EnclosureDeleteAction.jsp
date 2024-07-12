<%@page import="Model.DeleteQueries"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enclosure Delete</title>
</head>
<body>
Species ID : <%=request.getParameter("id") %>

<%

int id = Integer.parseInt( request.getParameter("id") );
//convert String to int
int row = DeleteQueries.deleteEnclosureInfoByID(id);

if(row != 0 ){
	response.sendRedirect(request.getContextPath()+"/View/Thanks.jsp");
	return;
}else{
	out.print("FAIL");
}

%>
</body>
</html>