package com.example.softia.repository;

import com.example.softia.entities.Convention;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConventionRepository  extends JpaRepository<Convention, Integer> {
}
