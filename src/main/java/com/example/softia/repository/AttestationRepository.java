package com.example.softia.repository;

import com.example.softia.entities.Attestation;
import com.example.softia.entities.Convention;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttestationRepository extends JpaRepository<Attestation, Integer> {
}
