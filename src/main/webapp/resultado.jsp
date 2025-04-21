<%-- 
    Document   : resultado
    Created on : 21/04/2025, 8:41:49 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${mensaje}</h1>
        
        <%
        Boolean valido = (Boolean)request.getAttribute("esValido");
        if(valido !=null && valido) {
        session.setAttribute("usuarioAuntenticado", request.getAttribute("usuario"));
        %>
        <p>Bienvenido, ${usuario}!</p>
        <p>Has iniciado sesion correctamente.</p>
        
        <ul class="menu"
            <li><a href="">Inicio</a></li>
            <li><a href=""></a>perfil</li>
            <li><a href="">configuracion</a></li>
        </ul>
            
            
        <% } else { %>
        <p>Usuario o contraseña incorrectos.</p>
        <a href="login.html">Volver a intentar</a>
        <% } %>
        
    </body>
</html>
