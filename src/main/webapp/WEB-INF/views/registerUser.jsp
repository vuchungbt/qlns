<%-- 
    Document   : addUser
    Created on : Jan 25, 2015, 9:04:26 PM
    Author     : Ajay
--%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>


<form:form commandName="user" cssClass="form-horizontal" action="registerUser" method="post">
    <form:errors path="*" cssClass="errorblock" element="div"/>

    <c:if test="${param.success eq true}" >
        <div class="alert alert-success">Registration Successful</div>
    </c:if>

    <div class="form-group">
        <label class="col-sm-2 control-label">Username</label>
        <div class="col-sm-10">
            <form:input path="username" cssClass="form-control" type="text" name="username" />
            <form:errors path="username" cssClass="error" />
        </div>
    </div>


    <div class="form-group">
        <label class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <form:input path="password" cssClass="form-control" type="password" name="password" />
            <form:errors path="password" cssClass="error" />
        </div>
    </div>


    <div class="form-group">
        <label class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <form:input path="email" cssClass="form-control" type="text" name="email" />
            <form:errors path="email" cssClass="error" />
        </div>
    </div>

    <div class="form-group">

        <div class="col-sm-2">
            <input type="submit" value="Save" class="btn btn-large btn-primary" />
        </div>
    </div>




</form:form>


