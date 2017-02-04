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

<%  // indien dat de sessie bvb verlopen is haal ik de films terug op
    // als ze nog in session zitten gebruik ik ze gwn terug
    Object objBooks = request.getSession().getAttribute("books");
    if (objBooks == null) {
        RequestDispatcher rd = request.getRequestDispatcher("BookServlet");
        rd.forward(request, response);
    } else { 
        List<Book> lst = (List<Book>) objBooks; 
        for (Book b : lst) { %>
            <li class="items"> 
                <%= b.getPassword()%>
                
                <a href="UserServlet?Id=<%= b.getPassword()%>" class="itemText"><%= b.getUserName()%></a>
            </li>
        <% } 
    } %>

    </ul>
    </body>
</html>