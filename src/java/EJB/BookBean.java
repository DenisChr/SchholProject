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
        Query query = em.createNamedQuery("Book.findAll");
        List<Book> resultList = query.getResultList();
        return resultList;
    }
}
