<%-- 
    Document   : index
    Created on : 2 de nov. de 2022, 15:46:38
    Author     : Augusto
--%>

<%@page import="Eventos.UserCounter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String attribute = (String) session.getAttribute("msg");
    session.invalidate();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
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
            <h2 class="row d-flex justify-content-center">UNIVERSIDADE FEDERAL DE JUIZ DE FORA</h2>
            <%
                if (attribute != null) {
            %>
            <div class="alert alert-danger" role="alert"><%= attribute%></div>
            <% }%>
            <form method="post" action = "Control" class="p-5">
                <p>Digite seu primeiro nome e sua senha, depois aperte o botao</p>
                <input type = "text" name = "nome" class="form-control my-1" aria-label="Large" aria-describedby="inputGroup-sizing-sm">
                <input type="password" name="senha" class="form-control my-1" aria-label="Large" aria-describedby="inputGroup-sizing-sm">
                <input type = "submit" value = "Enviar" class="btn btn-outline-warning">
            </form>
        </div>
    </body>
</html>
