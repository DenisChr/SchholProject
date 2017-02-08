/**
 *
 * @author DenisRemote
 */
package EJB;

import Entity.AangebodenBoek;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class SaleBookBean {

@PersistenceContext(unitName = "SchoolProjectWebPU")
    private EntityManager em;

    public boolean PutOnSale(Integer boek_id, Integer user_id,String conditie, Double prijs) {
    
        
        Query q = em.createNativeQuery(
        "SELECT * from tbl_aangebodenboeken WHERE tbl_aangebodenboeken.iduser = '" + user_id + "' AND WHERE tbl_aangebodenboeken.idaangebodenboeken = '" + boek_id + "'");
        List lst = q.getResultList();
        
        if (lst.isEmpty()) {
            
            em.persist(new AangebodenBoek(prijs, conditie, user_id, boek_id));

            return true;
        } else {
            return false;
        }
    }
    public List<AangebodenBoek> getAllSellBooks(){
        List<AangebodenBoek> resultList = null;
        
        Query q = em.createNamedQuery("AangeboedenBoek.findAll");
        resultList = q.getResultList();
        return resultList;
    }

}
