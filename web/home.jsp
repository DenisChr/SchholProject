<%-- 
    Document   : home
    Created on : Jan 24, 2017, 9:49:19 PM
    Author     : DenisRemote
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>

    <body background="images/main.jpg">     
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <div class="container">
            <div class="row">
                <div class="col s12"><h2 align="center"> <span class="cyan-text text-lighten-2  "> Welkom <%=session.getAttribute("user")%> ! </span></h2></div>
                <div class="col s6"><h4><a href="list.jsp"><span class="cyan-text text-darken-2  ">Klik hier als u een tweedehandsboek wil </span><span class="cyan-text text-lighten-2  ">verkopen.</span></a></h4></div>
                <div class="col s6"><h4><a href="error.jsp"><span class="cyan-text text-darken-2  ">Klik hier als u een tweedehandsboek wil </span><span class="cyan-text text-lighten-2  ">kopen.</span></a></h4></div>             
            </div>   
        </div>
    </body>
</html>