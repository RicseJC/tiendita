<%-- 
    Document   : modificando
    Created on : 16-may-2016, 5:22:25
    Author     : Null
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Usuario"%>
<%@page import="Clases.Conexion"%>
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
       

        
             <center>  <h1>Modificando usuario:></h1>
     
        <form action="modificar.do" method="POST">
            
           <h3><table border="1">
                <thead>
                    <tr>
                        <th>Nuevo nombre</th>
                        <th><input type="text" name="txtnombre" value="" /></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nuevo apellido</td>
                        <td> <input type="text" name="txtapellido" value="" /></td>
                    </tr>
              
                    <tr>
                        <td>Nueva edad</td>
                        <td><input type="text" name="intedad" value="" /></td>
                    </tr>
                  
                </tbody>
               </table></h3>
 
            <input type="submit" value="Hacer cambios" name="btnRegistrar" />  <a href="index.jsp">Home</a> </center>
        </form>
        
        
    </body>
</html>
