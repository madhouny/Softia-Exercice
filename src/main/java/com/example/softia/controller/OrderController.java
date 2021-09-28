package com.example.softia.controller;

import com.example.softia.entities.Attestation;
import com.example.softia.entities.Convention;
import com.example.softia.entities.Etudiant;
import com.example.softia.repository.AttestationRepository;
import com.example.softia.repository.ConventionRepository;
import com.example.softia.repository.EtudiantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private EtudiantRepository etudiantRepository;
    @Autowired
    private ConventionRepository conventionRepository;

    @Autowired
    private AttestationRepository attestationRepository;

    @PostMapping("/placeOrder")
    public Convention placeOrder(@RequestBody Etudiant request){
        return  conventionRepository.save(request.getConvention());
    }

    //@GetMapping("/etudiants")
    @ModelAttribute("etudiants")
    public List<Etudiant> etudiants(){
        return etudiantRepository.findAll();
    }

    @GetMapping("/exercice")
    public String showForm(Model model){
        Attestation attestation = new Attestation();
        model.addAttribute("attestation", attestation);
        return "exercice_form";
    }

    @PostMapping("/attestation/add")
    public String addAttesation(@RequestParam("idEtudiant") int id  , Model model ,@RequestParam("attestation") String message ){
        //model.getAttribute("message");
        Etudiant etudiant = etudiantRepository.getById(id);
        Attestation attestation = new Attestation();
        attestation.setMessage(message);
        attestation.setEtudiant(etudiant);
        attestation.setConvention(etudiant.getConvention());

        attestationRepository.save(attestation);
        return "exercice_form";
    }

}
