package com.develhope.co.biblioteca_prova.repository;

import com.develhope.co.biblioteca_prova.models.Utente;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UtenteRepository extends JpaRepository<Utente, Integer> {
    Optional<Utente> findByUsername(String username);
}
