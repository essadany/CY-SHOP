package com.ecommerce.metier;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Wishlist {
    private int idw;
    private Integer idc;
    private String libelle;
    private Client clientByIdc;

    @Id
    @Column(name = "idw")
    public int getIdw() {
        return idw;
    }

    public void setIdw(int idw) {
        this.idw = idw;
    }



    @Basic
    @Column(name = "libelle")
    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Wishlist wishlist = (Wishlist) o;

        if (idw != wishlist.idw) return false;
        if (idc != null ? !idc.equals(wishlist.idc) : wishlist.idc != null) return false;
        if (libelle != null ? !libelle.equals(wishlist.libelle) : wishlist.libelle != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idw;
        result = 31 * result + (idc != null ? idc.hashCode() : 0);
        result = 31 * result + (libelle != null ? libelle.hashCode() : 0);
        return result;
    }



    @ManyToOne
    @JoinColumn(name = "idc", referencedColumnName = "idc")
    public Client getClientByIdc() {
        return clientByIdc;
    }

    public void setClientByIdc(Client clientByIdc) {
        this.clientByIdc = clientByIdc;
    }
}
