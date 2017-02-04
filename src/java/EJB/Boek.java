/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EJB;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DenisRemote
 */
@Entity
@Table(name = "tbl_boeken")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Boek.findAll", query = "SELECT b FROM Boek b")
    , @NamedQuery(name = "Boek.findById", query = "SELECT b FROM Boek b WHERE b.id = :id")
    , @NamedQuery(name = "Boek.findByTitel", query = "SELECT b FROM Boek b WHERE b.titel = :titel")
    , @NamedQuery(name = "Boek.findByAuteur", query = "SELECT b FROM Boek b WHERE b.auteur = :auteur")
    , @NamedQuery(name = "Boek.findByVak", query = "SELECT b FROM Boek b WHERE b.vak = :vak")
    , @NamedQuery(name = "Boek.findByRichting", query = "SELECT b FROM Boek b WHERE b.richting = :richting")
    , @NamedQuery(name = "Boek.findByIsbn", query = "SELECT b FROM Boek b WHERE b.isbn = :isbn")
    , @NamedQuery(name = "Boek.findByNieuwprijs", query = "SELECT b FROM Boek b WHERE b.nieuwprijs = :nieuwprijs")})
public class Boek implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "titel")
    private String titel;
    @Size(max = 45)
    @Column(name = "auteur")
    private String auteur;
    @Size(max = 45)
    @Column(name = "vak")
    private String vak;
    @Size(max = 45)
    @Column(name = "richting")
    private String richting;
    @Column(name = "ISBN")
    private Integer isbn;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "nieuwprijs")
    private Double nieuwprijs;

    public Boek() {
    }

    public Boek(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitel() {
        return titel;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getAuteur() {
        return auteur;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    public String getVak() {
        return vak;
    }

    public void setVak(String vak) {
        this.vak = vak;
    }

    public String getRichting() {
        return richting;
    }

    public void setRichting(String richting) {
        this.richting = richting;
    }

    public Integer getIsbn() {
        return isbn;
    }

    public void setIsbn(Integer isbn) {
        this.isbn = isbn;
    }

    public Double getNieuwprijs() {
        return nieuwprijs;
    }

    public void setNieuwprijs(Double nieuwprijs) {
        this.nieuwprijs = nieuwprijs;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Boek)) {
            return false;
        }
        Boek other = (Boek) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "EJB.Boek[ id=" + id + " ]";
    }
    
}
