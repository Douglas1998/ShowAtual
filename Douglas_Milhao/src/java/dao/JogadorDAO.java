/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Jogador;

/**
 *
 * @author Douglas
 */
public class JogadorDAO {

    EntityManager em;

    public JogadorDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Jogador obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }

    }

    //METODO REALIZAR LOGIN, RECEBE COMO PARAMETRO O LOGIN E A SENHA RETORNANDO O OBEJETO DO JOGADOR LOGADO
    //OU NULL SE NÃO ENCONTROU
    //esse login e senha nao e o do banco e sim o que esta em jogador modelo nos dois pontos
    public Jogador realizarLogin(String login, String senha) {

        TypedQuery<Jogador> query
                = em.createNamedQuery("Jogador.realizarLogin", Jogador.class);

        query.setParameter("login", login);
        query.setParameter("senha", senha);
        Jogador jogador;
        //se da certo retorna o jogador, senao estoura e excessao
        try {

            jogador = query.getSingleResult();

        } //simplesmente retorna nulo;
        catch (Exception e) {

            jogador = null;
        }

        return jogador;

    }

//        if (query.getFirstResult() > 0) {
//
//            return query.getSingleResult();
//
//        }
//        
//        else 
//            return null;
//
//    }
    public List<Jogador> listar() throws Exception {
        return em.createNamedQuery("Jogador.findAll").getResultList();
    }

    public void alterar(Jogador obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Jogador obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    //pode nao dar certo, pois o login pode ser usado com ID
    public Jogador buscarPorChavePrimaria(String LoginJogador) {

        return em.find(Jogador.class, LoginJogador);
    }

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }

}
