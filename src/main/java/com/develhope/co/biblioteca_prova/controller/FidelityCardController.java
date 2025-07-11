package com.develhope.co.biblioteca_prova.controller;

import com.develhope.co.biblioteca_prova.dto.APIResponse;
import com.develhope.co.biblioteca_prova.dto.PaginationDTO;
import com.develhope.co.biblioteca_prova.models.FidelityCard;
import com.develhope.co.biblioteca_prova.models.Utente;
import com.develhope.co.biblioteca_prova.repository.FidelityCardRepository;
import com.develhope.co.biblioteca_prova.repository.UtenteRepository;
import com.develhope.co.biblioteca_prova.utils.PaginationUtils;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/fidelitycard")
public class FidelityCardController {

    @Autowired
    private UtenteRepository utenteRepository;

    @Autowired
    private FidelityCardRepository fidelityCardRepository;

    @PostMapping("/assegna/{idUtente}")
    public ResponseEntity<APIResponse> assegnaFidelityCard(@PathVariable("idUtente") Integer idUtente,
                                                           @Valid @RequestBody FidelityCard fidelityCard,
                                                           BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            APIResponse apiResponse = new APIResponse(bindingResult.getAllErrors());
            return ResponseEntity.badRequest().body(apiResponse);
        }

        Optional<Utente> optionalUtente = utenteRepository.findById(idUtente);

        if (optionalUtente.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

//        if (fidelityCard.getId() == null) {
//
//        } else {
//            Optional<FidelityCard> optionalFidelity = fidelityCardRepository.findById(fidelityCard.getId());
//        }

        Utente utente = optionalUtente.get();

        if (utente.getFidelityCard() == null) {
            fidelityCard.setUtente(utente);
            return ResponseEntity.ok().body(new APIResponse(fidelityCardRepository.save(fidelityCard)));
        } else {
            return ResponseEntity.badRequest().build();
        }

    }

    @GetMapping()
    public ResponseEntity<APIResponse> findAll(PaginationDTO pagination) {

        Pageable pageable = PaginationUtils.createPage(pagination);
        return ResponseEntity.ok().body(new APIResponse(fidelityCardRepository.findAll(pageable)));
    }

    @GetMapping("/{id}")
    public ResponseEntity<APIResponse> findById(@PathVariable("id") Integer id) {
        Optional<FidelityCard> fidelityCard = fidelityCardRepository.findById(id);
        if (fidelityCard.isPresent()) {
            return ResponseEntity.ok().body(new APIResponse(fidelityCard.get()));
        }
        return ResponseEntity.status(404).body(new APIResponse("Fidelity-card non trovata"));
    }

        @DeleteMapping("/delete/{id}")
        public ResponseEntity<Void> deleteById(@PathVariable ("idUtente") Integer idUtente) {
            if (!fidelityCardRepository.existsById(idUtente)) {
                return ResponseEntity.notFound().build();

            }
            fidelityCardRepository.deleteById(idUtente);
            return ResponseEntity.noContent().build();
        }

    @DeleteMapping("/delete-all-fidelity")
    public ResponseEntity<Void> deleteAll(){
        fidelityCardRepository.deleteAll();
        return ResponseEntity.noContent().build();
    }
    }
