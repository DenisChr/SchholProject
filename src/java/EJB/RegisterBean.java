/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EJB;

import Entity.User;
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
public class RegisterBean {

@PersistenceContext(unitName = "SchoolProjectWebPU")
    private EntityManager em;
    
    public boolean register(String naam, String voornaam,String gsm, String email, String wachtwoord) {
        
        Query q = em.createNativeQuery("SELECT * from tbl_gebruikers WHERE tbl_gebruikers.Email = '" + email + "'");
        List lst = q.getResultList();
        
        if (lst.isEmpty()) {
            
            em.persist(new User(naam, voornaam, email, gsm, wachtwoord));

            return true;
        } else {
            return false;
        }
        
    }
}
