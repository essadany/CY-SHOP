package com.ecommerce.metier;

import javax.persistence.*;
import java.util.Date;
import java.util.Collection;

@Entity
public class Client {
    private int idc;
    private String nom;
    private String prenom;
    private String email;
    private String tel;
    private Date regDate;
    private String login;
    private Collection<Adresse> adressesByIdc;
    private Compte compteByLogin;
    private Collection<Commande> commandesByIdc;
    private Collection<Wishlist> wishlistsByIdc;

    public Client(){
        super();
    }
    public Client(int idc, String nom, String prenom, String email, String tel, Date regDate, String login, Collection<Adresse> adressesByIdc, Compte compteByLogin, Collection<Commande> commandesByIdc, Collection<Wishlist> wishlistsByIdc) {
        this.idc = idc;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.tel = tel;
        this.regDate = regDate;
        this.login = login;
        this.adressesByIdc = adressesByIdc;
        this.compteByLogin = compteByLogin;
        this.commandesByIdc = commandesByIdc;
        this.wishlistsByIdc = wishlistsByIdc;
    }

    @Id
    @Column(name = "idc")
    public int getIdc() {
        return idc;
    }

    public void setIdc(int idc) {
        this.idc = idc;
    }

    @Basic
    @Column(name = "nom")
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    @Basic
    @Column(name = "prenom")
    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "tel")
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Basic
    @Column(name = "regDate")
    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Client client = (Client) o;

        if (idc != client.idc) return false;
        if (nom != null ? !nom.equals(client.nom) : client.nom != null) return false;
        if (prenom != null ? !prenom.equals(client.prenom) : client.prenom != null) return false;
        if (email != null ? !email.equals(client.email) : client.email != null) return false;
        if (tel != null ? !tel.equals(client.tel) : client.tel != null) return false;
        if (regDate != null ? !regDate.equals(client.regDate) : client.regDate != null) return false;
        if (login != null ? !login.equals(client.login) : client.login != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idc;
        result = 31 * result + (nom != null ? nom.hashCode() : 0);
        result = 31 * result + (prenom != null ? prenom.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (regDate != null ? regDate.hashCode() : 0);
        result = 31 * result + (login != null ? login.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "clientByIdc")
    public Collection<Adresse> getAdressesByIdc() {
        return adressesByIdc;
    }

    public void setAdressesByIdc(Collection<Adresse> adressesByIdc) {
        this.adressesByIdc = adressesByIdc;
    }

    @ManyToOne
    @JoinColumn(name = "login", referencedColumnName = "login")
    public Compte getCompteByLogin() {
        return compteByLogin;
    }

    public void setCompteByLogin(Compte compteByLogin) {
        this.compteByLogin = compteByLogin;
    }

    @OneToMany(mappedBy = "clientByIdc")
    public Collection<Commande> getCommandesByIdc() {
        return commandesByIdc;
    }

    public void setCommandesByIdc(Collection<Commande> commandesByIdc) {
        this.commandesByIdc = commandesByIdc;
    }

    @OneToMany(mappedBy = "clientByIdc")
    public Collection<Wishlist> getWishlistsByIdc() {
        return wishlistsByIdc;
    }

    public void setWishlistsByIdc(Collection<Wishlist> wishlistsByIdc) {
        this.wishlistsByIdc = wishlistsByIdc;
    }
}
