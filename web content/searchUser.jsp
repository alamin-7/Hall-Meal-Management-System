<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./base.jsp" %>




<title>show user</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
    <style><%@include file="./css/userregisterform.css"%></style>

</head>

<body>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-10">
                    <div class="card">
                        <div class="card-header">Hall Meal Management System</div>
						                        
                        <div class="card-body">
                         
                         <table class="table table-striped">
							  <thead>
							    <tr>
							      <th scope="col">Serial</th>
							      <th scope="col">StudentID</th>
							      <th scope="col">Name</th>
							      <th scope="col">Email</th>
							      <th scope="col">Dept</th>
							      <th scope="col">Phone Number</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  
							  <tbody>
								    <tr>
								      <th scope="row">${user.id }</th>
								      <td>${user.studentID }</td>
								      <td>${user.name }</td>
								      <td>${user.userEmail }</td>
								      <td>${user.dept }</td>
								      <td>${user.contactNo }</td>
								      
								     <td>
								     <a href="delete/${user.id }" ><i class="fas fa-trash text-danger" style="font-size: 30px"></i></a>
								      
								     <a href="update/${user.id }" ><i class="fas fa-pen-nib text-primary" style="font-size: 30px"></i></a>
								     </td>
								      
								   </tr>
								
							</tbody>
							  
						</table>   
                            
                                    
                         </div>
                 
                        </div>
                    </div>
            </div>
        </div>

</main>

</body>
</html>