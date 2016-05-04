<%@page import="java.util.List"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<style>

    <%

        PerguntaDAO dao = new PerguntaDAO();
        List<Pergunta> lista = dao.listar();


    %>




    .direita
    {
        text-align: right;
        padding-right: 10%;

    }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta</h4>
            <!-- o que vai aqui dentro de pergunta no sentido de APRARCER NA TELA -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Enunciado</th>
                        <th>Nível</th>
                        <th>Categoria</th>
                        


                        <th>ações</th>
                    </tr>
                </thead>
                <tbody>

                    <%                        for (Pergunta p : lista) {


                    %>


                    <tr>
                        <td><%=p.getId()%></td>
                        <td><%=p.getEnunciado()%></td>
                        <td><%=p.getNivel()%></td>
                        <td><%=p.getCategoria()%></td>
                     

                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?IdPergunta=<%=p.getId()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?IdPergunta=<%=p.getId()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>

                        </td>

                    </tr>

                    <%

                        }


                    %>

                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

