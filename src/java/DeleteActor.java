/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class DeleteActor extends HttpServlet {

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
            Connection conn = null;
            PreparedStatement ps = null;    
            String sql=null;
            if(request.getParameter("movie_name")!=null)
                    {
                        sql="delete from movie where movie_name='" + request.getParameter("movie_name") + "'";
                    }
            else if(request.getParameter("actor_name")!=null)
            {
                sql="delete from actor where actor_name='" + request.getParameter("actor_name") + "'";
            }
            
            else if(request.getParameter("actress_name")!=null)
            {
                sql="delete from actress where actress_name='" + request.getParameter("actress_name") + "'";
            
            }
            
            else if(request.getParameter("song_name")!=null)
            {
                sql="delete from song where song_name='" + request.getParameter("song_name") + "'";
            
            }
            
            
            else if(request.getParameter("singer_name")!=null)
            {
                sql="delete from singer where singer_name='" + request.getParameter("singer_name") + "'";
            
            }
            
            
            else if(request.getParameter("show_name")!=null)
            {
                sql="delete from tvshow where show_name='" + request.getParameter("show_name") + "'";
            
            }
            
            
            
                    
            try {
//                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
//                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement(sql);
                out.print(sql);
                    
                if (ps.executeUpdate() != 0) {
//                    out.print("deleted");
                    response.sendRedirect("admin.jsp");
//                    response.sendRedirect("newjsp1.jsp?delete=yes");
                } else {
//                    out.print(" not deleted");
                    response.sendRedirect("admin.jsp");
//                    response.sendRedirect("newjsp1.jsp?delete=no");
                }

            } catch (SQLException ex) {
                out.print(ex);
                Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                out.print(ex);
                Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
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
