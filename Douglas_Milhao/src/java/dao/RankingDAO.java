package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Ranking;

public class RankingDAO {

    EntityManager em;

    public RankingDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Ranking obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
        //finally faz algo independente do que ocrre em cima, ou seja, com erro ou nao ele finaliza a conexão            
            //em.close();

    }

    public List<Ranking> listar() throws Exception {
        return em.createNamedQuery("Ranking.findAll").getResultList();
    }    
     
     public List<Ranking> listarTop() throws Exception {
        return em.createNamedQuery("Ranking.top").setMaxResults(10).getResultList();
    }

    public void alterar(Ranking obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }

    public void excluir(Ranking obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }
    
    //exibir top10
    
    
    
    //método a ser usado pra fechar
    //pra fazzer em todas
    
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }

}
