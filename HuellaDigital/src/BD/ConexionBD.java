/**
 * @package: BD
 * @class: ConexionBD
 * @author: Ricardo Rosero, RR Soluciones IT SAS
 * @version: 1.0
 */
package BD;
/**
 * @librerias importadas
 * @author: Ricardo Rosero	
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class ConexionBD {
    /**
     *	@atributos
     *	@author: Ricardo Rosero	
     *  @access: public
     */
    public  String puerto="3306";
    public  String nomservidor="localhost";
    public  String db="huella";
    public  String user="root";
    public  String pass="1nn0v4c10N.";
    Connection conn=null;
    
    /**
     *	@function: conectar				                     
     *	@author: Ricardo Rosero	
     *  @description: esta funcion se encarga de conectar la base de datos con el servidor
     *  @access: public
     *  @return	         		                     
     */
    public Connection conectar(){
        try{
            String ruta="jdbc:mysql://";
            String servidor=nomservidor+":"+puerto+"/";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(ruta+servidor+db,user,pass);
            if (conn!=null){
                System.out.println("Conectado con la base de datos...");
            }
            else if (conn==null){
                throw new SQLException();
            }
        }
        catch(SQLException e){
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "Se produjo el siguiente error: "+e.getMessage());
        }
        catch (NullPointerException e){
            JOptionPane.showMessageDialog(null, "Se produjo el siguiente error: "+e.getMessage());
        }
        finally{
            return conn;
        }
    }
    
    /**
     *	@function: desconectar				                     
     *	@author: Ricardo Rosero	
     *  @description: esta funcion se encarga de realizar la desconexion de la base de datos con el servidor
     *  @access: public
     *  @return	         		                     
     */
    public void desconectar(){
        conn = null;
        System.out.println("Desconectado de la base de datos...");
    }
}