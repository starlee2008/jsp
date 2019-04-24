package cap.uitl;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@WebServlet("/upload")
public class FileUploadServlet extends HttpServlet {
    private String filePath="e:\\upload";
    private String tempFilePath="e:\\upload\\temp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out=resp.getWriter();
        try{
            DiskFileItemFactory fileItemFactory=new DiskFileItemFactory();
            fileItemFactory.setSizeThreshold(4*1024*1024);
            fileItemFactory.setRepository(new File(tempFilePath));
            ServletFileUpload fileUpload=new ServletFileUpload(fileItemFactory);
            fileUpload.setSizeMax(4*1024*1024);
            List items=fileUpload.parseRequest(req);
            Iterator iterator=items.iterator();
            while (iterator.hasNext()){
                FileItem item= (FileItem) iterator.next();
                if(!item.isFormField()){
                    String fileName=item.getName();
                    int index=fileName.lastIndexOf("\\");
                    fileName=fileName.substring(index+1,fileName.length());
                    long fileSize=item.getSize();
                    if(fileName.equals("")||fileSize==0)
                        return;

                    File uploadFile=new File(filePath+"/"+fileName);
                    item.write(uploadFile);
                    out.println(fileName + "已经保存");
                    out.println("文件 " +fileName+" 的大小： "+fileSize+"\r\n");
                }
                else{
                    String name = item.getFieldName();
                    String value = item.getString();
                    out.println(name + ":" + value + "\r\n");
                }

;            }




        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
