<%-- 
    Document   : userList
    Created on : Jan 30, 2015, 11:32:04 PM
    Author     : Ajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="table table-bordered table-hover table-striped">
    <thead>
        <tr><th>Username</th></tr>
    </thead>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>
                <a href='<c:url value="/users/${user.id}" />'> ${user.username}</a>
            </td>

        </tr>
    </c:forEach>
</table>
