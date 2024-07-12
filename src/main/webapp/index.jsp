<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GoWildWildLifePark</title>
<style>}
body{
		background-image: url("https://mobilenews24x7.com/wp-content/uploads/2022/03/wildlife.jpg");
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
			
	
</style>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
</head>
<style>
#mySidenav a {
  position: absolute;
  left: -80px;
  transition: 0.3s;
  padding: 15px;
  width: 100px;
  text-decoration: none;
  font-size: 20px;
  color: black;
  border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
  left: 0;
}
#home {
  top: 20px;
  background-color: green;
}

#keeper {
  top: 80px;
  background-color: #2196F3;
}

#species {
  top: 140px;
  background-color: #f44336;
}

#enclosure {
  top: 200px;
  background-color: #41028d;
}
#diet{
	top: 260px;
	background-color: #932092;
}
#animal{
	top: 320px;
	background-color: #fefb00;
}

</style>
<body>
	<%@include file="../Header.jsp" %>
	
		<p style="font-size: 50px">Welcome to Go Wild WildLife Park
		<a href="https://codepen.io/grohit/"></a></p>
		
	</div>

<a href="<%=request.getContextPath() %>/View/ViewReport1.jsp">View Report1</a>
<a href="<%=request.getContextPath() %>/View/ViewReport2.jsp">View Report2</a>
</body>
</html>
