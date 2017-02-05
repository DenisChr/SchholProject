<%-- 
    Document   : list
    Created on : Feb 4, 2017, 10:59:02 PM
    Author     : DenisRemote
--%>
<%@page import="Entity.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Servlets.BookServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beschikbare boeken</title>
    </head>
    <body> 
        <h1>List</h1>
    <ul class="itemWrapper">

<%
            Book book = (Book)session.getAttribute("books");
        %>
        
        <%= book.getTitel() %>

    </ul>
    </body>
</html>