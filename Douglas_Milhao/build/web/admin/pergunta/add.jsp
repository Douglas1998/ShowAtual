<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">

    <%

        CategoriaDAO cDAO = new CategoriaDAO();
        List<Categoria> cLista = cDAO.listar();


    %>

    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Cadastrar</h4>
            <form action="add-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                
                ver como adicionar as opções
                -->






                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" required  id="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>

                </div>                     


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" required  id="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNivel">Nível</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCerta" required  id="txtCerta" />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>
                    </div>

                </div>




                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <select name="selCategoria"> 
                            <option value=""> Selecione uma opção </option>

                            <%                        for (Categoria c : cLista) {

                            %>




                            <option value="<%=c.getId()%>"> <%=c%> </option>    


                            <%

                                }

                            %>





                        </select>
                        <label class="mdl-textfield__label" for="selCategoria">Categoria</label>





                    </div>


                </div>






                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" required  id="txtA" />
                        <label class="mdl-textfield__label" for="txtA">a</label>

                    </div>

                </div>



                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" required  id="txtB" />
                        <label class="mdl-textfield__label" for="txtB">b</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" required  id="txtC" />
                        <label class="mdl-textfield__label" for="txtC">c</label>
                    </div>

                </div>

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" required  id="txtD" />
                        <label class="mdl-textfield__label" for="txtD">d</label>
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


