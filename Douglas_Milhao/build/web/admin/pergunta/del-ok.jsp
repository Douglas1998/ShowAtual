<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    String pergunta;

    if (request.getParameter("IdPergunta") == null) {
        response.sendRedirect("list.jsp");
        return;
    } else {

        pergunta = request.getParameter("IdPergunta");

    }

    PerguntaDAO dao = new PerguntaDAO();

    Pergunta per = dao.buscarPorChavePrimaria(Integer.parseInt(pergunta));
    
    dao.excluir(per);


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Pergunta - Excluir</h4>
            <p>Pergunta excluída com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

