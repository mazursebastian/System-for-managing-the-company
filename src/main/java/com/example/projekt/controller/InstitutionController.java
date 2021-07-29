package com.example.projekt.controller;

import com.example.projekt.dto.InstitutionDto;
import com.example.projekt.entities.Institution;
import com.example.projekt.service.InstitutionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class InstitutionController {
    private final InstitutionService institutionService;

    public InstitutionController(InstitutionService institutionService) {
        this.institutionService = institutionService;
    }

    @ModelAttribute("listinstitutions")
    public List<Institution> institutionList() {
        return institutionService.showAll();
    }
    @GetMapping("/show-institutions")
    public String viewInstitution(Model model) {
        List<Institution> institutionList = institutionService.showAll();
        model.addAttribute("listinstitutions", institutionList);
        System.out.println("Get / ");
        return "/show-institutions";
    }



    @GetMapping("add-institution")
    public ModelAndView add() {return new ModelAndView("add-institution", Map.of("institutionform", new InstitutionDto()));}

    @PostMapping("add-institution")
    public String saveInstitution(@ModelAttribute("institutionform") InstitutionDto institutionDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "add-institution";
        }
        institutionService.addInstitution(institutionDto);
        return "/show-institutions";
    }



    @RequestMapping("add-institution")
    public String addInstitutionView() {
        return "add-institution";

    }

    @ModelAttribute("institutioncount")
    public Long count() {
        return institutionService.institutionCount();
    }
    @RequestMapping("/deleteInstitution/{id}")
    public String deleteInstitution(@PathVariable Long id) {
     institutionService.delete(id);
        return "redirect:/";
    }
}


