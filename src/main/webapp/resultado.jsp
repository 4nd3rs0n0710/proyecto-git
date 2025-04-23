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
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('media/jake-the-dog_800.gif') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            backdrop-filter: brightness(0.6);
            color: #ffffff;
        }

        .result-container {
            background-color: rgba(0, 0, 0, 0.85);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.8);
            text-align: center;
            max-width: 600px;
            width: 90%;
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #f1d3b3;
        }

        .welcome-message {
            font-size: 20px;
            margin-bottom: 10px;
            color: #aee9af;
        }

        .succes-message {
            color: #66ffcc;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .error-message {
            color: #ff6666;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        a {
            color: #ffd699;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #fff8dc;
        }

        .menu {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .menu li {
            margin: 10px 0;
        }

        .menu a {
            color: #66ccff;
            font-size: 18px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .menu a:hover {
            color: #ffffff;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
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
            <li><a href="login.html">Inicio</a></li>
            <li><a href="">perfil</a></li>
            <li><a href="">configuracion</a></li>
        </ul>
            
            
        <% } else { %>
        <p class="error-message">Usuario o contraseña incorrectos.</p>
        <a href="login.html">Volver a intentar</a>
        <% } %>
        
    </body>
</html>
