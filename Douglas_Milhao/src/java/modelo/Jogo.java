package modelo;

import dao.PerguntaDAO;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Jogo {

    private Integer pontuacao = 0;
    private Integer pulos;
    private List<Pergunta> perguntas;

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Jogo() {

        this.pontuacao = 0;
        this.pulos = 3;
    }

    // acertar = pontuacao + 1000;
    // parar = pontuação de quando parou
    //errar pontuacao = pontuação/2;
    //
    public Integer getAcerto() {

        Integer acerto = 0;
        String msg = "";

        //se acertar vale mil
        //
        if (this.pontuacao == 0) {

            acerto = 1000;

        } else if (this.pontuacao >= 1000 && this.pontuacao < 5000) {

            acerto = pontuacao + 1000;

        } else if (this.pontuacao == 5000) {

            acerto = 10000;

        } else if (this.pontuacao >= 10000 && this.pontuacao < 50000) {

            acerto = pontuacao + 10000;

        } else if (this.pontuacao == 50000) {

            acerto = 100000;

        } else if (this.pontuacao >= 100000 && this.pontuacao < 500000) {

            acerto = pontuacao + 100000;

        } else if (this.pontuacao == 500000) {

            acerto = 1000000;

        }

//         else if (this.pontuacao == 1000000) {
//             
//             
        //acerto = 2000000;
//            
//          }
//        

        return acerto;

    }

    //get acerto, erro e parar. Precisa ter o parar?
    //erro se é zero
    public Integer getErro() {

        //acertar os metodos e montar a tela
        Integer erro = 0;

        if (this.pontuacao == 0 && this.pontuacao == 1000000) {

            erro = 0;
        } else {

            erro = pontuacao / 2;
        }

        return erro;

    }

    public void iniciar() {

        try {
            //AO INICIAR, VOU CARREGAR UMA LISTA DE PERGUNTAS
            //chamar o listar
            //popular as perguntas

            PerguntaDAO dao = new PerguntaDAO();
            this.setPerguntas(dao.listar());

        } catch (Exception ex) {

            Logger.getLogger(Jogo.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    //receber como parametro a resposta ;
    public boolean confirmar(String opcaomarcada) {

        //se a opcao marcada (this.getPerguntas().get(0).getCerta()) == opcao certa, eu acertei!!!
        if (opcaomarcada.equals(this.getPerguntas().get(0).getCerta())) {

            //excluo a perguntas atual, ex: se tinha 10 perguntas, passou a ser 9
            this.getPerguntas().remove(0);
            this.setPontuacao(this.getAcerto());
            return true;

        } else {

            this.setPontuacao(this.getErro());
            return false;

        }

    }

    public boolean pular() {

        //se ele pode pular eu pulo, se nao eu tiro o pulo dele. 
        //se a quantidade de pulos for diferente de 0, ou seja, enquanto eu posso pular, eu pulo
        // e desconto a quantidade de pulos que dei
        //O PULAR TEM QUE REMOVER A PRIMEIRA PERGUNAT
        if (this.pulos != 0) {

            this.pulos--;
            this.perguntas.remove(0);
            return true;

            //além de dizer que posso pular, tenho que descontar
        } else {
            //mandar uma mensagem dizendo que nao pode mais pular

            return false;

        }

    }

//    public boolean ganhou() {
//        
//        
//          if (this.pontuacao == 1000000) {
//              
//              return true;
//              
//          }
//          
//          else {
//              
//              return false;
//          }
//          
//      
//    }
}
