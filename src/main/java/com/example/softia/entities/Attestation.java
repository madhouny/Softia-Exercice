package com.example.softia.entities;

import javax.persistence.*;

@Entity
@Table
public class Attestation {
    @Id
    @SequenceGenerator(
            name = "attestation_sequence",
            sequenceName = "attestation_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "attestation_sequence"
    )
    private Integer idAttestation;

    @ManyToOne
    private Etudiant etudiant;

    @ManyToOne
    private Convention convention;

    private String message;

    public Attestation() {
    }

    public Integer getIdAttestation() {
        return idAttestation;
    }

    public void setIdAttestation(Integer idAttestation) {
        this.idAttestation = idAttestation;
    }

    public Etudiant getEtudiant() {
        return etudiant;
    }

    public void setEtudiant(Etudiant etudiant) {
        this.etudiant = etudiant;
    }

    public Convention getConvention() {
        return convention;
    }

    public void setConvention(Convention convention) {
        this.convention = convention;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
