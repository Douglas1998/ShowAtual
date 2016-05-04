<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

     if (request.getParameter("txtIdPergunta") == null || request.getParameter("txtEnunciado") == null || request.getParameter("txtNivel") == null || request.getParameter("txtCerta") == null || request.getParameter("selCategoria") == null || request.getParameter("txtA") == null || request.getParameter("txtB") == null || request.getParameter("txtC") == null || request.getParameter("txtD") == null) {

        response.sendRedirect("list.jsp");

        return;

    }
     
         
    String id = request.getParameter("txtIdPergunta");
    String enunciado = request.getParameter("txtEnunciado");
    String nivel = request.getParameter("txtNivel");
    String certa = request.getParameter("txtCerta");
    String categoria = request.getParameter("selCategoria");
    String a = request.getParameter("txtA");
    String b = request.getParameter("txtB");
    String c = request.getParameter("txtC");
    String d = request.getParameter("txtD");
    
     PerguntaDAO dao = new PerguntaDAO();
    //Pergunta p = dao.buscarPorChavePrimaria(Long.parseLong(pesquisa));
    
    Pergunta p = dao.buscarPorChavePrimaria(Integer.parseInt(id));
    

    if (p == null) {

        response.sendRedirect("list.jsp");
    }
    
    Categoria objCategoria = new Categoria();
    
    objCategoria.setId(Long.parseLong(categoria));
    
    
    p.setEnunciado(enunciado);
    p.setNivel(Integer.parseInt(nivel));
    p.setCerta(certa);
    p.setCategoria(objCategoria);
    p.setA(a);
    p.setB(b);
    p.setC(c);
    p.setD(d);
    
    
    dao.alterar(p);
    
    
    
    
    


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

