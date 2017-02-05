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

/**
 *
 * @author DenisRemote
 */
@Stateless
public class UserBean {
    
 @PersistenceContext
    private EntityManager em;
    public boolean checkUser(String email, String wachtwoord) {
       
        List<User> s = (List<User>)em.createQuery("select e from Login e where e.email='"+email+"' and e.wachtwoord='"+wachtwoord+"'").getResultList();
      System.out.println("is list empty ?"+s.isEmpty()+" for the"+email+" and "+wachtwoord);
       
      if(!s.isEmpty())
       return true;
       else
        return false;
    }
}