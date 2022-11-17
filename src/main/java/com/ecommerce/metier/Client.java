package com.ecommerce.metier;

import javax.persistence.*;
import java.util.*;

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
    private String droit;
    private Set<Commande> commandesByIdc = new HashSet<Commande>(0);
    private Set<Wishlist> wishlistsByIdc = new HashSet<Wishlist>(0);

    public Client(){
        super();
    }
    public Client(int idc) {
        this.idc = idc;
    }
    public Client(int idc, Compte compte, String nom, String prenom, String email, String tel, Date regdate, Set<Wishlist> wishlists, Set<Adresse> adresses, Set<Commande> commandes) {
        this.idc = idc;
        this.compteByLogin = compte;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.tel = tel;
        this.regDate = regdate;
        this.wishlistsByIdc = wishlists;
        this.adressesByIdc = adresses;
        this.commandesByIdc = commandes;
    }

    @Id
    @Column(name = "idc")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
    @Basic
    @Column(name = "droit")
    public String getDroit() {
        return droit;
    }

    public void setDroit(String droit) {
        this.droit = droit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Client)) return false;
        Client client = (Client) o;
        return idc == client.idc && Objects.equals(nom, client.nom) && Objects.equals(prenom, client.prenom) && Objects.equals(email, client.email) && Objects.equals(tel, client.tel) && Objects.equals(regDate, client.regDate) && Objects.equals(login, client.login) && Objects.equals(adressesByIdc, client.adressesByIdc) && Objects.equals(compteByLogin, client.compteByLogin) && Objects.equals(droit, client.droit) && Objects.equals(commandesByIdc, client.commandesByIdc) && Objects.equals(wishlistsByIdc, client.wishlistsByIdc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idc, nom, prenom, email, tel, regDate, login, adressesByIdc, compteByLogin, droit, commandesByIdc, wishlistsByIdc);
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
    public Set<Commande> getCommandesByIdc() {
        return commandesByIdc;
    }

    public void setCommandesByIdc(Set<Commande> commandesByIdc) {
        this.commandesByIdc = commandesByIdc;
    }

    @OneToMany(mappedBy = "clientByIdc")
    public Set<Wishlist> getWishlistsByIdc() {
        return wishlistsByIdc;
    }

    public void setWishlistsByIdc(Set<Wishlist> wishlistsByIdc) {
        this.wishlistsByIdc = wishlistsByIdc;
    }
}
