<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
//DEBUG - A IDEIA DO DEBUG PRA WEB - 
    
    
    /*
    
    *rodar a aplicação passo a passo (linha a linha) - ver os erros do codigo
    a partir da onde quer começar depurar 
    
    F8 passo a passo
    F7 para outra pagina 
    F5 - 
    
    Monitar variaveis, erros comuns, 
    
    */
    Jogador jogador = new Jogador();
    
    jogador.setLogin("usuario");
    jogador.setSenha("usuario1234");
    jogador.setEmail("d@gmail.com");
    jogador.setFoto("teste.jpg");
    

    JogadorDAO dao = new JogadorDAO();

    dao.incluir(jogador);


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
