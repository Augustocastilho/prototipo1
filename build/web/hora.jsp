<%-- 
    Document   : hora
    Created on : 2 de nov. de 2022, 14:52:57
    Author     : Augusto
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="1">
        <title>Hora</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div>
            <a href='Control?code=menu'>Voltar</a>
            <br/>
            <%
                String data = new SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
                String hora = new SimpleDateFormat("HH:mm:ss").format(new java.util.Date());
            %>
            <div class="dataHora">
                <h1><%= data%></h1>
                <p class="relogio"><%= hora%></p>
            </div>
        </div>
    </body>
</html>
