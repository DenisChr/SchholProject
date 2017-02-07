<%-- 
    Document   : list
    Created on : Jan 24, 2017, 9:49:19 PM
    Author     : DenisRemote
--%>

<%@page import="java.util.List"%>
<%@page import="Entity.Book"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List boeken</title>
    </head>
    <body background="images/main.jpg">      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <h2 align="center"> <span class="cyan-text text-lighten-2  "> Welkom <%=session.getAttribute("user")%> </span></h2>
        <h4 align="center"> <span class="cyan-text text-lighten-2 "> Kies hieronder het boek dat u wil verkopen </span></h4>
        <div class="container">
        <div class="collection ">
            <div class="col s8">
            <%
                Object tempLst = request.getSession().getAttribute("books");
                if (tempLst == null) {
                    response.sendRedirect("BookServlet");
                } else {
                    List<Book> lst = (List<Book>) tempLst;
            %> 

            <%
            for (Book book : lst) {%>
            <a href="#!" class="collection-item ">
                <%= book.getTitel() + "  door:  " + book.getAuteur() + " / " + book.getVak() %></a>
            <%  }
                }%>
        </div>
        </div>
        </div>
    </body>
</html>