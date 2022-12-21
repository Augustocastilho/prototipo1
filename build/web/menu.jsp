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
        <meta http-equiv="refresh" content="5">
        <title>Menu</title>
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
            <%
                Object a = session.getAttribute("logado");
                if (a != null && a.equals(true)) {
            %>
            <a href='Control?code=welcome'>Welcome</a>
            <br/>
            <a href='Control?code=hora'>Hora</a>
            <br/>
            <a href='Control?code=usuarios'>Usuários no Sistema</a>
            <br/>
            <a href='google.html'>Erro html</a>
            <br/>
            <a href='ErroJava'>Erro Java</a>
            <br/>
            <a href='Control?code=sair'>Sair</a>
            <br/>
            <p class="mt-3">Número de usuário logados: <%=UserCounter.getCount()%></p>
            <br/>
            <%
            } else {
            %>
            <h1>Erro</h1>
            <%
                }
            %>
        </div>
        <div class="w-50">
            <jsp:include page = "adRotator.jsp" flush = "true" />
        </div>
    </body>
</html>
