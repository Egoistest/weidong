package test;




import daoImpl_DB.BooktDaoImpl;
import org.junit.jupiter.api.Test;
import table_DB.Book;
import util_DB.conn_DB;
import util_DB.sqlTemp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class test01 {

    public static void main(String[] args) throws Exception {

    }
    @Test
    public void test2() throws Exception {

        String drivername = "com.mysql.cj.jdbc.Driver";
        String URL = "jdbc:mysql://127.0.0.1:3306/shoppingbook?useSSL=false";
        String name = "root";
        String password = "123";

        Class.forName(drivername);

        //2.获得数据库链接
        Connection conn = DriverManager.getConnection(URL, name, password);
        //3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from bookt");
        //4.处理数据库的返回结果(使用ResultSet类)
        while (rs.next()) {
            System.out.println(rs.getString("book_ID") + " "
                    + rs.getString("book_ISBN"));
        }
        //关闭资源
        rs.close();
        st.close();
        conn.close();
    }


    @Test
    public void test3() throws Exception{
        BooktDaoImpl dao=new BooktDaoImpl();
        dao.getall();

    }
    @Test
    public void test4() throws Exception {
        BooktDaoImpl dao=new BooktDaoImpl();
        Book book=new Book();
        book.setPrice(39);
        System.out.println(book.getPrice());
        System.out.println(dao.select(book));

    }

}
