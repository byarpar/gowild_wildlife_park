<%@page import="Validation.MyValidations"%>
<%@page import="Model.InsertQueries"%>
<%@page import="Entity.Keeper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Insert Keeper Action</h1>
<% 
String name=request.getParameter("keepers_name");
String dob = request.getParameter("date_of_birth");
String phno = request.getParameter("phno");
String email = request.getParameter("email");
String address = request.getParameter("address");
String keepers_rank = request.getParameter("keepers_rank");
if (name == null || name == "") {
	out.println("Name can't be blank.\nPlease Go Back and Fill the Name.");
} else if (dob == null || dob == "") {
	out.println("DOB can't be blank.\nPlease Go Back and Fill the DOB.");
} else if (!MyValidations.validateJavaDate(dob)) {
	out.println("Invalid date Format (yyyy-MM-dd).");
} else if (keepers_rank == null || keepers_rank == "") {
	out.println("Rank can't be blank.\nPlease Go Back and Fill the Rank.");
} else if (!MyValidations.checkKeeperRank(keepers_rank)) {
	keepers_rank = "Senior";
} else if (phno == null || phno == "") {
	out.println("Phno can't be blank.\nPlease Go Back and Fill the Phno.");
} else if (phno.length() < 6 || phno.length() > 14) {
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

out.print(name);
out.print(dob);
out.print(phno);
out.print(email);
out.print(address);
out.print(keepers_rank);

Keeper keeper = new Keeper();

keeper.setAddress(address);
keeper.setDate_of_birth(dob);
keeper.setEmail(email);
keeper.setKeepers_rank(keepers_rank);
keeper.setPhno(phno);
keeper.setKeepers_name(name);

int rows = 0;
rows = InsertQueries.insertKeeperInfo(keeper);
System.out.println(rows);

if(rows!=0){
	response.sendRedirect(request.getContextPath()+"/View/Thanks.jsp");
}
else{
	out.print("Insert Fail....");
}
}

%>

</body>
</html>