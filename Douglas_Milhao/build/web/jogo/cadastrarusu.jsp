<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%@page import="util.Upload"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "cabecalho.jsp" %>

<%
    String msg = "";
    if (request.getParameter("txtLogin") != null && request.getParameter("txtSenha") != null && request.getParameter("txtEmail") != null) {

        String login = request.getParameter("txtLogin");
        String senha = request.getParameter("txtSenha");
        String email = request.getParameter("txtEmail");

        try {

            JogadorDAO dao = new JogadorDAO();
            Jogador j = new Jogador();

            j.setLogin(login);
            j.setSenha(senha);
            j.setEmail(email);
            
             Upload up = new Upload();
            
             up.setFolderUpload("arquivos");
            
             if (up.sendFiles(getServletContext(), request)) {
             for (String file : up.getFiles()) {
             j.setFoto(file);
             
             }
             } 
                    
             

            dao.incluir(j);
            session.setAttribute("jogador", j);
            response.sendRedirect("entrarok.jsp");

        } catch (Exception e) {

            msg = "erro";

        }

    }


%>

<html>

    <head>
        <link rel = "stylesheet" type = "text/css" href = "estilo.css" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Usuário</title>
    </head>



    <body>

        <div class="usuario">


            <form action="cadastrarusu.jsp" method="post" enctype="multipart/form-data">




                <h1> CADASTRAR USUÁRIO - SHOW DO MILHÃO </h1> 
                <p> Nesse módulo, você pode jogar e ter seus pontos registrados no placar </p>

                <p> Login <input type ="text" name="txtLogin" /> </p>
                <p> Senha <input type ="password" name="txtSenha" /> </p>
                <p> Email <input type ="email" name="txtEmail" /> </p>
                <p> Foto  <input type="file" name="file[]" /> </p>


                <input type="submit" value="cadastrar" />
            </form> 




        </div> 






    </body>
</html>
