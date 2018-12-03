package servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import util_DB.myTools;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "fileServlet")
public class fileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //构建一个fileitem工厂
        DiskFileItemFactory factory=new DiskFileItemFactory();


        //设置缓存的地址
        ServletContext servletContext = this.getServletConfig().getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);



        ServletFileUpload fileUpload=new ServletFileUpload(factory);

        List<FileItem> items=null;

        try {
            items=fileUpload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        Iterator<FileItem> iter=items.iterator();

        while(iter.hasNext()){
            FileItem item=iter.next();

            //true 普通文本域
            if (item.isFormField()){
                String fieldName=item.getFieldName();
                String fieldvalue=item.getString();
                System.out.println(fieldName+"="+fieldvalue);
            }
            else  //文件域
            {
                //取文件名
                String  fileName=item.getName();
                String  exten= myTools.getExtension(fileName);
                //新文件名
                String newFileName= UUID.randomUUID().toString()+exten;

                String path=this.getServletConfig().getServletContext().getRealPath("/");

                //   String path="D:\\test\\imagesUpload\\";
                String directPath=path+"bookImages\\"+newFileName;

                File file=new File(directPath);


                try {
                    item.write(file); //输出到目标文件
                } catch (Exception e) {
                    e.printStackTrace();
                }

                request.setAttribute("pic","bookImages/"+newFileName);
            }



            request.getRequestDispatcher("ok1.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
