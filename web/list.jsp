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
                <div class="col s10">
                    <%
                        Object tempLst = request.getSession().getAttribute("books");
                        if (tempLst == null) {
                            response.sendRedirect("BookServlet");
                        } else {
                            List<Book> lst = (List<Book>) tempLst;
                    %> 
                    <table class="highlight centered">
                        <thead>                       
                        <th data-field="Title"><span class="cyan-text text-lighten-2 ">Titel</span></th>
                        <th data-field="Author"><span class="cyan-text text-lighten-2 ">Auteur</span></th>
                        <th data-field="Course"><span class="cyan-text text-lighten-2 ">Vak</span></th>
                        <th data-field="Program"><span class="cyan-text text-lighten-2 ">Richting</span></th>
                        <th data-field="ISBN"><span class="cyan-text text-lighten-2 ">ISBN</span></th>  
                        </thead>
                        <tbody>
                            <%
                for (Book book : lst) {%>
                            <tr> 
                                <td><span class="cyan-text text-darken-2"><%= book.getTitel()%></span></td>
                                <td><span class="cyan-text text-darken-2"><%= book.getAuteur()%></span></td>
                                <td><span class="cyan-text text-darken-2"><%= book.getVak()%></span></td>
                                <td><span class="cyan-text text-darken-2"><%= book.getRichting()%></span></td>
                                <td><span class="cyan-text text-darken-2"><%= book.getIsbn()%></span></td>
                                <td>
                                    <form action="sellBook.jsp" method="POST">
                                        <input type="hidden" name="book_id" value=<%= book.getId()%>>
                                        <input type="hidden" name="bookName" value="<%= book.getTitel()%>">
                                        <input class="btn waves-effect waves-light" type="submit" value="Verkoop">
                                    </form>

                                    <%  }
                }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
