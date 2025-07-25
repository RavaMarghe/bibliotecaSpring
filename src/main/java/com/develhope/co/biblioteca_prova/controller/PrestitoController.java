package com.develhope.co.biblioteca_prova.controller;

import com.develhope.co.biblioteca_prova.dto.APIResponse;
import com.develhope.co.biblioteca_prova.dto.PaginationDTO;
import com.develhope.co.biblioteca_prova.models.Prestito;
import com.develhope.co.biblioteca_prova.repository.PrestitoRepository;
import com.develhope.co.biblioteca_prova.service.PrestitoService;
import com.develhope.co.biblioteca_prova.utils.PaginationUtils;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.InvalidDataAccessApiUsageException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeParseException;
import java.util.Objects;
import java.util.Optional;

@RestController
@RequestMapping("/prestiti")
public class PrestitoController {
    @Autowired
    private PrestitoRepository prestitoRepo;
    @Autowired
    private PrestitoService prestitoService;

    @GetMapping
    public ResponseEntity<APIResponse> findAll(
            PaginationDTO pagination,
            @RequestParam(required = false) String data
    ) {
        Pageable pageable = PaginationUtils.createPage(pagination);
        if (data != null) {
            try {
                LocalDate dataPrestito = LocalDate.parse(data);
                Page<Prestito> page = prestitoRepo.findByDataPrestito(dataPrestito, pageable);
                return ResponseEntity.ok(new APIResponse(page));
            } catch (DateTimeParseException e) {
                return ResponseEntity.badRequest()
                        .body(new APIResponse("Inserire una data nel formato corretto"));
            }
        } else {
            return ResponseEntity.ok().body(new APIResponse(prestitoRepo.findAll(pageable)));
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<APIResponse> findById(@PathVariable("id") Integer id) {
        Optional<Prestito> p = prestitoRepo.findById(id);
        if (p.isPresent()) {
            return ResponseEntity.ok().body(new APIResponse(p.get()));
        }
        return ResponseEntity.status(404).body(new APIResponse("Prestito non trovato"));
    }

    //@PostMapping("/{libroIsbn}/{idUtente}")
    @PostMapping
    public ResponseEntity<APIResponse> save(@Valid @RequestBody Prestito prestito,
                                            // PathVariable libroIsbn
                                            // PathVariable idUtente
                                            BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return ResponseEntity.badRequest().body(new APIResponse(bindingResult.getAllErrors()));
        }
        try {
            return ResponseEntity.ok(new APIResponse(prestitoService.save(prestito)));
        } catch (DataIntegrityViolationException | InvalidDataAccessApiUsageException e) {
            return ResponseEntity.badRequest().body(new APIResponse(e.getMessage() + " " + e.getRootCause()));
        }
    }

    @GetMapping({"/filter", "/filter/{day}"})
    public ResponseEntity<APIResponse> filter(
            @PathVariable(value = "day", required = false) Integer day, //, defaultValue = "30"??
                                             PaginationDTO pagination
            ) {
        if (day == null) {
            day = 30; // default manuale pk non lo fa su path??? fra aiuto
        }

        if (day < 0) {
            return ResponseEntity.badRequest().body(new APIResponse("Il numero di giorni deve essere positivo"));
        }
        Pageable pageable = PaginationUtils.createPage(pagination);
        Page<Prestito> prestiti = prestitoService.getPrestitiDaAlmenoNGiorni(day, pageable);

        if (prestiti.isEmpty()) {
            return ResponseEntity.badRequest()
                    .body(new APIResponse("Nessun prestito ha i giorni selezionati"));
        }

        return ResponseEntity.ok(new APIResponse( prestiti));


    }
}
