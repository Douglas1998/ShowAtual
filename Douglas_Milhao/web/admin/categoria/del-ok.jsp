<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String categoria;

    if (request.getParameter("idCategoria") == null) {
        response.sendRedirect("list.jsp");
        return;
    } else {

        categoria = request.getParameter("idCategoria");

    }

    CategoriaDAO dao = new CategoriaDAO();

    Categoria cat = dao.buscarPorChavePrimaria(Long.parseLong(categoria));
    
    dao.excluir(cat);

%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Excluir</h4>
            <p>Categoria excluída com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

