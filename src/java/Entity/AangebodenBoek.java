/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author DenisRemote
 */
@Entity
@Table(name = "tbl_aangebodenboeken")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AangebodenBoek.findAll", query = "SELECT a FROM AangebodenBoek a")
    , @NamedQuery(name = "AangebodenBoek.findByIdaangebodenboeken", query = "SELECT a FROM AangebodenBoek a WHERE a.idaangebodenboeken = :idaangebodenboeken")
    , @NamedQuery(name = "AangebodenBoek.findByAangebodenprijs", query = "SELECT a FROM AangebodenBoek a WHERE a.aangebodenprijs = :aangebodenprijs")
    , @NamedQuery(name = "AangebodenBoek.findByConditie", query = "SELECT a FROM AangebodenBoek a WHERE a.conditie = :conditie")
    , @NamedQuery(name = "AangebodenBoek.findByIduser", query = "SELECT a FROM AangebodenBoek a WHERE a.iduser = :iduser")})
public class AangebodenBoek implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idaangebodenboeken")
    private Integer idaangebodenboeken;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "aangebodenprijs")
    private Double aangebodenprijs;
    @Size(max = 45)
    @Column(name = "conditie")
    private String conditie;
    @Basic(optional = false)
    @NotNull
    @Column(name = "iduser")
    private int iduser;
    @JoinColumn(name = "idboek", referencedColumnName = "id")
    @OneToOne(optional = false)
    private Book idboek;

    public AangebodenBoek() {
    }

    public AangebodenBoek(Integer idaangebodenboeken) {
        this.idaangebodenboeken = idaangebodenboeken;
    }

    public AangebodenBoek(Integer idaangebodenboeken, int iduser) {
        this.idaangebodenboeken = idaangebodenboeken;
        this.iduser = iduser;
    }

    public Integer getIdaangebodenboeken() {
        return idaangebodenboeken;
    }

    public void setIdaangebodenboeken(Integer idaangebodenboeken) {
        this.idaangebodenboeken = idaangebodenboeken;
    }

    public Double getAangebodenprijs() {
        return aangebodenprijs;
    }

    public void setAangebodenprijs(Double aangebodenprijs) {
        this.aangebodenprijs = aangebodenprijs;
    }

    public String getConditie() {
        return conditie;
    }

    public void setConditie(String conditie) {
        this.conditie = conditie;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public Book getIdboek() {
        return idboek;
    }

    public void setIdboek(Book idboek) {
        this.idboek = idboek;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idaangebodenboeken != null ? idaangebodenboeken.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AangebodenBoek)) {
            return false;
        }
        AangebodenBoek other = (AangebodenBoek) object;
        if ((this.idaangebodenboeken == null && other.idaangebodenboeken != null) || (this.idaangebodenboeken != null && !this.idaangebodenboeken.equals(other.idaangebodenboeken))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.AangebodenBoek[ idaangebodenboeken=" + idaangebodenboeken + " ]";
    }
    
}
