<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("LoginJogador") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String id = request.getParameter("LoginJogador");
      //String login = request.getParameter("txtLoginJogador") ;
    //String senha = request.getParameter("txtSenhaJogador"); 
    //String foto = request.getParameter("txtFotoJogador");

    JogadorDAO dao = new JogadorDAO();

    Jogador j = dao.buscarPorChavePrimaria(id);

    if (j == null) {

        response.sendRedirect("list.jsp");
        return;

    }


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                
                Login
                -->
                
                           
              
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtLoginJogador" value="<%=j.getLogin()%>" required  id="txtLoginJogador" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtLoginJogador">Login</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtSenhaJogador" value="<%=j.getSenha()%>"  required  id="txtSenhaJogador" />
                        <label class="mdl-textfield__label" for="txtSenhaJogador">Senha</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="email" name="txtEmailJogador" value="<%=j.getEmail()%>" required  id="txtEmailJogador" />
                        <label class="mdl-textfield__label" for="txtEmailJogador">Email</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtFotoJogador" value="<%=j.getFoto()%>" required  id="txtFotoJogador" />
                        <label class="mdl-textfield__label" for="txtFotoJogador">Foto</label>
                    </div>
                </div>



                <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">Salvar</i></button>
                <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">Limpar</i></button>


        </div>
        </form>
    </div>

</div>

</section>

<%@include file="../rodape.jsp"%>


