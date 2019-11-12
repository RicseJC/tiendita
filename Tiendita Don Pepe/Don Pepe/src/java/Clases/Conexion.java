
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
  
    private Connection cnn;
    private Statement state;
    private ResultSet res;
    
    
    //________________________________________________
    
    public Conexion(){
        
           try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BDusuarios","root","12345678");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //___________________________________________
    
        public int Verificador(Usuario u){
        
     int caca = 0;  
     
     try { 
     String query="select * from usuarios where dni='"+u.getDni()+"'";
     state = cnn.createStatement();
     res = state.executeQuery(query);
     
     if (res.next()) {
            
            return 1;
        }
        else{
            return 0;
        }
     
        } 
     catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
     
        
     return 0;
    }
  
    //___________________________________________
    public void desconectar(){
        
        try {
            cnn.close();    
            cnn =  null;
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //______________________________________
    
       public int insertar(Usuario u){
        int saber = 0;
        
        try {
            
            String query = "insert into usuarios (nombre, apellido, dni, edad)" + "values ('"+u.getNombre()+"','"+u.getApellido()+"', "+u.getDni()+", '"+u.getEdad()+"')";
            state = cnn.createStatement();
            saber = state.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return saber;
    }
       
       //_______________________________________
       
    public int eliminar(Usuario u){
        int saber = 0;
        
        try {
            
            String query = "delete  from usuarios where dni = '"+u.getDni()+"'";
            state = cnn.createStatement();
            saber = state.executeUpdate(query);
            
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return saber;
    }

    //_____________________________________
      public int Modificar(Usuario u){
          int saber = 0;
  
        try {
            String query =  "update usuarios set nombre='"+u.getNombre()+"', apellido= '"+u.getApellido()+"', edad="+u.getEdad()+" where dni='"+u.getDni()+"'";
            state = cnn.createStatement();
             saber = state.executeUpdate(query);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
         
        return saber;
    }

      //________________________________________    
    
    public ArrayList<Usuario> Mostrar(){
        
     ArrayList<Usuario> listaU = new ArrayList<>();
     
        try {
            String query = "select * from usuarios";
            state = cnn.createStatement();
            res = state.executeQuery(query);
            
         
    
            while (res.next()) {                
                
                listaU.add(new Usuario(res.getString("nombre"), res.getString("apellido"), res.getString("dni"), res.getInt("edad")));
                
             
            }
            
            return listaU;
                    
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         return listaU;
    }
    
}
