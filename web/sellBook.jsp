<%-- 
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
        <title>Sell Page</title>
    </head>

    <body background="images/main.jpg">     
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <h4 align="center"> <span class="cyan-text text-lighten-2  "> Bevestig de gegevens van het boek</span></h4>
        <%
            if (request.getSession().getAttribute("user") != null) {
                int book_id = Integer.parseInt(request.getParameter("book_id"));
                String bookName = request.getParameter("bookName");
        %>
        <form action="TransServlet" method="post">
            <div class="container">
                <div class="row">
                    <div class="col s12"><h5 align="center"><span class="cyan-text text-lighten-2  ">  Boek : <%= bookName%></span> </h5></div>                                                   
                    <div class="col s6"><span class="cyan-text text-lighten-2  ">Prijs: <input type="number" name="price"></span></div>
                    <div class="col s6"><span class="cyan-text text-lighten-2  ">Conditie: <select class="browser-default" name="condition">
                                <option value="used">Gebruikt</option>
                                <option value="new">Lichte schade</option>
                                <option value="new">Nieuw</option>
                        </span></select> 
                        <input type="hidden" name="book_id" value=<%= book_id%>></div>
                </div>
                <div class="row">
                    <button class="btn waves-effect waves-light" type="submit" value = "Verkoop" name="action">Verkoop</button>  
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <a href="list.jsp"><span class="cyan-text text-lighten-1 ">Klik hier om terug te gaan.</span></a>
                </div>
            </div>
    </form>
    <%
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        }
    %>
