<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<%@include file="../Header.jsp" %>
<style type="text/css">
	body{
		background-color: #2196F3;
	}


</style>

	<script type="text/javascript"> 
	function validateform() {
		var name = document.myform.keeper_name.value;
		var dob = document.myform.keeper_dob.value;
		var rank = document.myform.keeper_rank.value;
		var phno = document.myform.keeper_phno.value;
		var emial = document.myform.keeper_email.value;
		var address = document.myform.keeper_address.value;	

		
		var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
		
		if (name == null || name == "") {
			alert("Name can't be blank");
			return false;
		} else if(dob == "" || dob == null){
			alert("Date of Birth can't be blank");
			return false;
		}else if(rank=="" || rank == null){
			alert("Rank must be selected one of the list");
			return false;
		}else if (phno.length < 6 && phno.length>14) {
			alert("Phone number length must between 6 and 14");
			return false;
		}else if(isNaN(phno)){
			alert("Phone number must be integer")
			return false;			
		} else if(email == null || email==""){
			alert("email can't be blank")
			return false;
		}else if(!email.value.match(mailformat)){
			alert("Invalid Email Format");
			return false;
		}else if(address == "" || address == null){
			alert("Address can't be blank");
			return false;
		}else if(address.length>100){
			alert ("Address input length can't more than 100 characters .");
			return false;
		}
	}
</script>
</head>
<body>

	<form name = "myform" method="post" 
		action="<%=request.getContextPath()%>/Action/KeeperInsertAction.jsp"
		onsubmit="return validationform()">
		<div style="margin-top: -12em">
		<table>
			<tr>
				<th colspan="2">Add Keeper Information
					
				</th>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="keepers_name" required="required"></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><input type="date" name="date_of_birth" required="required"></td>
			</tr>
			<tr>
				<td>Rank</td>
				<td><input type="radio" name="keepers_rank" value="Senior" checked="checked">Senior
				<input type="radio" name="keepers_rank" value="Junior" checked="checked">Junior
				<input type="radio" name="keepers_rank" value="Standard" checked="checked">Standard
				</td>
			</tr>
			<tr>
				<td>Phno</td>
				<td><input type="text" name="phno" required="required"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" required="required"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea name="address" required="required"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Add" class="formButton">
					<input type="reset" value="CLEAR" class="formButton">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>