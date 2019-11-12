<%-- 
    Document   : registrar
    Created on : 13-may-2016, 17:56:59
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
        
        
        <center>  <h1>Registrando Nuevo usuario</h1>
        
        <form action="registrar.do" method="POST">
            
           <h3><table border="1">
                <thead>
                    <tr>
                        <th> Nombre</th>
                        <th><input type="text" name="txtnombre" value="" /></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>   Apellido</td>
                        <td> <input type="text" name="txtapellido" value="" /></td>
                    </tr>
                    <tr>
                        <td>DNI</td>
                        <td><input type="text" name="txtdni" value="" /></td>
                    </tr>
                    <tr>
                        <td>Edad</td>
                        <td><input type="text" name="intedad" value="" /></td>
                    </tr>
                  
                </tbody>
               </table></h3>
 
            <input type="submit" value="Registrar" name="btnRegistrar" />  <a href="index.jsp">Home</a> </center>
        </form>
    </body>
</html>
