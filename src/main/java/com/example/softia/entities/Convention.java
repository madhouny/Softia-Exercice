package com.example.softia.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
@Table
@Entity
public class Convention implements Serializable {
    @Id
    @SequenceGenerator(
            name = "convention_sequence",
            sequenceName = "convention_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "convention_sequence"
    )
    private Integer idConvention;
    private String nom;
    private int nbHeur;

    public Convention() {
    }

    public Convention(String nom, int nbHeur) {
        this.nom = nom;
        this.nbHeur = nbHeur;

    }

    public Integer getIdConvention() {
        return idConvention;
    }

    public void setIdConvention(Integer idConvention) {
        this.idConvention = idConvention;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getNbHeur() {
        return nbHeur;
    }

    public void setNbHeur(int nbHeur) {
        this.nbHeur = nbHeur;
    }

}

