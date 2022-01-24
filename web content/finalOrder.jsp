<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./base.jsp" %>




<title>show order</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
    <style><%@include file="./css/userregisterform.css"%></style>

</head>

<body>


<% Integer b = (Integer)request.getAttribute("breakfast");
   Integer l = (Integer)request.getAttribute("lunch");
   Integer d = (Integer)request.getAttribute("dinner");
   String student_id = (String)request.getAttribute("student_id");

%>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-10">
                    <div class="card">
                        <div class="card-header">Hall Meal Management System</div>
                        
					    <div class="py-20 h-screen bg-gray-300 px-8">
						    <div class="max-w-md mx-auto rounded-lg overflow-hidden md:max-w-xl">
						        <div class="md:flex">
						            <div class="w-full p-3">
						                <div class="relative"> 
						                <form action="searchForMeal" method="POST">
						                 <input type="text" class="bg-white h-14 w-full px-12 rounded-lg focus:outline-none hover:cursor-pointer" 
						                 placeholder="Search by student" name="studentID" id="studentID"> <span class="absolute top-4 right-5 border-l pl-4">
						                 
								         <button type="submit" class="btn btn-primary">Search</button></span>
								         </form>
								         </div>
						            </div>
						        </div>
						    </div>
						</div>
						                        
                        <div class="card-body">
                         
                         <table class="table table-striped">
							  <thead>
							    <tr>
							     
							      <th scope="col">StudentID</th>
							      <th scope="col">BreakFast</th>
							      <th scope="col">Lunch</th>
							      <th scope="col">Dinner</th>
							      <th scope="col">Date</th>
							      
							    </tr>
							  </thead>
							  
							  <tbody>
								  
								    <c:forEach items="${orders}" var = "o">
								    <tr>
								     
								      <td>${o.studentID }</td>
								      <td>${o.numBreakfast }</td>
								      <td>${o.numLunch }</td>
								      <td>${o.numDinner }</td>
								      <td>${o.date }</td>
								     </tr>
								      </c:forEach> 
								      			        
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