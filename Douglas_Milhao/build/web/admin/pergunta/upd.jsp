<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
     CategoriaDAO cDAO = new CategoriaDAO();
    List<Categoria> cLista = cDAO.listar();
    
    if (request.getParameter("IdPergunta") == null) {

        response.sendRedirect("list.jsp");

        return;

    }

    String pergunta = request.getParameter("IdPergunta");

    PerguntaDAO dao = new PerguntaDAO();
    //Pesquisa obj = dao.buscarPorChavePrimaria(Long.parseLong(pesq));

    Pergunta p = dao.buscarPorChavePrimaria(Integer.parseInt(pergunta));
    
      if (p == null) {

        response.sendRedirect("list.jsp");
        return;

    }
      
      



   


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
 
             

               <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtIdPergunta" value="<%=p.getId()%>" required  id="txtIdPergunta" readonly />
                        <label class="mdl-textfield__label" for="txtIdPergunta">Id Pergunta</label>
                    </div>
                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEnunciado" value="<%=p.getEnunciado()%>" required  id="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>

                </div>                     


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNivel" value="<%=p.getNivel()%>" required  id="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNivel">Nível</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtCerta" value="<%=p.getCerta()%>" required  id="txtCerta" />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>


                    </div>

                </div>




                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        
                           <select name="selCategoria">  
                        
                 <option value=""> Selecione uma opção </option>

                <%

                    String selected = "";
                    for (Categoria c : cLista) {
                        
                         if (c.getId() == p.getCategoria().getId()) {

                        selected = "selected";
                    }
                                    
                  
                        
                 %>
                 
                <option value="<%=c.getId()%>"<%=selected%>> <%=c%> </option>        

                 
                 <%
                         
                         
                      selected = "";
                }   
                         
                         
                 %>
                 
                 </select>
                 
                        
                        <label class="mdl-textfield__label" for="selCategoria">Categoria</label>

                    </div>
                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtA" value="<%=p.getA()%>" required  id="txtA" />
                        <label class="mdl-textfield__label" for="txtA">a</label>

                    </div>

                </div>



                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtB" value="<%=p.getB()%>" required  id="txtB" />
                        <label class="mdl-textfield__label" for="txtB">b</label>
                    </div>

                </div>


                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtC" value="<%=p.getC()%>" required  id="txtC" />
                        <label class="mdl-textfield__label" for="txtC">c</label>
                    </div>

                </div>

                <div class="mdl-cell--12-col"> 

                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtD" value="<%=p.getD()%>" required  id="txtD" />
                        <label class="mdl-textfield__label" for="txtD">d</label>
                    </div>

                </div>


                <%--
                
                  <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="professsion" name="professsion">
                            <option value=""></option>
                            <option value="option1">option 1</option>
                            <option value="option2">option 2</option>
                            <option value="option3">option 3</option>
                            <option value="option4">option 4</option>
                            <option value="option5">option 5</option>
                        </select>
                        <label class="mdl-select__label" for="professsion">Exemplo Select</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col">
                
                --%>



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


