<%-- 
    Document   : menu
    Created on : 2 de nov. de 2022, 14:41:35
    Author     : Augusto
--%>

<%@page import="Eventos.UserCounter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <%
            Object a = session.getAttribute("logado");
            if (a.equals(true)) {
        %>
        <a href='Control?code=welcome'>Welcome</a>
        <br/>
        <a href='Control?code=hora'>Hora</a>
        <br/>
        <a href='google.html'>Erro html</a>
        <br/>
        <a href='ErroJava'>Erro Java</a>
        <br/>
        <a href='Control?code=sair'>Sair</a>
        <br/>
        <p>Número de usuário logados: <%=UserCounter.getCount()%></p>
        <br/>
        <%
        } else {
        %>
        <h1>Erro</h1>
        <%
            }
        %>
    </body>
</html>
