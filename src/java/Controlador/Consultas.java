/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



/**
 *
 * @author DOCHAVEZ
 */
public class Consultas extends Conexion {
    
    public boolean validation(String pat_name, String pat_lastname, String pat_address, String pat_city, String pat_state, String pat_zipcode, String pat_phonenumber, String pat_username, String pat_password){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta;
            consulta = "select * from pat_register where pat_name =? and pat_lastname =? and pat_address =? and pat_city =? and pat_state =? and pat_zipcode =? and pat_phonenumber =? and pat_username =? and pat_password =?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, pat_name);
            pst.setString(2, pat_lastname);
            pst.setString(3, pat_address);
            pst.setString(4, pat_city);
            pst.setString(5, pat_state);
            pst.setString(6, pat_zipcode);
            pst.setString(7, pat_phonenumber);
            pst.setString(8, pat_username);
            pst.setString(9, pat_password);
            
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
            return true;
            }
        } catch (SQLException e){
            System.err.println("Error" +e);
        }finally{
            try{
            if(getConexion() !=null ) getConexion().close();
            if(pst != null) pst.close();
            if(rs != null) rs.close();
            }catch (SQLException e){
                System.err.println("Error" +e);
            }
        }
        return false;
    
    }
    public boolean registrar (String pat_name, String pat_lastname, String pat_address, String pat_city, String pat_state, String pat_zipcode, String pat_phonenumber, String pat_username, String pat_password){
        PreparedStatement pst = null;
        
        try{
      String consulta;
            consulta = "insert into pat_register (pat_name, pat_lastname, pat_address, pat_city, pat_state, pat_zipcode, pat_phonenumber, pat_username, pat_password)VALUES(?,?,?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, pat_name);
            pst.setString(2, pat_lastname);
            pst.setString(3, pat_address);
            pst.setString(4, pat_city);
            pst.setString(5, pat_state);
            pst.setString(6, pat_zipcode);   
            pst.setString(7, pat_phonenumber);
            pst.setString(8, pat_username);
            pst.setString(9, pat_password);//we are encripted the password to the database
            
            if(pst.executeUpdate()== 1){
                return true;
            }
            
        } catch(SQLException ex){
            System.err.println("Error" +ex);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if (pst != null) pst.close();
            } catch (SQLException e){
                System.err.println("Error" +e);
            }
            
        }
        return false;
    
    }
    
    
   public static void main(String[] args) {
        Consultas co = new Consultas();
       System.out.println(co.registrar("alicia", "chavez", "grove", "managua", "managua","11111", "34343", "paloma","111"));
           }

    public boolean autenticacion(String user, String pass) {
        return true; //To change body of generated methods, choose Tools | Templates.
    }

   
    

   
}


