package com.develhope.co.biblioteca_prova.repository;

import com.develhope.co.biblioteca_prova.dto.LibroConCopieDTO;
import com.develhope.co.biblioteca_prova.models.Libro;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface LibroRepository extends JpaRepository<Libro, String> {
    Page<Libro> findByTitoloContains(String titolo, Pageable pageable);

    /*
    SELECT l.titolo, a.nome, a.cognome
    FROM libro l
    JOIN libro_autore la ON l.isbn = la.libro_isbn
    JOIN autore a ON la.autori_id = a.id
    WHERE l.titolo LIKE '%viaggio%'
    AND (a.nome LIKE '%m%'
    OR a.cognome LIKE '%m%');
    * */
    @Query("""
            SELECT l FROM Libro l
            JOIN l.autori a
            WHERE
            (:titolo IS NULL OR l.titolo LIKE CONCAT('%', :titolo, '%'))
            AND
            (:autore IS NULL
            OR CONCAT(a.nome, ' ', a.cognome) LIKE CONCAT('%', :autore, '%')
            )
            """)
    Page<Libro> findByTitoloAndAutore(String titolo, String autore, Pageable pageable);

    //    @NativeQuery("SELECT l.* FROM libro l\n" +
//            "JOIN acquisto a ON  a.libro_isbn = l.isbn\n" +
//            "JOIN ordine o ON  o.id  = a.ordine_id\n" +
//            "WHERE o.stato = 'CONSEGNATO'")
    // sottrarre i libri prestati
    @Query("SELECT l, CAST(SUM(a.numCopie) AS integer) FROM Libro l \n" +
            "JOIN l.acquisti a \n" +
            "JOIN a.ordine o \n" +
            "WHERE o.stato = 'CONSEGNATO' \n" +
            "GROUP BY l.isbn")
    Page<LibroConCopieDTO> findLibriDisponibili(Pageable pageable);

}
