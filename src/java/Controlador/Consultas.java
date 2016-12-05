/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;



import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;



/**
 *
 * @author DOCHAVEZ
 */
public class Consultas extends Conexion {
    PreparedStatement pst = null;
    public boolean validation(String pat_name, String pat_lastname, String pat_address, String pat_city, String pat_state, String pat_zipcode, String pat_phonenumber, String pat_username, String pat_password){
        
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
    
    public int getId(){
        return 0;
    }
    public boolean makeAppoint(String pat_name,String pat_date,String pat_time){
        
        
        try{
            String sql= "insert into pat_appoint (pat_username,pat_date,pat_time) values(?,?,?);";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1,pat_name);
            pst.setString(2,pat_date);
            pst.setString(3,pat_time);
            if(pst.executeUpdate()== 1){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
        
    }
    public boolean changeAppoint(String pat_name,String pat_date,String pat_time){
        try{
            String sql="update pat_appoint set pat_date=?, pat_time=? where pat_username=?";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, pat_date);
            pst.setString(2, pat_time);
            pst.setString(3, pat_name);
            if(pst.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
            
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public boolean deleteAppoint(String pat_name){
        try{
            String sql="delete from pat_appoint where pat_username = ?";
             pst = getConexion().prepareStatement(sql);
             pst.setString(1, pat_name);
             if(pst.executeUpdate()==1){
                return true;
            }else{
                return false;
            }
            
        }catch(Exception e){
            return false;
        }
    }
    public String viewAppoint(String user){
        try{
            
            String sql = "select * from pat_appoint where pat_username=?";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1,user);
            ResultSet rs = pst.executeQuery();
            String date=null;
            String time = null;
            while(rs.next())
            {
                date=rs.getString("pat_date");
                time=rs.getString("pat_time");   
            }
            return date+" "+time; 
            
        }catch(Exception e){
            e.printStackTrace();
            return "empty";
        }
        
    }
   public static void main(String[] args) {
        Consultas co = new Consultas();
       //System.out.println(co.registrar("alicia", "chavez", "grove", "managua", "managua","11111", "34343", "paloma","111"));
    }

    public boolean autenticacion(String user, String pass) {
        return true; //To change body of generated methods, choose Tools | Templates.
    }
    
    public  boolean checkDate(String datefield) { 
    String dateFormat = "yyyy-MM-dd"; 
    int dateFormatLength = dateFormat.length(); 
    try { 
      if (datefield.length() != dateFormatLength) 
        throw new Exception(); 
      else { 
        SimpleDateFormat format = new SimpleDateFormat(dateFormat); 
        //format.setLenient(false); 
        Date theDate= new Date(); 
        theDate = format.parse(datefield); 
        return true; 
      } 
    } 
    catch(Exception e) { 
        e.printStackTrace();
        return false; 
    } 
  }
    public boolean checkTime(String timefield){
        try{
            String after = new String("09:00");
            String before = new String("16:00");
            DateFormat sdf = new SimpleDateFormat("hh:mm");
            Date time = sdf.parse(timefield);
            Date aftertime= sdf.parse(after);
            Date beforetime = sdf.parse(before);
            if(time.after(aftertime) && time.before(beforetime)){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}


