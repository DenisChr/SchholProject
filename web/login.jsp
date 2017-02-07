<%-- 
    Document   : login
    Created on : Jan 24, 2017, 9:49:19 PM
    Author     : DenisRemote
--%>

<%@page  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>

    <body background="images/main.jpg">     
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <h2 align="center"> <span class="cyan-text text-lighten-2  "> Log hier in met uw email en wachtwoord </span></h2>

        <form method="POST" class="col s12" action="/SchoolProjectWeb/LoginServlet">    
            <div class="collection">
                <div class="container">
                    <div class="row">
                        <div class="input-field col s6">  
                            <span class="cyan-text text-accent-1  ">
                                <span class="cyan-text lighten-2  "><strong>Uw email-adress:</strong></span> 
                                <input  name="email" type="text"  id="email"  class="validate">
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <span class="cyan-text text-accent-1  ">
                                <span class="cyan-text lighten-2  "><strong>Uw wachtwoord:</strong></span> 
                                <input  name="password" id="password" type="password" class="validate"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <button class="btn waves-effect waves-light" type="submit" value = "login" name="action">Login</button>                          
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <a href="register.jsp"><span class="cyan-text text-lighten-1 ">Als u nog niet geregistreerd bent klik dan hier</a>.</span>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>