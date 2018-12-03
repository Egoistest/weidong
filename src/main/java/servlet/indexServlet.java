package servlet;

import daoImpl_DB.BooktDaoImpl;
import dao_DB.IBooktDao;
import table_DB.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "indexServlet",urlPatterns = "/index.do")
public class indexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            doIndex(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            doIndex(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {

        BooktDaoImpl bookDao=new BooktDaoImpl();
        List<Book> bookList=null;
        bookList=bookDao.getRecommadation(4);

        request.setAttribute("bList",bookList);

        request.getRequestDispatcher("/front/front.jsp").forward(request,response);
    }
}