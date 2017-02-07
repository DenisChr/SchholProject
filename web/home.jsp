<%@page import="java.util.List"%>
<%@page import="Entity.Book"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/main.jpg">      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <h1 align="center"> <span class="teal-text text-darken-2  "> Welcome <%=session.getAttribute("user")%> </span></h1>
        <div class="container">
        <div class="collection">
            <%
                Object tempLst = request.getSession().getAttribute("books");
                if (tempLst == null) {
                    response.sendRedirect("BookServlet");
                } else {
                    List<Book> lst = (List<Book>) tempLst;
            %> 

            <%
            for (Book book : lst) {%>
            <a href="#!" class="collection-item">
                <%= book.getTitel() + "  door:  " + book.getAuteur() + " / " + book.getVak() %></a>
            <%  }
                }%>
        </div>
        </div>
    </body>
</html>