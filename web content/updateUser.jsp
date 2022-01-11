<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateuser</title>


<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./base.jsp" %>

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
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Hall Meal Management System</div>
                        <div class="card-body">
                            <form name="my-form"  action="${pageContext.request.contextPath }/userregister" method="POST">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Student Id</label>
                                    <div class="col-md-6">
                                        <input type="text" id="studentID" class="form-control" name="studentID" value="${user.studentID }">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">Student Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="name" class="form-control" name="name" value="${user.name }">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Email address</label>
                                    <div class="col-md-6">
                                        <input type="text" id="userEmail" class="form-control" name="userEmail" value="${user.userEmail }">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">Department</label>
                                    <div class="col-md-6">
                                        <input type="text" id="dept" class="form-control" name="dept" value="${user.dept }">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Phone number</label>
                                    <div class="col-md-6">
                                        <input type="text" id="contactNo" class="form-control" name="contactNo" value="${user.contactNo }">
                                    </div>
                                </div>


                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" align="center" class="btn btn-primary">
                                        Update
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