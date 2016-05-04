<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>

<%

//TENTATIVA DE LOGIN
    String msg = "";
    if (request.getParameter("txtEntrarLogin") != null && request.getParameter("txtEntrarSenha") != null) {

        JogadorDAO dao = new JogadorDAO();
        //VARIAVEL COM O USUARIO LOGADO

        Jogador jogador;

        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");

        jogador = dao.realizarLogin(login, senha);

        if (jogador != null) {

            //criar uma sessão para o jogador 
            //vou pta tela inicial do jogo
            session.setAttribute("jogador", jogador);

            response.sendRedirect("entrarok.jsp");

        } else {

            msg = "login errado";
        }
        
        
        

    }


%>


<html>

    <link rel = "stylesheet" type = "text/css" href = "estilo.css" />

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhao</title>
    </head>


    <body>




    <center> <h1> JOGAR - SHOW DO MILHÃO </h1> </center>

    <form action="jogar.jsp" method="post">


        <div class="centralizar">


            <p> Login <input type ="text" name="txtEntrarLogin" /> </p>
            <p> Senha <input type ="password" name="txtEntrarSenha" /> </p>

            <button class="but" type="submit"> Entrar </button>




            </br>
            </br>



    </form>

    <span class="but"> <a href="entrarok.jsp?jogador=anonimo"> PULAR LOGIN</a> </button>    
    <span class="but"> <a href = "cadastrarusu.jsp"> CADASTRE-SE  </b> </a> </span> 
    <span class="but"> <a href = "index.jsp">  VOLTAR AO MENU  </b> </a> </button> 




        </div>

        </body>
        </html>
