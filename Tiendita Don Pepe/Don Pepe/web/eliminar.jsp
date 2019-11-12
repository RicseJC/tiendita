<%-- 
    Document   : eliminar
    Created on : 13-may-2016, 17:58:03
    Author     : Null
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
             <style type="text/css">
        <!--
        
        body {
            background:url(Imagenes/fondo.png) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
        -->
         </style></head>
    <body>
        
        
      <center>  <h1>Bienvenido a la eliminación de usuario!</h1>
        
        <form action="eliminar.do" method="POST">
            
            <input type="text" name="txteliminar" value="" /> DNI a eliminar </br></br>
            <input type="submit" value="Eliminar" name="btneliminar" /> <a href="index.jsp">Home</a>
           
        </form>
      </center> </body>
</html>
