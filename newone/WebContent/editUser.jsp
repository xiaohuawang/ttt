<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="jquery.rating.css">
<script src="jquery.rating.js"></script>
<title>Welcome to Stanford University!</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<!-- create a new account -->
	<div class="container">
		<div class="container">
			<div class="jumbotron other-color">
				<center>
					<h1>Edit a user</h1>
				</center>
			</div>
		</div>
		<form class="form-horizontal" role="myForm" action="SaveUserServlet" onsubmit="return validateForm()" method="post">
			<div class="form-group">
				<label class="control-label col-sm-5">User Name :</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="name"
						name="name" value = "${hcuser.name}">
						
					<input type="hidden" class="form-control" id="id"
						name="id" value = "${hcuser.userid}">
				</div>
			</div>
			
			
		
			
			
			<div class="form-group">
				<label class="control-label col-sm-5">entrydate :</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="entrydate"
						name="entrydate" value = "${hcuser.entrydate}">
						
					
				</div>
			</div>
			
			
		
			
			<div class="form-group">
				<label class="control-label col-sm-5">officenum :</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="officenum"
						name="officenum" value = "${hcuser.officenum}">
						
					
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-5" for="assignment">Type: </label>
				<div class="col-sm-5">
				<select name="type" class="form-control">
					<c:forEach var="c" items="${lists}">
						<c:choose>
							<c:when test="${hcuser.type eq c.id}">
						  		<option value="${c.id}" selected>${c.type}</option>
							</c:when>
							<c:otherwise>
						  		<option value="${c.id}">${c.type}</option>
							</c:otherwise>
						</c:choose>
                	</c:forEach>
       	 		</select>
       	 		</div>
			</div>
			
			
			<div class="form-group">
				<label class="control-label col-sm-5">password :</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="password"
						name="password" value = "${hcuser.password}">
						
					
				</div>
			</div>
			
		
		
		
           	<div class="form-group">
				<label class="control-label col-sm-5" for="assignment">Major: </label>
				<div class="col-sm-5">
				<select name="major" class="form-control">
					<c:forEach var="c" items="${majors}">
						<c:choose>
							<c:when test="${hcuser.hcmojor.id eq c.id}">
						  		<option value="${c.id}" selected>${c.name}</option>
							</c:when>
							<c:otherwise>
						  		<option value="${c.id}">${c.name}</option>
							</c:otherwise>
						</c:choose>
                	</c:forEach>
       	 		</select>
       	 		</div>
			</div>


		<div class="form-group">
				<label class="control-label col-sm-5" for="assignment">Department: </label>
				<div class="col-sm-5">
				<select name="dept" class="form-control">
					<c:forEach var="c" items="${depts}">
						<c:choose>
							<c:when test="${hcuser.hcdept.id eq c.id}">
						  		<option value="${c.id}" selected>${c.name}</option>
							</c:when>
							<c:otherwise>
						  		<option value="${c.id}">${c.name}</option>
							</c:otherwise>
						</c:choose>
                	</c:forEach>
       	 		</select>
       	 		</div>
			</div>




			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-5">
					<center>
						<button type="submit" class="btn btn-primary btn-lg btn-block"
							value="addstudent">Edit Department</button>
					</center>
				</div>
			</div>
		</form>
	</div>

<jsp:include page="footer.jsp"/>
</body>
</html>