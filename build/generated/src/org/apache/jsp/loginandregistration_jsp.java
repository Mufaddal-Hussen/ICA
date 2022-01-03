package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginandregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title>ICA</title>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap\" rel=\"stylesheet\">\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("  <div class=\"main\"> \n");
      out.write("    <div class=\"cont\">\n");
      out.write("      <div class=\"form sign-in\">\n");
      out.write("        ");

//            out.print(session.getAttribute("userid"));
            if(session.getAttribute("userid")!=null)
            {
                session.removeAttribute("userid");
            }
        if(request.getParameter("msg")!=null)
        {
        
      out.write("\n");
      out.write("        <h4 style=\"text-align: center; color:red;  margin-bottom: 10px; \">");
      out.print(request.getParameter("msg"));
      out.write("</h4>\n");
      out.write("        ");

            
        }
        
      out.write("\n");
      out.write("          <h2 class=\"log\">Sign In</h2>\n");
      out.write("        <form action=\"login\">\n");
      out.write("      <label>\n");
      out.write("        <span>Email Address</span>\n");
      out.write("        <input type=\"email\" name=\"email\" required>\n");
      out.write("      </label>\n");
      out.write("      <label>\n");
      out.write("        <span>Password</span>\n");
      out.write("        <input type=\"password\" name=\"password\" required>\n");
      out.write("      </label>\n");
      out.write("      <!--<a href=\"home.html\">--> \n");
      out.write("     \n");
      out.write("          <button type=\"submit\" class=\"submit\" >Log In</button>\n");
      out.write("      <!--</a>-->\n");
      out.write("        </form>\n");
      out.write("     <p class=\"forgot-pass\">Forgot Password ?</p>\n");
      out.write("    <a href=\"adminlogin.html\"> <p class=\"forgot-pass\">Login As Admin</p></a>\n");
      out.write("     \n");
      out.write("     <div class=\"social-media\">\n");
      out.write("       <ul>\n");
      out.write("         <!--<a href=\"https://web.whatsapp.com/\" target=\"blank\"></a>-->\n");
      out.write("         <li><img src=\"images/facebook.png\"></li>\n");
      out.write("         <li><img src=\"images/twitter.png\"></li>\n");
      out.write("         <li><img src=\"images/linkedin.png\"></li>\n");
      out.write("         <li><img src=\"images/instagram.png\"></li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"sub-cont\">\n");
      out.write("      <div class=\"img\">\n");
      out.write("        <div class=\"img-text m-up\">\n");
      out.write("          <h2>New here?</h2>\n");
      out.write("          <p>Sign up and Vote for your favorite celebrity, movie, singer, etc.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"img-text m-in\">\n");
      out.write("          <h2>One of us?</h2>\n");
      out.write("          <p>If you already has an account, just Log in. We've missed you!</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"img-btn\">\n");
      out.write("          <span class=\"m-up\">Sign Up</span>\n");
      out.write("          <span class=\"m-in\">Sign In</span>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"form sign-up\">\n");
      out.write("          <form action=\"SendMail\">\n");
      out.write("        <h2 class=\"log\">Sign Up</h2>\n");
      out.write("        <label>\n");
      out.write("          <span>Name</span>\n");
      out.write("          <input type=\"text\" name=\"name\" required>\n");
      out.write("        </label>\n");
      out.write("        <label>\n");
      out.write("          <span>Email</span>\n");
      out.write("          <input type=\"email\" name=\"email\" required>\n");
      out.write("        </label>\n");
      out.write("        <label>\n");
      out.write("          <span>mobile</span>\n");
      out.write("          <input type=\"text\" name=\"mobile\"required>\n");
      out.write("        </label>\n");
      out.write("        \n");
      out.write("        <label>\n");
      out.write("          <span>Password</span>\n");
      out.write("          <input type=\"password\" name=\"password\"required>\n");
      out.write("        </label>\n");
      out.write("        <label>\n");
      out.write("          <span>Confirm Password</span>\n");
      out.write("          <input type=\"password\" name=\"copassword\"required>\n");
      out.write("        </label>\n");
      out.write("        \n");
      out.write("       <button type=\"submit\" class=\"submit\">Sign Up Now</button>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <script type=\"text/javascript\" src=\"script.js\"></script>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
