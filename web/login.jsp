<%-- 
    Document   : login
    Created on : Feb 4, 2017, 5:59:06 PM
    Author     : DenisRemote
--%>

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
        <meta charset="US-ASCII">
        <title>Login Page</title>
    </head>
    <body>
        <h3>Log hier in met uw email en wachtwoord</h3>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
          <div class="row">
            <form method="POST" class="col s12" action="/SchoolProjectWeb/LoginServlet">
             <div class="row">                              
                <div class="input-field col s6">    
                    <input  type="text"  id="email" name="email" class="validate">
                    <label class="active" for="email">Uw email-adress: </label>
                </div>
             </div>
             <div class="row">
                <div class="input-field col s6">
                 <input  name="password" id="password" type="password" class="validate">
                    <label class="active" for="password">Uw wachtwoord: </label>
                </div>
             </div>
                <div class="row">
        <div class="col s12">
                  <button class="btn waves-effect waves-light" type="submit" value = "login" name="action">Login
  </button>
                   </div>
      </div>
      <div class="row">
        <div class="col s12">
                  Als u nog niet geregistreerd bent klik dan <a href="Register.jsp">hier</a>.
       </div>
      </div>
    </form>
  </div>
    </body>
</html>