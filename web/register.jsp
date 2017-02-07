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
        <h2 align="center"> <span class="cyan-text text-lighten-2  "> Registratieformulier</span></h2>

        <form action="/SchoolProjectWeb/RegisterServlet" method="post">
            <div class="collection">
                <div class="container">
                    <div class="row">
                        <div class="input-field col s8">  
                            <span class="cyan-text text-lighten-2  ">
                                <strong>Voornaam</strong>: <input type="text" name="firstName"><br>                           
                                <strong>Achternaam</strong>: <input type="text" name="lastName"><br>
                                <strong>GSM-nummer</strong>: <input type="text" name="phoneNumber"><br>
                                <strong>Email</strong>: <input type="text" name="email"><br>
                                <strong>Wachtwoord</strong>: <input type="password" name="password"><br></span>
                            <button class="btn waves-effect waves-light" type="submit" value = "Registreer" name="action">Registreer</button>  
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <a href="login.jsp"><span class="cyan-text text-lighten-1 ">Als u al geregistreerd bent klik dan hier.</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>