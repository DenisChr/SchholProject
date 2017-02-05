 

<%@page import="Servlets.BookServlet"%>
<%@page import="Entity.Book"%>
<%@page import="java.util.List"%>
<ul class="itemWrapper">

<%  // indien dat de sessie bvb verlopen is haal ik de films terug op
    // als ze nog in session zitten gebruik ik ze gwn terug
    Object objBooks = request.getSession().getAttribute("books");
    if (objBooks == null) {
        RequestDispatcher rd = request.getRequestDispatcher("Servlets/BookServlet");
        rd.forward(request, response);
    } else { 
        List<Book> lst = (List<Book>) objBooks; 
        for (Book b : lst) { %>
            <li class="items"> 
                <% 
                    
                   b.getTitel();
                %>
            </li>
        <% } 
    } %>

    </ul>