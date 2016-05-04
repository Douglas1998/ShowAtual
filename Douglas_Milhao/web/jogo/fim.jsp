
<%@page import="java.util.Date"%>
<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.RankingDAO"%>
<%@page import="modelo.Ranking"%>
<%@page import="modelo.Jogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>
<%

    Jogo jogo = (Jogo) session.getAttribute("jogo");

    Ranking r = new Ranking();
    Jogador jogador = (Jogador) session.getAttribute("jogador");

    r.setData(new Date());
    r.setJogador(jogador);
    r.setPontos(jogo.getPontuacao());

    //nunca fizemos duas operacoes com o mesmo dao: incluir e listar
    RankingDAO dao = new RankingDAO();

    //como resolver?
    dao.incluir(r);

    List<Ranking> lista = dao.listarTop();

    session.setAttribute("jogo", null);

    dao.fechaEmf();


%>

<html>



    <head>
        <link rel = "stylesheet" type = "text/css" href = "estilo.css" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FIM DE JOGO</title>
    </head>


    <body>

        <div class="centralizar">


            <h1>Acabou o Jogo!!!!!!</h1>
            <p> Sua pontuação foi de: <%=jogo.getPontuacao()%> pontos</p>

            <buttom class="but"> <a href="jogar.jsp"> Jogar Novamente </a> </buttom>

            <hr />
            <h4>TOP 10</h4>
            <ol>

        </div>

        <table class="centralizar">
            <thead>
                <tr>
                    <th>Jogador</th>
                    <th>Pontuação</th>

                </tr>
  </thead>
            <tbody>
                <%                        for (Ranking rk : lista) {
                    //como aparecer so os 10 primeiros e suas pontuações


                %>

          
                <tr>
                    <td><%=rk.getJogador()%> </td>
                    <td><%=rk.getPontos()%></td>

                    <td>
                    </td>

                </tr>
            
                    <%

                        }


                    %>

            </tbody>       



</html>
