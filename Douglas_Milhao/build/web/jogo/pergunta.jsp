<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>

<%
    /* Quando o jogo, começa:
     pegar a minha pergunta
     Jogo jogo = new Jogo();
     jogo.setPerguntas();
     Pergunta pergunta = Jogo.getPerguntas().get(0);  
     */

    Jogo jogo;
    Jogador jogador = (Jogador) session.getAttribute("jogador");

    // verificar se ja tem jogo sendo jogado. 
    if (session.getAttribute("jogo") != null) {

        jogo = (Jogo) session.getAttribute("jogo");

    } else {

        jogo = new Jogo();
    }

    //verificar se diferencia o botao que eu cliquei. confirmar é diferente do pular
    //os dois mandam o submit no mesmo formulario, fiz isso para diferenciar o confirmar o pular;
    //ou vai um submit ou vai outro
    //se ele clicou em confirmar
    if (request.getParameter("btnConfirmar") != null) {
        String opcaomarcada = request.getParameter("rdoPergunta");

        //se eu erro eu vou para a tela final
        if (!jogo.confirmar(opcaomarcada)) {
            
            response.sendRedirect("fim.jsp");

        } else {
            if (jogo.getPontuacao() == 1000000) {

                session.setAttribute("jogo", jogo);
                response.sendRedirect("fim.jsp");
                return;

            }
        }
    } else {

        if (request.getParameter("btnPular") != null) {
            jogo.pular();

        } //nao pode mais pular
        
        else {

            if (request.getParameter("btnParar") != null) {
                response.sendRedirect("fim.jsp");

            } else {

                //iniciar o jogo
                jogo.iniciar();

            }

        }
    }
    session.setAttribute("jogo", jogo);

    //Exibir a primeira pergunta na tela;   
    Pergunta pergunta = jogo.getPerguntas().get(0);
%>

<html>


    <head>
        <link rel = "stylesheet" type = "text/css" href = "estilo.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pergunta</title>
    </head>


    <body>

        <div class="centralizar">

            <h1> PERGUNTAS </h1>


        </div>


        <div class="pergunta">
            <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
            <div class="opcoes">
                <form action="pergunta.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" />
                    <%=pergunta.getA()%> <br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                    <%=pergunta.getB()%> <br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    <%=pergunta.getC()%> <br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                    <%=pergunta.getD()%> <br/>
                    <hr/>
                    <input type="submit" value="CONFIRMAR" name="btnConfirmar" /> 
                    <input type="submit" value="PULAR" name="btnPular" /><%=jogo.getPulos()%>
                    <input type="submit" value="PARAR" name="btnParar" />
                </form>
            </div>
        </div>
        <div class="painelUsuario">
            Jogador <%=jogador.getLogin()%> <br/>
            Pontuação Atual <%=jogo.getPontuacao()%> <br/>
            <%=jogo.getErro()%> ERRAR <br/>
            <%=jogo.getPontuacao()%> PARAR<br/>
            <%=jogo.getAcerto()%> ACERTAR<br/>



        </div>



    </body>
</html>
