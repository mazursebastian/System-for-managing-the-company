package com.example.projekt.controller;

import com.example.projekt.dto.EmployeeDto;
import com.example.projekt.entities.Employee;
import com.example.projekt.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.validation.Valid;
import javax.xml.validation.Validator;
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

    @RequestMapping("/edit/{id}")
    public ModelAndView EditEmployee(@PathVariable(name = "id") int id) {
        ModelAndView modelAndView = new ModelAndView("add-employee");
        Employee employee = employeeService.get(id);
        modelAndView.addObject("employee", employee);
        return modelAndView;
    }

    @RequestMapping("/delete/{id}")
    public String deleteStudent(@PathVariable(name = "id") int id) {
        employeeService.delete(id);
        return "redirect:/";
    }

}
