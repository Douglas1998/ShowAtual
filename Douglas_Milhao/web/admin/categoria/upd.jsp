<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("idCategoria") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String categoria = request.getParameter("idCategoria");

    CategoriaDAO dao = new CategoriaDAO();
    Categoria c = dao.buscarPorChavePrimaria(Long.parseLong(categoria));

    if (c == null) {

        response.sendRedirect("list.jsp");
        return;

    }


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                
                receber o id no categoria e na pergunta no atualizar
                -->

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtIdCategoria" value="<%=c.getId()%>" required  id="txtIdCategoria" readonly ="readonly" />
                        <label class="mdl-textfield__label" for="txtIdCategoria">Id</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNome" value="<%=c.getNome()%>" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>




                <div class="mdl-cell--12-col">

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


