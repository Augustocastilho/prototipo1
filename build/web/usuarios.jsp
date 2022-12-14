<%-- 
    Document   : usuarios
    Created on : 13/12/2022, 22:38:15
    Author     : Augusto
--%>

<%@page import="Model.UsuarioJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="Model.Usuario"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <h1>Usuários cadastrados no sistema</h1>
            <%
                EntityManagerFactory enf = Persistence.createEntityManagerFactory("persistence");
                UsuarioJpaController ujc = new UsuarioJpaController(enf);
                List<Usuario> u = ujc.findUsuarioEntities();
                for (Usuario i : u) {
            %><p><%=i.getNome()%></p><%
                        }
                        enf.close();
            %>
            <a href='Control?code=menu'>Voltar</a>
        </div>
    </body>
</html>
