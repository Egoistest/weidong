package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet(name = "printImgServlet")
public class printImgServlet extends HttpServlet {

    /**
     * Servlet implementation class PrintImg
     */
    @WebServlet("/PrintImg.do")
    public class PrintImg extends HttpServlet {
        private static final long serialVersionUID = 1L;

        /**
         * @see HttpServlet#HttpServlet()
         */
        public PrintImg() {
            super();
            // TODO Auto-generated constructor stub
        }

        /**
         * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
         * response)
         */
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            // TODO Auto-generated method stub
            // file://d|/uploadTest/test/1382197844706.jpg


            String file = "D:\\test\\imagesUpload\\bookImages\\468a4237-9561-411c-91b3-9496b7978965.jpg";
            FileInputStream in = new FileInputStream(new File(file));
            OutputStream o = response.getOutputStream();
            int l = 0;
            byte[] buffer = new byte[4096];
            while ((l = in.read(buffer)) != -1) {
                o.write(buffer, 0, l);
            }
            o.flush();
            in.close();
            o.close();

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
