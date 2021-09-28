package com.example.softia.repository;

import com.example.softia.entities.Etudiant;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EtudiantRepository  extends JpaRepository<Etudiant, Integer> {
}
