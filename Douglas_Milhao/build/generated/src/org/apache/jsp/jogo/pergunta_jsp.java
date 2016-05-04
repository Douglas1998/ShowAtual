package org.apache.jsp.jogo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Jogador;
import dao.JogadorDAO;
import dao.PerguntaDAO;
import java.util.List;
import modelo.Pergunta;
import modelo.Jogo;

public final class pergunta_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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

    /* Quando o jogo, começa:
     pegar a minha pergunta
     Jogo jogo = new Jogo();
     jogo.setPerguntas();
     Pergunta pergunta = Jogo.getPerguntas().get(0);  
     */

    Jogo jogo;
    Jogador jogador = (Jogador) session.getAttribute("jogador");

    // verificar se ja tem jogo sendo jogado. 
    if (session.getAttribute("jogo") != null) {

        jogo = (Jogo) session.getAttribute("jogo");

    } else {

        jogo = new Jogo();
    }

    //verificar se diferencia o botao que eu cliquei. confirmar é diferente do pular
    //os dois mandam o submit no mesmo formulario, fiz isso para diferenciar o confirmar o pular;
    //ou vai um submit ou vai outro
    //se ele clicou em confirmar
    if (request.getParameter("btnConfirmar") != null) {
        String opcaomarcada = request.getParameter("rdoPergunta");

        //se eu erro eu vou para a tela final
        if (!jogo.confirmar(opcaomarcada)) {
            response.sendRedirect("fim.jsp");

        }
        
      

    } 
    
    else {

        if (request.getParameter("btnPular") != null) {
            jogo.pular();

        } 
        else {

            
            /*
            NO PARAR
            
            
            CONSIDERAR:
            
            * SE O JOGADOR QUISER PARAR E ELE TER ENTRADO NO JOGO, PULANDO O LOGIN
              MANDA PARA UMA PÁGINA A SE CRIAR FIMSEMLOGIN.JSP (NESSE CASO, COMO NÃO TEM LOGIN, NAO CADASTRA NO RANKING)
            
            * SE NÃO SE O JOGADOR QUISER PARAR E TER ENTRADO COM LOGIN, VAI PRA FIM.JSP
              ONDE VAI CADASTRAR SUA PONTUAÇÃO E GRAVAR NO RANKING          
            
            
            */
            
            
            if (request.getParameter("btnParar" ) != null) {
                response.sendRedirect("fim.jsp");

            } else {

                //iniciar o jogo
                jogo.iniciar();

            }

        }
    }
    session.setAttribute("jogo", jogo);

    //Exibir a primeira pergunta na tela;   
    Pergunta pergunta = jogo.getPerguntas().get(0);


      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link rel = \"stylesheet\" type = \"text/css\" href = \"estilo.css\" />\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Pergunta</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"centralizar\">\n");
      out.write("\n");
      out.write("            <h1> PERGUNTAS </h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"pergunta\">\n");
      out.write("            <h4 class=\"enunciado\">");
      out.print(pergunta.getEnunciado());
      out.write("</h4>\n");
      out.write("            <div class=\"opcoes\">\n");
      out.write("                <form action=\"pergunta.jsp\" method=\"post\">\n");
      out.write("                    <input type=\"radio\" value=\"A\" name=\"rdoPergunta\" />\n");
      out.write("                    ");
      out.print(pergunta.getA());
      out.write(" <br/>\n");
      out.write("                    <input type=\"radio\" value=\"B\" name=\"rdoPergunta\" />\n");
      out.write("                    ");
      out.print(pergunta.getB());
      out.write(" <br/>\n");
      out.write("                    <input type=\"radio\" value=\"C\" name=\"rdoPergunta\" />\n");
      out.write("                    ");
      out.print(pergunta.getC());
      out.write(" <br/>\n");
      out.write("                    <input type=\"radio\" value=\"D\" name=\"rdoPergunta\" />\n");
      out.write("                    ");
      out.print(pergunta.getD());
      out.write(" <br/>\n");
      out.write("                    <hr/>\n");
      out.write("                    <input type=\"submit\" value=\"CONFIRMAR\" name=\"btnConfirmar\" /> \n");
      out.write("                    <input type=\"submit\" value=\"PULAR\" name=\"btnPular\" />");
      out.print(jogo.getPulos());
      out.write("\n");
      out.write("                    <input type=\"submit\" value=\"PARAR\" name=\"btnParar\" />\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"painelUsuario\">\n");
      out.write("            Jogador ");
      out.print(jogador.getLogin());
      out.write(" <br/>\n");
      out.write("            Pontuação Atual ");
      out.print(jogo.getPontuacao());
      out.write(" <br/>\n");
      out.write("            ");
      out.print(jogo.getErro());
      out.write(" ERRAR <br/>\n");
      out.write("            ");
      out.print(jogo.getPontuacao());
      out.write(" PARAR<br/>\n");
      out.write("            ");
      out.print(jogo.getAcerto());
      out.write(" ACERTAR<br/>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
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
