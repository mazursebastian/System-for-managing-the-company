package com.example.projekt.controller;

import com.example.projekt.dto.EmployeeDto;
import com.example.projekt.dto.OrderDto;
import com.example.projekt.entities.Institution;
import com.example.projekt.entities.Order;
import com.example.projekt.entities.Product;
import com.example.projekt.service.OrderService;
import com.example.projekt.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller
public class OrderController {
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/show-orders")
    public String viewInstitution(Model model) {
        List<Order> orderList = orderService.showAll();
        model.addAttribute("orderList", orderList);
        System.out.println("Get / ");
        return "/show-orders";
    }
    @ModelAttribute("orderList")
    public List<Order> orders() {
        return orderService.showAll();
    }

    @GetMapping("/show-order")
    public String viewOrder(Model model) {
        List<Order> orderList = orderService.showAll();
        model.addAttribute("listorders", orderList);
        System.out.println("Get /");
        return "/show-order";
    }

    @ModelAttribute("products")
    public List<Product> products() {
        return orderService.showAllProducts();
    }

    @GetMapping("/add-order")
    public ModelAndView add() {
        return new ModelAndView("add-order", Map.of("orderform", new OrderDto()));
    }

    @PostMapping("/add-order")
    public String saveOrder(@Valid @ModelAttribute("orderform") OrderDto orderDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "add-order";
        }
        orderService.add(orderDto);
        return "/add-order-done";
    }

    @RequestMapping("/deleteOrder/{id}")
    public String deleteOrder(@PathVariable Long id) {
        orderService.delete(id);
        return "show-orders";
    }

    @GetMapping("/editOrder/{id}")
    public String editOrder(@PathVariable(value = "id") Long id, Model model) {

        model.addAttribute("orderDto", orderService.get(id));
        return "/edit-order";
    }


    @PostMapping("/editorder")
    public String postEditOrder(OrderDto orderDto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "edit-order";
        }
        orderService.update(orderDto);
        return "redirect:/index";

    }

    @ModelAttribute("ordercount")
    public Long count() {
        return orderService.orderCount();
    }

    @RequestMapping("/add-order-done")
    public String orderDone() {
        return "add-order-done";
    }

}
