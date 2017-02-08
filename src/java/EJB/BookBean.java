/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EJB;

import Entity.Book;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author DenisRemote
 */
@Stateless
public class BookBean {

    @PersistenceContext(unitName = "SchoolProjectWebPU")
    private EntityManager em;
        
    
    public Book CreateBook(Book book){
        em.persist(book);
        return book;
    }
    
    public List<Book> getAllBooks(){
        List<Book> resultList = null;
        
        Query q = em.createNamedQuery("Book.findAll");
        resultList = q.getResultList();
        return resultList;
    }
        public Book FindBookByID(int id) {
        return em.find(Book.class, id);
    }
}
