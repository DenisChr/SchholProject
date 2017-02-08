/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EJB;

import Entity.User;
import static java.lang.System.out;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author DenisRemote
 */
@Stateless
public class UserBean {
    
    @PersistenceContext(unitName = "SchoolProjectWebPU")
    private EntityManager em;
    
    
    public User getGebruiker(String email, String password) {
        User user = null;
        
        try {
            user = (User) em.createNativeQuery("SELECT * FROM tbl_gebruikers WHERE Email = '" + email + "' AND Wachtwoord = '"+ password + "'", User.class).getSingleResult();
        } catch (Exception ex) 
        {
                        out.println(ex);
        }
        
        return user;
    } 
}