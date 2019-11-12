<%-- 
    Document   : error
    Created on : 15-may-2016, 19:44:20
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
       <center> <h1>A OCURRIDO UN ERROR GRAVE!</h1>
        
        <%
        
        String error = (String)request.getSession().getAttribute("myError");
        
        out.println(error);

   
        %>
        <br><a href="registrar.jsp">Regresar</a>
       </center>>  </body>
</html>
