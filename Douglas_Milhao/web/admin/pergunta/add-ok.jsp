<%@page import="modelo.Categoria"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    String enunciado;

    if (request.getParameter("txtEnunciado") == null) {

        enunciado = ("Par�metro n�o atribuido");

    } else {
        enunciado = (request.getParameter("txtEnunciado"));
    }

    Integer nivel;

    if (request.getParameter("txtNivel") == null) {

        nivel = Integer.parseInt("Par�metro n�o atribuido");

    } else {
        nivel = Integer.parseInt(request.getParameter("txtNivel"));
    }

    String certa;

    if (request.getParameter("txtCerta") == null) {

        certa = ("Par�metro n�o atribuido");

    } else {
        certa = (request.getParameter("txtCerta"));
    }
    
    
    String a;
    
     if (request.getParameter("txtA") == null) {

        a = ("Par�metro n�o atribuido");

    } else {
        a = (request.getParameter("txtA"));
    }
    
    
    String b; 
    
      if (request.getParameter("txtB") == null) {

        b = ("Par�metro n�o atribuido");

    } else {
        b = (request.getParameter("txtB"));
    }
    
    
    String c;
    
      if (request.getParameter("txtC") == null) {

        c = ("Par�metro n�o atribuido");

    } else {
        c = (request.getParameter("txtC"));
    }
      
         
    
    String d;
            
      if (request.getParameter("txtD") == null) {

        d = ("Par�metro n�o atribuido");

    } else {
        d = (request.getParameter("txtD"));
    }
      

    String categoria;
    //usar o selname

    if (request.getParameter("selCategoria") == null) {

        categoria = ("Par�metro n�o atribuido");

    } else {

        categoria = request.getParameter("selCategoria");
    }

    PerguntaDAO dao = new PerguntaDAO();

    Pergunta p = new Pergunta();
    
    Categoria objCategoria = new Categoria();
    
    objCategoria.setId(Long.parseLong(categoria));
    
    p.setEnunciado(enunciado);
    p.setNivel(nivel);
    p.setCerta(certa);
    p.setCategoria(objCategoria);
    p.setA(a);
    p.setB(b);
    p.setC(c);
    p.setD(d);
    
    dao.incluir(p);
    
    
    
    
    
    
    


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Pergunta - Cadastrar</h4>
            <p>Pergunta cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

