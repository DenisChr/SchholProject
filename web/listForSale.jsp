<%-- 
    Document   : listForSale
    Author     : DenisRemote
--%>

<%@page import="Entity.Book"%>
<%@page import="java.util.List"%>
<%@page import="Entity.AangebodenBoek"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List aangebodenBoeken</title>
    </head>
    <body background="images/main.jpg">      
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <h2 align="center"> <span class="cyan-text text-lighten-2  "> Welkom <%=session.getAttribute("user")%> </span></h2>
        <h4 align="center"> <span class="cyan-text text-lighten-2 "> Kies hieronder het boek dat u wil kopen </span></h4>
        <div class="container">
        <div class="collection ">
            <div class="col s10">
            <%
                Object tempLst = request.getSession().getAttribute("salebooks");           
                if (tempLst == null) {
                    response.sendRedirect("AangebodenBoekServlet");
                } else {
                    List<AangebodenBoek> lst = (List<AangebodenBoek>) tempLst;
            %> 
               <table class="highlight centered">
                    <thead>                       
                        <th data-field="Title"><span class="cyan-text text-lighten-2 ">Titel</span></th>
                        <th data-field="Author"><span class="cyan-text text-lighten-2 ">Auteur</span></th>
                        <th data-field="Course"><span class="cyan-text text-lighten-2 ">Conditie</span></th>
                        <th data-field="Program"><span class="cyan-text text-lighten-2 ">Prijs</span></th>
                    </thead>
                    <tbody>
            <%
            for (AangebodenBoek book : lst) {%>
            <tr> 
                            <td><span class="cyan-text text-darken-2"><%= book.getIdaangebodenboeken()   %></span></td>
                            <td><span class="cyan-text text-darken-2"><%= book.getIduser()%></span></td>
                            <td><span class="cyan-text text-darken-2"><%= book.getConditie() %></span></td>
                            <td><span class="cyan-text text-darken-2"><%= book.getAangebodenprijs() %></span></td>
                            <td>
                                <form action="sellBook.jsp" method="POST">
                                    <input class="btn waves-effect waves-light" type="submit" value="Koop">
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