
package Servelet;

import Clases.Conexion;
import Clases.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Modificar extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String nombre = request.getParameter("txtnombre");
        String apellido = request.getParameter("txtapellido");
        String edad = request.getParameter("intedad");
        String error = "";
        
        
        if (nombre.equals("") || nombre == null ||
                apellido. equals("") || apellido == null ||
                 edad.equals("") || edad == null) {
        
            
            error="Complete los campos vacios!";
            
            request.getSession().setAttribute("myError", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        
        else{
            
            int edadParseada= 0;
            try {
                
               edadParseada= Integer.parseInt(edad);
                
            } catch (NumberFormatException e) {
                
            error="Ingrese un numero valido!";
            request.getSession().setAttribute("myError", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            }
          
           
           String dni = (String)request.getSession().getAttribute("mdni");
           Usuario u = new Usuario(nombre, apellido, edadParseada);
           u.setDni(dni);
     
          Conexion cnn = new Conexion();
         
          cnn.Modificar(u);
          cnn.desconectar();   
          request.getRequestDispatcher("ModificadoConexito.jsp").forward(request, response);
       
          
            }
     
 
        
        
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
