package org.apache.jsp.jogo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Jogo;

public final class fim_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
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

    
        Jogo jogo = (Jogo) session.getAttribute("jogo");
        
        //SALVAR A PONTUAÇÃO NO RANKINGE EXIBIR O RANKING        
        
        //pegar a pontuacao na sessao jogador;
        
        
        
        
        
        
        
        



      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("            <link rel = \"stylesheet\" type = \"text/css\" href = \"estilo.css\" />\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FIM DE JOGO</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"centralizar\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <h1>Acabou o Jogo!!!!!!</h1>\n");
      out.write("            <p> Sua pontuação foi de: ");
      out.print(jogo.getPontuacao());
      out.write(" pontos</p>\n");
      out.write("            \n");
      out.write("            <buttom class=\"but\"> <a href=\"jogar.jsp\"> Jogar Novamente </a> </buttom>\n");
      out.write("            \n");
      out.write("            <hr />\n");
      out.write("            <h4>TOP 10</h4>\n");
      out.write("            <ol>\n");
      out.write("                <li>Fulano1</li>\n");
      out.write("                <li>Fulano2</li>\n");
      out.write("                <li>Fulano3</li>\n");
      out.write("                <li>Fulano4</li>\n");
      out.write("                <li>Fulano5</li>\n");
      out.write("                <li>Fulano6</li>\n");
      out.write("                <li>Fulano7</li>\n");
      out.write("                <li>Fulano8</li>\n");
      out.write("                <li>Fulano9</li>\n");
      out.write("                <li>Fulano10</li>\n");
      out.write("            </ol>\n");
      out.write("        </div>\n");
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
