package servlet;

import daoImpl_DB.CustomerDaoImpl;
import table_DB.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "loginServlet", urlPatterns = "/login.do")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        public static String drivername="com.mysql.jdbc.Driver";
//        public static String URL="jdbc:mysql://127.0.0.1:3306;" +"databaseName=test01;";
//        public static String name="test01";
//        public static String password="123";
//	    Connection conn = null;
//	    try {
//			Class.forName(drivername);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//	    try {
//
//			conn= DriverManager.getConnection(URL,name,password);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//        Users user=new Users();
//        user.setUname(request.getParameter("username"));
//        user.setPassword(request.getParameter("userpwd"));
//        IUsersDao dao=new UsersDaoImpl();
//
//	    try {
//			System.out.println(dao.check(user));
//		} catch (Exception e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}

//        try {
//
//            if(dao.check(user)!=null)
//            {
//                //response.getWriter().write("Longin failed");
//                //System.out.println(dao.check(user));
//                request.getRequestDispatcher("main.jsp").forward(request, response);
//            }
//            else request.getRequestDispatcher("main.html").forward(request, response);
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        System.out.println(request.getParameter("username")+" "+request.getParameter("userpwd"));

        request.setCharacterEncoding("utf-8");
        Customer customer = new Customer();
        String userName = request.getParameter("uName");
        String userPWd = request.getParameter("uPWD");

        String usersex = request.getParameter("uSex");
        String userHobby[] = request.getParameterValues("uHobby");

        customer.setCust_no(userName);
        customer.setCust_pwd(userPWd);

        CustomerDaoImpl customerDao = new CustomerDaoImpl();
        int flag = 0;
        try {
            flag = (int) customerDao.insert(customer);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (flag < 1) {
            request.setAttribute("userName", userName);
            request.setAttribute("userSex", usersex);


            HttpSession session = request.getSession();
            session.setAttribute("userName", userName);
            session.setAttribute("userSex", usersex);

            response.sendRedirect(request.getContextPath() + "/jsp/ok.jsp");
        } else {
            request.setAttribute("userName", userName);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/error.jsp");
            dispatcher.forward(request, response);

        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
