<%-- 
    Author     : DenisRemote
--%>
<%@page import="java.util.List"%>
<%@page import="Entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <h1>Boekverkoop</h1>
    
    <p>
    <% 
        if (request.getSession().getAttribute("user") != null) {
            int book_id = Integer.parseInt(request.getParameter("book_id"));
            String bookName = request.getParameter("bookName");
            %>
            <form action="/Project-BoekenMarkt-Web/Sell" method="POST">
                Boek: <%= bookName %>
                <br><br>
                Prijs: <input type="number" name="price">
                <br><br>
                Conditie:   <select class="browser-default" name="condition">
                                <option value="used">Gebruikt</option>
                                <option value="new">Nieuw</option>
                            </select> 
                <br><br>
                <input type="hidden" name="book_id" value=<%= book_id %>>
                <input class="btn waves-effect waves-light" type="submit" value="Verkoop">
            </form>
            <%
        } else { 
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        } 
    %>
