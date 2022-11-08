package com.ecommerce.metier;

public class LignePanier {
    private Produit produit;
    private int qte;

    public LignePanier(Produit produit, int qte) {
        this.produit = produit;
        this.qte = qte;
    }

    public LignePanier() {
        super();
    }

    public Produit getProduit() {
        return produit;
    }

    public void setProduit(Produit produit) {
        this.produit = produit;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }
}
