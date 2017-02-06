<%@page import="java.util.List"%>
<%@page import="Entity.Book"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <% 
            Object tempLst = request.getSession().getAttribute("books");
            /**
             *  als de session verlopen is redirect ik naar de servlet om terug de data op te halen
             *  anders blijf ik op deze pagina met parameter id "spelen" zolang mogelijk
             */
            if (tempLst == null) {
                response.sendRedirect("SchoolProjectWeb/BookServlet.java");
            } else {
                List<Book> lst = (List<Book>) tempLst;
        %> 
        <ul class="itemWrapper padbot0">
        <%
            for (Book book : lst) { %>
            <li class="items trailerItems">   
                <a  class="itemText"><%= book.getTitel()%></a>
            </li>
            <%  }    
        } %>
        </ul>
        
        
    </body>
</html>