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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src=”https://code.jquery.com/jquery-3.4.1.slim.min.js”
                integrity=”sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n” 
        crossorigin=”anonymous”></script>
        <script src=”https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js” 
                integrity=”sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo” 
        crossorigin=”anonymous”></script>
        <script src=”https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js” 
                integrity=”sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6” 
        crossorigin=”anonymous”></script>
        <script src=”https://code.jquery.com/jquery.js”></script>
        <script src=”js/bootstrap.min.js”></script>
    </head>
    <body class="bg-dark text-light">
        <div class="m-5">
            <a href='Control?code=menu'>Voltar</a>
            <br/>
            <%
                String data = new SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
                String hora = new SimpleDateFormat("HH:mm:ss").format(new java.util.Date());
            %>
            <div>
                <p><%= data%></p>
                <h1 class="relogio"><%= hora%></h1>
            </div>
        </div>
    </body>
</html>
