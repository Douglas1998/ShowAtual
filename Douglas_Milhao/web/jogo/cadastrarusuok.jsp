<%@page import="modelo.Jogador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>

<%
    Jogador jogador = (Jogador) session.getAttribute("jogador");


%>

<html>

    <head>
        <link rel = "stylesheet" type = "text/css" href = "estilo.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmação - Cadastro </title>
    </head>


    <body>

        <div class="usuario">

            <center> <h1> CONFIRMAÇÃO DE CADASTRO </h1> </center>
            <p> O seu cadastro foi feito com sucesso. Clique em voltar para voltar a página e fazer o login.  </p>


            <button class="but"> <a href = "jogar.jsp">  <b>  VOLTAR  </b> </a> </button> 


        </div> 


    </body>
</html>
