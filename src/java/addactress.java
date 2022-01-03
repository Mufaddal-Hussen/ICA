/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Dell
 */
public class addactress extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String fileLocation = null;
            String actressname=null;
            String actressabout=null;
            String filepath=getServletContext().getInitParameter("file-upload"); 
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setRepository(new File("C:\\temp\\"));
            ServletFileUpload fileUpload = new ServletFileUpload(factory);
            List<FileItem> fileItems = fileUpload.parseRequest(request);
            for (FileItem fileItem : fileItems) {
                if (!fileItem.isFormField()) {
                    File file = new File(fileItem.getName());
                    File fNew = new File(filepath + file.getName());
                    fileItem.write(fNew);
                    fileLocation =file.getName();
                    out.print("working");
                }else{
//                    out.print("else working");
                   if(fileItem.getFieldName().equals("actressname"))
                   {
//                       out.print("actor name working");
                       actressname=fileItem.getString();
                       
                      
                   }
                   if(fileItem.getFieldName().equals("actressabout"))
                   {
//                       out.print("actor about working");
                       actressabout=fileItem.getString();
                      
                   }
                }
            }
            
            
            
            
            
            
            
            
            
            
             Connection conn=null;
            PreparedStatement ps =null;
           
//                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
//                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement("insert into actress(actress_name,actress_about,actress_image) values(?,?,?)");
                ps.setString(1, actressname);
                ps.setString(2, actressabout);
                ps.setString(3, fileLocation);
               
                if(ps.executeUpdate()!=0){
                    response.sendRedirect("admin.jsp");
                    out.print("inserted");
                }else{
                    response.sendRedirect("admin.jsp");
                    out.print("insertion fail");
                }
        }catch(Exception e){
            
        }
    }
     

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
