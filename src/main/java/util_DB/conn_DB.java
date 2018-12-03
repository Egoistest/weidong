package util_DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.EmptyStackException;

public class conn_DB {
    public static String drivername="com.mysql.cj.jdbc.Driver";
    public static String URL="jdbc:mysql://127.0.0.1:3306/shoppingbook?useSSL=false&useOldAliasMetadataBehavior=true";
//    useOldAliasMetadataBehavior=true
    public static String name="root";
    public static String password="123";
    static{
        try {
            Class.forName(drivername);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static Connection getConn() throws Exception{
        Connection conn = null;
        try{
            conn= DriverManager.getConnection(URL,name,password);
        }catch(EmptyStackException e){
            e.printStackTrace();
        }
        return conn;
    }
    public static void close(){

    }




}
