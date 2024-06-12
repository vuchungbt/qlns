<%-- 
    Document   : classic
    Created on : Jan 27, 2015, 4:51:43 PM
    Author     : Ajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


        <title><tiles:getAsString name="title" /></title>

    </head>
    <body>
        <tilesx:useAttribute name="current" />

        <div class="container">

            <!-- Static navbar -->
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href='<c:url value="/" />'>Login Application</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="${current == 'main' ? 'active' : ''}"><a href='<c:url value="/" />'>Home</a></li>
                            <!--<li class="active"><a href='<c:url value="/" />'>Home</a></li>-->
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                                <li class="${current == 'users' ? 'active' : ''}"><a href='<c:url value="/users" />'>Users</a></li>
                            </security:authorize>
                                <li class="${current == 'registerUser' ? 'active' : ''}"><a href='<c:url value="/registerUser" />'>Register</a></li>
                            <security:authorize access="! isAuthenticated()">
                                <li class="${current == 'login' ? 'active' : ''}"><a href='<c:url value="/login" />'>Login</a></li>
                            </security:authorize>
                            <security:authorize access="isAuthenticated()">
                                <li><a href='<c:url value="/logout" />'>Logout</a></li>
                            </security:authorize>

                            <li><a href="#">Contact</a></li>

                        </ul>
                    </div>
                </div>
            </nav>

            <tiles:insertAttribute name="body" />
            <center>
                <tiles:insertAttribute name="footer" />
            </center>
        </div>
    </body>
</html>
