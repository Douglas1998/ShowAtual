/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Categoria;

/**
 *
 * @author Douglas
 */
public class CategoriaDAO {

    EntityManager em;

    public CategoriaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Categoria obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }

    }

    public List<Categoria> listar() throws Exception {
        return em.createNamedQuery("Categoria.findAll").getResultList();
    }

    public void alterar(Categoria obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        }
    }

    public void excluir(Categoria obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        }
    }

    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }

    //se não der, receber o Long id

    public Categoria buscarPorChavePrimaria(Long idCategoria) {

        return em.find(Categoria.class, idCategoria);
    }

}
