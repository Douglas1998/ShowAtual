<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("txtLoginJogador") == null || request.getParameter("txtSenhaJogador") == null || request.getParameter("txtFotoJogador") == null || request.getParameter("txtEmailJogador") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    //String id = request.getParameter("txtidJogador");
    String id = request.getParameter("txtLoginJogador");
    String senha = request.getParameter("txtSenhaJogador");
    String foto = request.getParameter("txtFotoJogador");
    String email = request.getParameter("txtEmailJogador");
    JogadorDAO dao = new JogadorDAO();

    Jogador j = dao.buscarPorChavePrimaria(id);
    j.setSenha(senha);
    j.setFoto(foto);
    j.setEmail(email);
    
    dao.incluir(j);
    


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Jogador atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

