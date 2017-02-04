<%-- 
    Document   : register
    Created on : Feb 4, 2017, 6:01:36 PM
    Author     : DenisRemote
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <!--Import Google Icon Font-->

<title>Registratie pagina</title>
</head>
<body>

<h3>Vul alle velden in om u te registreren.</h3>
<form action="/SchoolProjectWeb/RegisterServlet" method="post">
<strong>Voornaam</strong>: <input type="text" name="firstName"><br>
<strong>Achternaam</strong>: <input type="text" name="lastName"><br>
<strong>GSM-nummer</strong>: <input type="text" name="phoneNumeber"><br>
<strong>Email</strong>: <input type="text" name="email"><br>
<strong>Wachtwoord</strong>: <input type="password" name="password"><br>
<input type="submit" value="Registreer">
</form>
<br>
 Als u al geregistreerd bent klik dan <a href="login.jsp">hier</a>.
</body>
</html>