<%@page import="modelo.Jogador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>


<%

    //atribui o valor da sessao jogador ao objeto da pagina
    //converter objeto para jogador, dizer que classe é entre parenteses
    //diz pra sessão, que aquilo é uma sessão
    //fazer um sair
    Jogador jogador = (Jogador) session.getAttribute("jogador");
    

    if (session.getAttribute("jogador") == null) {

        if (request.getParameter("jogador") != null) {
            jogador = new Jogador();
            jogador.setLogin("anonimo");

        }

    } else {

        jogador = (Jogador) session.getAttribute("jogador");
    }


%>

<html>


    <head>
        <link rel = "stylesheet" type = "text/css" href = "estilo.css" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrar</title>
    </head>

    <body>

        <img src="silvio2.jpg">  



        <div class="teste">


            <%="Usuário:" + jogador.getLogin()%>



            <h1>INSTRUÇÕES DO JOGO </h1> </br>


            <p> Você terá que responder o total de 16 perguntas, referente ao mais diversos temas e áreas </p> 
            <p> Para cada pergunta, você terá 40 segundos, para assinalar a resposta que lhe parecer correta </p>
            <p> As perguntas, tem 3 níveis de dificuldades: Nível A, Nível B e Nível C. </p>
            <p> Você ainda poderá pedir ajuda durante o jogo </p>
            <p> BOA SORTE! </p>
            <button class="but"> <a href = "pergunta.jsp">  <b>  Ir para o Jogo  </b> </a> </button> 
            <button class="but"> <a href = "jogar.jsp">  <b>  voltar </b> </a> </button> 



        </div>


    </body>
</html>
