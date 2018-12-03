package servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

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

@WebServlet(name = "fileUploadServlet")
public class fileUploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 创建一个文件上传的工厂实例
        DiskFileItemFactory factory = new DiskFileItemFactory();


        //设置文件缓存和大小
        ServletContext servletContext = this.getServletConfig().getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);
        factory.setSizeThreshold(1024 * 1024 * 20);
        //创建上传文件对象
        ServletFileUpload upload = new ServletFileUpload(factory);

// 处理页面传过来的表单项
        List<FileItem> items = null;

        String fosPath = "";

        String realPath = servletContext.getRealPath("/");
        System.out.println(realPath);
        try {
            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        //利用迭代器遍历items
        Iterator<FileItem> iter = items.iterator();

        while (iter.hasNext()) {
            FileItem fileItem = iter.next();

            if (fileItem.isFormField()) {
                //普通表单域
                String fieldName = fileItem.getFieldName();
                //表单名字
                System.out.println("fieldName=" + fieldName);
                String fieldValue = fileItem.getString("utf-8");
                System.out.println("fieldValue=" + fieldValue);

                request.setAttribute(fieldName, fieldValue);
            } else {
// 取得文件域的表单域名
                String fieldName = fileItem.getFieldName();
                System.out.println("fieldName=" + fieldName);
                System.out.println(fileItem.getSize());
                // 取得文件名
                String fileName = fileItem.getName();
                System.out.println("fileName=" + fileName);
                // 取得文件类型
                String contentType = fileItem.getContentType();
                System.out.println("contentType=" + contentType);
                // 对于上传文件的存放地址来建立一个输出流
                fosPath = "bookImages/" + UUID.randomUUID().toString()
                        + fileName.substring(fileName.lastIndexOf("."),
                        fileName.length());

                //		String fosName="d:/test/"+fosPath;

                String fosName = realPath + fosPath;
                request.setAttribute("pic", fosPath);
                try {
                    File file = new File(fosName);
                    fileItem.write(file);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
