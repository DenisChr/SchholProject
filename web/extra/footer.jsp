<%-- 
    Document   : footer
    Created on : Feb 8, 2017, 6:01:54 PM
    Author     : DenisRemote
--%>
        <br>
        <footer class="center-align page-footer green lighten-1">
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@page import="java.util.Date"%>
            <%@page import="java.util.Calendar"%>
            <% pageContext.setAttribute("currentYear", java.util.Calendar.getInstance().get(java.util.Calendar.YEAR)); %>
            <div class="footer-copyright">
                <div class="container">
            <c:out value="Denis Chramtsov - Project Java Boeken, Programmeren 4 - ${currentYear}" />
                </div>
            </div>
        </footer>
    </body>
</html>
