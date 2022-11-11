<%-- 
    Document   : index
    Created on : 2 de nov. de 2022, 15:46:38
    Author     : Augusto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div>
            <div class="titulo">
                <p>UNIVERSIDADE FEDERAL DE JUIZ DE FORA</p>
            </div>
            <%
                if (session.getAttribute("msg") != null) {
            %>
            <p><%= session.getAttribute("msg")%></p>
            <% }%>
            
            <p>Digite seu primeiro nome e sua senha, depois aperte o botao</p>
            <form method="post" action = "Control">
                <input type = "text" name = "nome">
                <input type="password" name="senha">
                <input type = "submit" value = "Enviar">
            </form>
        </div>
    </body>
</html>
