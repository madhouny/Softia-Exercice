package com.example.softia.entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table
public class Etudiant implements Serializable {
    @Id
    @SequenceGenerator(
            name = "etudiant_sequence",
            sequenceName = "etudiant_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "etudiant_sequence"
    )
    private Integer idEtudiant;
    private String nom;
    private String prenom;
    private String mail;

    @ManyToOne
    public Convention convention;

    public Etudiant() {
    }

    public Etudiant(String nom, String prenom, String mail) {
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;

    }

    public Integer getIdEtudiant() {
        return idEtudiant;
    }

    public void setIdEtudiant(Integer idEtudiant) {
        this.idEtudiant = idEtudiant;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Convention getConvention() {
        return convention;
    }

    public void setConvention(Convention convention) {
        this.convention = convention;
    }

    public String getNomConvention(){
        return convention.getNom();
    }

    public String getNomPrenom(){
        return getNom()  + " " + getPrenom();
    }

}



