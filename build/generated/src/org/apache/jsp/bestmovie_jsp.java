package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class bestmovie_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <title>Best movie of the year</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"movies\">\n");
      out.write("\n");
      out.write("            <div class=\"bestmovie\" id=\"bestmovie\">\n");
      out.write("                <h1 class=\"nominees\">Best movie of the year nominees</h1>\n");
      out.write("\n");
      out.write("                ");

                    Connection conn = null;
                    PreparedStatement ps = null;
                    Class.forName("com.mysql.cj.jdbc.Driver");   // for mysql
                    //                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/voting", "root", "root");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "root"); //for mysql
                    ps = conn.prepareStatement("select * from movie");// where name='" + request.getParameter("userid") + "'");
                    ResultSet rs = ps.executeQuery();
                    int i = 0;
                    while (rs.next()) {
                        i++;
                
      out.write("\n");
      out.write("                <div class=\"movies\">\n");
      out.write("                    ");

                        if (i % 2 != 0) {
      out.write("     \n");
      out.write("                    <div class=\"movieimg\" >\n");
      out.write("\n");
      out.write("                        <img src=\"C:/Users/Dell/Desktop/ICA/ComedyNightswithKapilImage.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    <div class=\"movieabt\">\n");
      out.write("                        <h2 class=\"movieh2\">");
      out.print(rs.getString("movie_name"));
      out.write("</h2>\n");
      out.write("\n");
      out.write("                        <p>");
      out.print(rs.getString("movie_about"));
      out.write("</p>\n");
      out.write("                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                    </div>\n");
      out.write("                    ");

                          if (i % 2 == 0) {
      out.write("     \n");
      out.write("                    <div class=\"movieimg\" >\n");
      out.write("                        <img src=\"C:\\Users\\Dell\\Desktop\\ICA/ComedyNightswithKapilImage.jpg\" alt=\"img not supported\">\n");
      out.write("                    </div>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </div>\n");
      out.write("                ");

                    }
                    rs.close();
                    ps.close();
                    conn.close();
                
      out.write("\n");
      out.write("                <!--                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Street Dancer 3D</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>Street Dancer 3D is a 2020 Indian Hindi-language dance film directed by Remo D'Souza. It is produced\n");
      out.write("                                            by Bhushan Kumar, Krishan Kumar and Lizelle D'Souza under the banners T-Series and Remo D'Souza\n");
      out.write("                                            Entertainment. ... The story explores a dance competition between some Indian and Pakistani dancers.\n");
      out.write("                                            It was theatrically released in India on 24 January 2020.\n");
      out.write("                                        </p>\n");
      out.write("                                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"movieimg\"><img src=\"Street_Dancer_3D_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieimg\"><img src=\"Baaghi_3_Film_Poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Baaghi 3</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>Baaghi 3 is a 2020 Indian Hindi-language action thriller film directed by Ahmed Khan. Produced by\n");
      out.write("                                            Nadiadwala Grandson Entertainment and Fox Star Studios, it is a sequel to Baaghi (2016) and Baaghi 2\n");
      out.write("                                            (2018) and the third film in the Baaghi film series. The film stars Tiger Shroff, Riteish Deshmukh,\n");
      out.write("                                            Shraddha Kapoor and Ankita Lokhande.[4][5] A remake of the 2012 Tamil-language film Vettai,[6] the\n");
      out.write("                                            film follows Ranveer \"Ronnie\" Chaturvedi, a young man who protects his timid brother Vikram\n");
      out.write("                                            Chaturvedi from everything.\n");
      out.write("                                            Baaghi 3 was theatrically released in India on 6 March 2020.</p>\n");
      out.write("                                            <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Shubh Mangal Zyada Saavdhan</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>A spin-off to the 2017 film Shubh Mangal Saavdhan, whose script was also written by Kewalya, it stars\n");
      out.write("                                            Ayushmann Khurrana, Jitendra Kumar, Neena Gupta and Gajraj Rao. The film tells the story of a gay\n");
      out.write("                                            man and his partner, who have trouble convincing the former's parents of their relation.\n");
      out.write("                                            Filming wrapped on 16 December 2019 in Varanasi and it was theatrically released in India on 21\n");
      out.write("                                            February 2020.\n");
      out.write("                                        </p>\n");
      out.write("                                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"movieimg\"><img src=\"Shubh_Mangal_Zyada_Saavdhan_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieimg\"><img src=\"Malang_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Malang</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>Malang (transl. Vagrant/Wanderer) is a 2020 Indian Hindi-language romantic action thriller film\n");
      out.write("                                            directed by Mohit Suri and produced by T-Series in collaboration with Luv Films and Northern Lights\n");
      out.write("                                            Entertainment with distribution by Yash Raj Films. It stars Aditya Roy Kapur, Disha Patani, Anil\n");
      out.write("                                            Kapoor and Kunal Khemu.\n");
      out.write("                                            Initially announced as a Valentine's Day 2020 release, Malang was preponed by 1 week to avoid clash\n");
      out.write("                                            with Love Aaj Kal. It was finally released worldwide in cinemas on 7 February 2020.[</p>\n");
      out.write("                                            <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"movies\">\n");
      out.write("                                        <div class=\"movieabt\">\n");
      out.write("                                            <h2 class=\"movieh2\">Chhapaak</h2>\n");
      out.write("                                            \n");
      out.write("                                            <p>Chhapaak ( transl. Splash) is a 2020 Indian Hindi-language drama film based on the life of acid\n");
      out.write("                                                attack survivor Laxmi Agarwal. Directed by Meghna Gulzar, the film stars Deepika Padukone in leading\n");
      out.write("                                                role of a character inspired by Agarwal alongside Vikrant Massey and Madhurjeet Sarghi.\n");
      out.write("                                                Shooting took place from March to June 2019 in locations near New Delhi and Mumbai. Released\n");
      out.write("                                                worldwide on 10 January 2020 in cinemas, the film was declared tax-free in Chhattisgarh, Madhya\n");
      out.write("                                                Pradesh and Rajasthan by Indian government.\n");
      out.write("                                            </p>\n");
      out.write("                                            <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"movieimg\"><img src=\"Chhapaak_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                            <div class=\"movies\">\n");
      out.write("                                <div class=\"movieimg\"><img src=\"Love_Aaj_Kal_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                <div class=\"movieabt\">\n");
      out.write("                                    <h2 class=\"movieh2\">Love Aaj Kal</h2>\n");
      out.write("                                    \n");
      out.write("                                    <p>Love Aaj Kal (transl. Love nowadays) is a 2020 Indian Hindi-language romantic drama film directed by\n");
      out.write("                                        Imtiaz Ali and starring Kartik Aaryan and Sara Ali Khan. Principal photography began in the first\n");
      out.write("                                        half of March 2019 and ended in July 2019.[3][4] It was released in India on Valentine's Day\n");
      out.write("                                        2020.[5] It was the spiritual successor to the 2009 film of the same name, also directed by Imtiaz\n");
      out.write("                                        Ali.[</p>\n");
      out.write("                                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Jawaani Jaaneman</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>Jawaani Jaaneman is a 2020 Indian Hindi-language comedy-drama film directed by Nitin Kakkar, and\n");
      out.write("                                            produced by Jackky Bhagnani, Deepshikha Deshmukh, Jay Shewakramani and lead actor Saif Ali Khan\n");
      out.write("                                            under the banners of Pooja Entertainment, Black Knight Films and Northern Lights Films.The film\n");
      out.write("                                            revolves\n");
      out.write("                                            around Jazz, a property broker and party-animal in London, who has to confront a daughter he never\n");
      out.write("                                            knew he had, who is also pregnant.\n");
      out.write("                                            Principal photography of the film took place from 14 June to 24 August 2019 in London, England. The\n");
      out.write("                                            film was theatrically released in India on 31 January 2020 to mixed-to-positive reviews, and was a\n");
      out.write("                                        moderate success at the box office.\n");
      out.write("                                    </p>\n");
      out.write("                                    <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movieimg\"><img src=\"Jawaani_Jaaneman_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"movies\">\n");
      out.write("                                <div class=\"movieimg\"><img src=\"Thappad_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                <div class=\"movieabt\">\n");
      out.write("                                    <h2 class=\"movieh2\">Thappad</h2>\n");
      out.write("                                    \n");
      out.write("                                    <p>Thappad (transl. Slap) is a 2020 Indian Hindi-language drama film directed by Anubhav Sinha, which he\n");
      out.write("                                        also co-produced with Bhushan Kumar of T-Series. The film, starring Taapsee Pannu, was released in\n");
      out.write("                                        theatres on 28 February 2020.</p>\n");
      out.write("                                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"movies\">\n");
      out.write("                                    <div class=\"movieabt\">\n");
      out.write("                                        <h2 class=\"movieh2\">Panga</h2>\n");
      out.write("                                        \n");
      out.write("                                        <p>Panga (transl. Clash) is a 2020 Indian Hindi-language sports film directed and co-written by Ashwiny\n");
      out.write("                                            Iyer Tiwari and produced by Fox Star Studios, based on a script written by her and Nikhil Mehrotra,\n");
      out.write("                                            with Nitesh Tiwari providing additional script inputs. Kangana Ranaut and Jassie Gill star in the\n");
      out.write("                                            lead roles, while Yagya Bhasin, Neena Gupta, Richa Chadha, Megha Burman and Smita Tambe appearing in\n");
      out.write("                                            supporting roles.\n");
      out.write("                                            Shot largely in Panaji, Bhopal, Mumbai and Kolkata, the film was released in India on 24 January\n");
      out.write("                                            2020. The film received positive reviews, praise for Ranaut's performance, and grossed ₹41.71\n");
      out.write("                                            crore.\n");
      out.write("                                        </p>\n");
      out.write("                                        <input class=\"button\" type=\"button\" value=\"Vote\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"movieimg\"><img src=\"Panga_film_poster.jpg\" alt=\"img not supported\"></div>\n");
      out.write("                                </div>-->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>    \n");
      out.write("    </body>\n");
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
