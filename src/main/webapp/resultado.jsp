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
        
        <style>
         body {
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #1f1c2c, #928DAB);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
        }

        .result-container {
            background-color: #2c2c2c;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
            max-width: 600px;
            width: 90%;
            text-align: center;
        }

        h1 {
            color: #ffffff;
            margin-bottom: 20px;
        }

        .welcome-message {
            font-size: 22px;
            font-weight: bold;
            color: #4efcb4;
            margin-bottom: 10px;
        }

        .succes-message {
            color: #ccc;
            margin-bottom: 25px;
        }

        .error-message {
            color: #ff6b6b;
            font-weight: bold;
            margin-bottom: 20px;
        }

        a {
            color: #4e8cff;
            text-decoration: none;
            font-weight: 600;
            display: inline-block;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }

        .menu {
            list-style: none;
            padding: 0;
            margin-top: 25px;
        }

        .menu li {
            margin: 10px 0;
        }

        .menu li a {
            background-color: #444;
            color: #fff;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background 0.3s ease;
            display: inline-block;
        }

        .menu li a:hover {
            background-color: #4e8cff;
        }
    </style>
    
    </head>
    <body>
        <div class="result-container">
        <h1>${mensaje}</h1>
        
        <%
        Boolean valido = (Boolean)request.getAttribute("esValido");
        if(valido !=null && valido) {
        session.setAttribute("usuarioAuntenticado", request.getAttribute("usuario"));
        %>
        <p class="welcome-message">Bienvenido, ${usuario}!</p>
        <p class="succes-message">Has iniciado sesion correctamente.</p>
        
        <ul class="menu"
            <li><a href="">Inicio</a></li>
            <li><a href="">perfil</a></li>
            <li><a href="">configuracion</a></li>
        </ul>
            
            
        <% } else { %>
        <p class="error-message">Usuario o contraseña incorrectos.</p>
        <a href="login.html">Volver a intentar</a>
        <% } %>
        
    </body>
</html>
