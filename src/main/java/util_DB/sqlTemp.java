package util_DB;

import handler.IResultSetHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class sqlTemp {

    public static int excuteUpdate(String sql, Object... params) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = conn_DB.getConn();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i + 1, params[i]);
            }
            return ps.executeUpdate();
        } catch (Exception e) {

        } finally {
            if (conn != null)
                conn.close();
            if (ps != null)
                ps.close();
        }
        return 0;
    }

    public static <E>E excuteQuery(String sql, IResultSetHandler<E> rh, Object... params) throws Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs ;


            conn = conn_DB.getConn();
            ps = conn.prepareStatement(sql);

            System.out.println("1111");

            for (int i = 0; i < params.length; i++) {

                ps.setObject(i + 1, params[i]);
                System.out.println("2222");
            }

            rs = ps.executeQuery();
            return  rh.handler(rs);


    }


}
