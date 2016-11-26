<%-- 
    Document   : listStudent
    Created on : Nov 19, 2016, 5:51:15 PM
    Author     : hany
--%>

<%@page import="com.schooll.models.StudentTest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Title</title>
        <link rel="stylesheet" href="resources/css/style3.css">

        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="resources/css/materialize.min.css" media="screen,projection"/>

        <script src="resources/js/jquery-1.11.2.js"></script>

        <script src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/materialize.min.js"></script>
        <script src="resources/js/script3.js"></script>


    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <% StudentTest s =(StudentTest) request.getAttribute("student");%>
        <div style="text-align: center"><h1>User Setting</h1></div>
        <div class="row">
            <div class="col-lg-offset-3 col-lg-6">
                <table class='table table-striped table-bordered '>
                    <thead>
                        <tr>
                            <th> ID</th>
                            <th> Student First Name</th>
                            <th> Student Last Name </th>
                            <th> Majority </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td><%= s.getId()%></td>
                        <td><%= s.getFirstName()%></td>
                        <td><%= s.getLastName()%></td>
                        <td><%= s.getEmail()%></td></tr>


                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>