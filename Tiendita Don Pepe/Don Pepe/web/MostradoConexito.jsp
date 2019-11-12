<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : MostradoConexito
    Created on : 16-may-2016, 2:45:30
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
        
   <center> <h1>Aqui todos los usuarios!</h1>
    
    <table border="0">
        
        <tr>
            
            <td><font color="blue"><b>Nombre</b></font> </td>
            <td><font color="blue"><b>Apellido</b></font> </td>
            <td><font color="blue"><b>DNI</b></font> </td>
            <td><font color="blue"><b>Edad</b></font> </td>
            <td><font color="blue"><b>Borrar</b></font> </td>
            <td><font color="blue"><b>Modificar</b></font> </td>
            
         </tr>
    <c:forEach var="a" items="${sessionScope.Usuarios}">
        <tr>
        <td>${a.getNombre()}</td>
        <td>${a.getApellido()}</td>
        <td>${a.getDni()}</td>
        <td>${a.getEdad()}</td>
        <td><a href="eliminar.do?txteliminar=${a.dni}"><center><img src="eliminar.png"/> </center></a></td>
        <td><a href="validar.do?txtmod=${a.dni}"><center><img src="modificar.png"/> </center></a></td>
        
        </tr>   
    </c:forEach>
    </table>    
        
    <a href="index.jsp">Home</a>
   </center>>  </body>
</html>
