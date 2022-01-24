<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order</title>


<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./base.jsp" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.time.LocalDateTime" %>
<%@ page import = "java.time.format.DateTimeFormatter" %>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    
    <style><%@include file="./css/userregisterform.css"%></style>

</head>

<body>


   <% DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");  
   LocalDateTime now = LocalDateTime.now();  
   System.out.println(dtf.format(now));  
   String s = dtf.format(now);
   %>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Hall Meal Management System</div>
                        <div class="card-body">
                            <form name="my-form"  action="order" method="POST">
                            
                               
                               <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Date of today</label>
                                    <div class="col-md-6">
                                        <input type="text" id="date" class="form-control" name="date" value="<%=s%>">
                                    </div>
                                </div>
                               
                            
                               <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student ID</label>
                                    <div class="col-md-6">
                                        <input type="text" id="studentID" class="form-control" name="studentID">
                                    </div>
                                </div>
                            
                            
                            
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Number of Breakfast</label>
                                    <div class="col-md-6">
                                        <input type="number" id="numBreakfast" class="form-control" name="numBreakfast">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Number of Lunch</label>
                                    <div class="col-md-6">
                                        <input type="number" id="numLunch" class="form-control" name="numLunch">
                                    </div>
                                </div>
                               
                               <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Number of Dinner</label>
                                    <div class="col-md-6">
                                        <input type="number" id="numDinner" class="form-control" name="numDinner">
                                    </div>
                                </div>
                                


                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" align="center" class="btn btn-primary">
                                        Order
                                        </button>
                                    </div>
                                    
                                    </form>
                                    
                                </div>
                 
                        </div>
                    </div>
            </div>
        </div>

</main>

</body>
</html>