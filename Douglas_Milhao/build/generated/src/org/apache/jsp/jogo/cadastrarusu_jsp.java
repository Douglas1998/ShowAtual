package org.apache.jsp.jogo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.JogadorDAO;
import modelo.Jogador;
import util.Upload;

public final class cadastrarusu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/jogo/cabecalho.jsp");
  }

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
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("            <center> <img src=\"show.jpeg\"> </center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
      out.write('\n');

    String msg = "";
    if (request.getParameter("txtLogin") != null && request.getParameter("txtSenha") != null && request.getParameter("txtEmail") != null) {

        String login = request.getParameter("txtLogin");
        String senha = request.getParameter("txtSenha");
        String email = request.getParameter("txtEmail");

        try {

            JogadorDAO dao = new JogadorDAO();
            Jogador j = new Jogador();

            j.setLogin(login);
            j.setSenha(senha);
            j.setEmail(email);

            Upload up = new Upload();
            
            up.setFolderUpload("arquivos");
            
            if (up.sendFiles(getServletContext(), request)) {
                for (String file : up.getFiles()) {
                    out.print(file);
                }
            } else {
                out.print("erro");
            }
            

            dao.incluir(j);
            session.setAttribute("jogador", j);
            response.sendRedirect("entrarok.jsp");

        } catch (Exception e) {

            msg = "erro";

        }

    }



      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link rel = \"stylesheet\" type = \"text/css\" href = \"estilo.css\" />\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cadastrar Usuário</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"usuario\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <form action=\"cadastrarusu.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <h1> CADASTRAR USUÁRIO - SHOW DO MILHÃO </h1> \n");
      out.write("                <p> Nesse módulo, você pode jogar e ter seus pontos registrados no placar </p>\n");
      out.write("\n");
      out.write("                <p> Login <input type =\"text\" name=\"txtLogin\" /> </p>\n");
      out.write("                <p> Senha <input type =\"password\" name=\"txtSenha\" /> </p>\n");
      out.write("                <p> Email <input type =\"email\" name=\"txtEmail\" /> </p>\n");
      out.write("                <p> Foto  <input type=\"file\" name=\"file[]\" /> </p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <input type=\"submit\" value=\"cadastrar\" />\n");
      out.write("            </form> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
