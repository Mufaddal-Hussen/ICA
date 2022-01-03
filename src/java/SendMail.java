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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class SendMail extends HttpServlet {

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
            Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
            //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
            ps = conn.prepareStatement("select * from user where email='" + request.getParameter("email") + "'");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                response.sendRedirect("loginandregistration.jsp?msg=already registed user please login");
            }else{
//                out.print("User Not found");
            

            
            
            HttpSession s= request.getSession();
            s.setAttribute("name",request.getParameter("name"));
            s.setAttribute("email",request.getParameter("email"));
            s.setAttribute("mobile",request.getParameter("mobile"));
            s.setAttribute("password",request.getParameter("password"));
            
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            Session ss = Session.getDefaultInstance(props,
                    new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("mohdmufaddal5@gmail.com", "@9165846796@"); //To change body of generated methods, choose Tools | Templates.
                }
            }
            );
              Random rm = new Random();
//            int otp = 5000 - rm.nextInt(1000);
String otp= ""+rm.nextInt(9)+rm.nextInt(9)+rm.nextInt(9)+rm.nextInt(9)+rm.nextInt(9)+rm.nextInt(9);
            InternetAddress from[] = {new InternetAddress("mohdmufaddal5@gmail.com")};
            MimeMessage msg = new MimeMessage(ss);
            msg.addFrom(from);
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(request.getParameter("email")));
            msg.setSubject("Verification");
            msg.setText("Hello"+" "+request.getParameter("name")+" OTP For Your ICA account is " +otp);
            Transport.send(msg);
            s.setAttribute("otp", otp);
            response.sendRedirect("otp.jsp");
//            out.print("success");
            }
        } catch (AddressException ex) {
            response.getWriter().print("exception "+ex);
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            response.getWriter().print("exception "+ex);
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
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
