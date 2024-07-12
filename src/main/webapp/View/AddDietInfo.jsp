<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-color: #932092;
}
	</style>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
	<style type="text/css">
	body{
		background-color: #932092;
	}

</style>
<%@include file="../Header.jsp" %>
	<script type="text/javascript">
	function validateform() {
	var type = document.myform.diet_type.value;
	var feeds_per_day = document.myform.fpd.value;
	
	if(type == null || type == ""){
		alert ("type can't be blank");
		return false;
	}else if(feeds_per_day == null || feeds_per_day == ""){
		alert ("feeds per day can't be blank");
		return false;
	}else if (isNaN(feeds_per_day)){
		alert ("feeds per day must be Integer");
		return false;
	}
	}
	</script>
</head>
<body>
	<%@ include file="/Header.jsp" %>
	<form method="post"
		action="<%=request.getContextPath()%>/Action/DietInsertAction.jsp">
        <div style="margin-top: -22em">
		<table>
			<tr>
				<th colspan="2">Add Diet Information</th>
			</tr>
			<tr>
			 	<td>Type</td>
			 	<td><select name="diet_type">
			 			<option Selected>Omnivore</option>
			 			<option>Herbivore</option>
			 			<option>Carnivore</option>
			 		</select></td>
			 	</tr>
			 	<tr>
					<td></td>
					<td style="color: red; font-size: 18px;">*Omnivore will be selected as default</td>
				</tr>
			 	<tr>
			 		<td>Feed per day</td>
			 		<td><input type="text" name="fpd" required="required"></td>
			 	</tr>
			 	
			 	<tr>
			 		<td></td>
			 		<td><input type="submit" value="ADD" class="formButton">
			 			<input type="reset" value="CLEAR" class="formButton"></td>
			 	</tr>
		</table> 
		</div>
	</form>
</body>
</html>