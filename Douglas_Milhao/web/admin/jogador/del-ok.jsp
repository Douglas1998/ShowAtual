<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String jogador;

    if (request.getParameter("LoginJogador") == null) {
        response.sendRedirect("list.jsp");
        return;
    } else {

        jogador = request.getParameter("LoginJogador");

    }

    JogadorDAO dao = new JogadorDAO();
    Jogador jog = dao.buscarPorChavePrimaria(jogador);

    dao.excluir(jog);


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Excluir</h4>
            <p>Jogador excluído com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

