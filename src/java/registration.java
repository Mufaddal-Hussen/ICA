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
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class registration extends HttpServlet {

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
//            Random rm = new Random();
//            int otp = 5000 - rm.nextInt(1000);
    
            HttpSession s = request.getSession();
            if(request.getParameter("otp").equals(s.getAttribute("otp").toString()))
            {
                out.print("worling");

//                Class.forName("org.apache.derby.jdbc.ClientDriver");
            Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
//                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
            ps = conn.prepareStatement("insert into user(email,name,mobile,password) values(?,?,?,?)");
            ps.setString(1, s.getAttribute("email").toString());
            ps.setString(2, s.getAttribute("name").toString());
            ps.setString(3, s.getAttribute("mobile").toString());
            ps.setString(4, s.getAttribute("password").toString());
            if (ps.executeUpdate() != 0) {
                response.sendRedirect("loginandregistration.jsp?msg=registration succsess now login with registerd E-mail id and password");
                out.print("inserted");
            } else {
                response.sendRedirect("loginandregistration.jsp?msg=fail");
                out.print("insertion fail");
            }

            }
            else
            {
            out.print("<script>window.alert('wrong otp')</script>");
            response.sendRedirect("otp.jsp?msg=wrong otp");
            }
           
        } catch (Exception e) {
            response.getWriter().print(e.getMessage());

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
