<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String login;

    if (request.getParameter("txtLoginJogador") == null) {
        login = ("Parâmetro não atribuido");
    } else {

        login = (request.getParameter("txtLoginJogador"));

    }
    
    String senha;
    
      if (request.getParameter("txtSenhaJogador") == null) {
        senha = ("Parâmetro não atribuido");
    } else {

        senha = (request.getParameter("txtSenhaJogador"));

    }
    
    
    String email;
    
      if (request.getParameter("txtEmailJogador") == null) {
        email = ("Parâmetro não atribuido");
    } else {

        email = (request.getParameter("txtEmailJogador"));

    }
    
    String foto;
    
      if (request.getParameter("txtFotoJogador") == null) {
        foto = ("Parâmetro não atribuido");
    } else {

        foto = (request.getParameter("txtFotoJogador"));

    }
      
      JogadorDAO dao = new JogadorDAO();
      Jogador j = new Jogador();
      
      j.setLogin(login);
      j.setFoto(foto);
      j.setEmail(email);
      j.setSenha(senha);
      
      dao.incluir(j);
      
      
      
      
      
      
      
      
      
      


%>





<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Jogador - Cadastrar</h4>
            <p>Jogador cadastrado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

