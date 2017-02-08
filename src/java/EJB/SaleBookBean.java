/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EJB;

import Entity.AangebodenBoek;
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
public class SaleBookBean {


      @PersistenceContext(unitName = "SchoolProjectWebPU")
    private EntityManager em;
        
    
    public AangebodenBoek SellBook(AangebodenBoek book){
        em.persist(book);
        return book;
    }
    
    public AangebodenBoek RemoveBook(AangebodenBoek book){
        em.remove(book);
        return book;
    }  
    
        public List<AangebodenBoek> getAllSellBooks(){
        List<AangebodenBoek> resultList = null;
        
        Query q = em.createNamedQuery("AangebodenBoek.findAll");
        resultList = q.getResultList();
        return resultList;
    }
        
            public AangebodenBoek FindSaleBookByID(int id) {
        return em.find(AangebodenBoek.class, id);
    }
}
