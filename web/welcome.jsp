<%-- 
    Document   : welcome
    Created on : 2 de nov. de 2022, 16:00:18
    Author     : Augusto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Olá <%= session.getAttribute("nome")%>, seja bem vindo!
        </h1>
        <a href='Control'>Voltar</a>
    </body>
</html>
