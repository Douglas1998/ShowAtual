<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>


<%

        String nome = request.getParameter("txtNomeCategoria");
       

        //Long idcat = Long.parseLong(request.getParameter("txtIdCategoria"));
        CategoriaDAO dao = new CategoriaDAO();
        Categoria c = new Categoria();

        c.setNome(nome);
     
        
        dao.incluir(c);
        

    


%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

