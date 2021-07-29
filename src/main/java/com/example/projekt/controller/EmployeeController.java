package com.example.projekt.controller;

import com.example.projekt.dto.EmployeeDto;
import com.example.projekt.entities.Employee;
import com.example.projekt.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.persistence.Basic;
import javax.persistence.EntityExistsException;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller

public class EmployeeController {

    private final EmployeeService employeeService;


    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;

    }

    @ModelAttribute("listemployee")
    public List<Employee> employees() {
        return employeeService.showAll();
    }

    @GetMapping("/")
    public String viewHomePage(Model model) {
        List<Employee> employeesList = employeeService.showAll();
        model.addAttribute("listemployee", employeesList);
        System.out.println("Get / ");
        return "index";
    }


    @GetMapping("/add-employee")
    public ModelAndView add() {
        return new ModelAndView("add-employee", Map.of("employeeform", new EmployeeDto()));
    }

    @PostMapping("/add-employee")
    public String saveEmployee(@ModelAttribute("employeeform") EmployeeDto employee, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "add-employee";
        }

        employeeService.add(employee);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String EditEmployee(@PathVariable Long id, Model model) {
        model.addAttribute("employeeDto", employeeService.get(id));
        return "/edit-employee";
    }

    @PostMapping("/edit")
    public String postEditEmployee(@ModelAttribute("employeeDto") EmployeeDto employeeDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "edit-employee";
        }
        employeeService.update(employeeDto);
        return "redirect:/";

    }

    @RequestMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        employeeService.delete(id);
        return "redirect:/";
    }

    @RequestMapping("/add-employee")
    public String addView() {
        return "add-employee";
    }

    @ModelAttribute("count")
    public Long count() {
        return employeeService.employeeCount();
    }


}
