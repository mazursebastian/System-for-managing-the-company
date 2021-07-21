package com.example.projekt.controller;

import com.example.projekt.entities.Employee;
import com.example.projekt.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EmployeeController {

    private EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/")
    public String viewHomePage(Model model) {
        List<Employee> employeesList = employeeService.showAll();
        model.addAttribute("listemployee", employeesList);
        System.out.println("Get / ");
        return "index";
    }

    @GetMapping("/add-employee")
    public String add(Model model) {
        model.addAttribute("employee", new Employee());
        return "add-employee";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
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
