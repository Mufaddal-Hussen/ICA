package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style2.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"entrymain\">\n");
      out.write("        <p>Please select ctegorie:</p>\n");
      out.write("        <input type=\"radio\" id=\"movie\" name=\"ctgr\" value=\"Best Movie\" onclick=\"entry1()\" checked>\n");
      out.write("        <label for=\"movie\">Best Movie</label>\n");
      out.write("        <input type=\"radio\" id=\"actor\" name=\"ctgr\" value=\"Best Actor\" onclick=\"entry2()\">\n");
      out.write("        <label for=\"actor\">Best Actor</label>\n");
      out.write("        <input type=\"radio\" id=\"actress\" name=\"ctgr\" value=\"Best Actress\" onclick=\"entry3()\">\n");
      out.write("        <label for=\"actress\">Best Actress</label>\n");
      out.write("        <input type=\"radio\" id=\"song\" name=\"ctgr\" value=\"Best Song\" onclick=\"entry4()\">\n");
      out.write("        <label for=\"song\">Best Song</label>\n");
      out.write("        <input type=\"radio\" id=\"singer\" name=\"ctgr\" value=\"Best Singer\" onclick=\"entry5()\">\n");
      out.write("        <label for=\"singer\">Best Singer</label>\n");
      out.write("        <input type=\"radio\" id=\"show\" name=\"ctgr\" value=\"Best TV Show\" onclick=\"entry6()\">\n");
      out.write("        <label for=\"show\">Best TV Show</label><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"moviediv\">\n");
      out.write("            <form action=\"addmovie\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                <h1 class=\"entryh1\">Enter Best movie of the year nominees</h1>\n");
      out.write("                <label>Enter movie name </label>\n");
      out.write("                <input type=\"text\" name=\"moviename\"><br>\n");
      out.write("                <label>Enter about movie</label>\n");
      out.write("                <textarea rows=\"10\" cols=\"20\" name=\"movieabout\">\n");
      out.write("        </textarea>\n");
      out.write("                <br>\n");
      out.write("                <label>Enter movie image </label>\n");
      out.write("                <input type=\"file\" name=\"movieimage\"><br>\n");
      out.write("                <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> Movie_name </th>\n");
      out.write("            <th>Movie_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

                Connection conn = null;
                PreparedStatement ps = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps = conn.prepareStatement("select * from movie");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"actordiv\">\n");
      out.write("            <form action=\"addactor\"  method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                \n");
      out.write("            <h1 class=\"entryh1\">Enter best Actor of the year nominees</h1>\n");
      out.write("            <label>Enter Actor name </label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter about Actor</label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter Actor image </label>\n");
      out.write("            <input type=\"file\"><br>\n");
      out.write("            <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> Actor_name </th>\n");
      out.write("            <th>Actor_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

               Connection conn2 = null;
                PreparedStatement ps2 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps2 = conn2.prepareStatement("select * from actor");
              ResultSet rs2 = ps2.executeQuery();

                while (rs2.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs2.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs2.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs2.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs2.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("            \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"actressdiv\">\n");
      out.write("            <form action=\"addactress\"  method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <h1 class=\"entryh1\">Enter best Actress of the year nominees</h1>\n");
      out.write("            <label>Enter Actress name </label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter about Actress</label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter Actress image </label>\n");
      out.write("            <input type=\"file\"><br>\n");
      out.write("            <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            \n");
      out.write("             <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> Actress_name </th>\n");
      out.write("            <th>Actress_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

               Connection conn3 = null;
                PreparedStatement ps3 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps3 = conn3.prepareStatement("select * from actress");
              ResultSet rs3 = ps3.executeQuery();

                while (rs3.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs3.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs3.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs3.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs3.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"songdiv\">\n");
      out.write("            <form action=\"addsong\"  method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <h1 class=\"entryh1\">Enter best song of the year nominees</h1>\n");
      out.write("            <label>Enter Song name </label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter about Song</label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter Song image </label>\n");
      out.write("            <input type=\"file\"><br>\n");
      out.write("            <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("             <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> Song_name </th>\n");
      out.write("            <th>Song_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

               Connection conn4 = null;
                PreparedStatement ps4 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps4 = conn4.prepareStatement("select * from song");
              ResultSet rs4 = ps4.executeQuery();

                while (rs4.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs4.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs4.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs4.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs4.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"singerdiv\">\n");
      out.write("            <form action=\"addsinger\"  method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <h1 class=\"entryh1\">Enter best Singer of the year nominees</h1>\n");
      out.write("            <label>Enter Singer name </label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter about Singer</label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter Singer image </label>\n");
      out.write("            <input type=\"file\"><br>\n");
      out.write("            <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("             <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> Singer_name </th>\n");
      out.write("            <th>Singer_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

               Connection conn5 = null;
                PreparedStatement ps5 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps2 = conn5.prepareStatement("select * from singer");
              ResultSet rs5 = ps5.executeQuery();

                while (rs5.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs5.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs5.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs5.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs5.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"showdiv\">\n");
      out.write("            <form action=\"addshow\"  method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <h1 class=\"entryh1\">Enter best TV Show of the year nominees</h1>\n");
      out.write("            <label>Enter TV Show name </label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter about TV Shhow</label>\n");
      out.write("            <input type=\"text\"><br>\n");
      out.write("            <label>Enter TV Show image </label>\n");
      out.write("            <input type=\"file\"><br>\n");
      out.write("            <input type=\"submit\" value=\"Enter\"><br>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("             <table border=\"5px\" cellspacing=\"5px\" cellpadding=\"5px\">\n");
      out.write("\n");
      out.write("            <th> TV show_name </th>\n");
      out.write("            <th>TV show_about</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            <th>Action</th>\n");
      out.write("            ");

               Connection conn6 = null;
                PreparedStatement ps6 = null;
                Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                conn6 = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                ps6 = conn6.prepareStatement("select * from tvshow");
              ResultSet rs6 = ps6.executeQuery();

                while (rs6.next()) {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("             <td> ");
      out.print(rs6.getString(1));
      out.write("</td>\n");
      out.write("             <td>");
      out.print(rs6.getString(2));
      out.write("</td>\n");
      out.write("                <td><a href=\"delete?name=");
      out.print(rs6.getString(1));
      out.write("\">Delete</a></td>\n");
      out.write("                <td><a href=\"newjsp2.jsp?name=");
      out.print(rs6.getString(1));
      out.write("\">Update</a></td>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        ");

            }

        
      out.write("\n");
      out.write("    </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"script.js\"></script>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
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
