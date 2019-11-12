<%-- 
    Document   : modificar
    Created on : 13-may-2016, 17:57:22
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
        
        
      <center>  <h1>¿A quien modificaremos?</h1>
        
           <form action="validar.do" method="POST">
            
            <input type="text" name="txtmod" value="" /> DNI a modificar </br></br>
            <input type="submit" value="modificar" name="btnmodificar" /> <a href="index.jsp">Home</a>
           
        </form>
        
      </center>>  </body>
</html>
