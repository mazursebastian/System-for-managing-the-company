package com.example.projekt.service;

import com.example.projekt.dto.OrderDto;
import com.example.projekt.entities.Order;
import com.example.projekt.entities.Product;
import com.example.projekt.repository.OrderRepository;
import com.example.projekt.repository.ProductRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    public void update( OrderDto orderDto) {
        Order newOrder = new Order();
        newOrder.setCity(orderDto.getCity());
        newOrder.setStreet(orderDto.getStreet());
        newOrder.setProduct(orderDto.getProduct());
        newOrder.setPickUpDate(orderDto.getPickUpDate());
        newOrder.setPhoneNumber(orderDto.getPhoneNumber());
        newOrder.setProduct(orderDto.getProduct());
        orderRepository.save(newOrder);
    }
    public OrderService(OrderRepository orderRepository, ProductRepository productRepository) {
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
    }
    public void add(OrderDto orderDto){
        Order newOrder= new Order();
        newOrder.setFirstName(orderDto.getFirstName());
        newOrder.setLastName(orderDto.getLastName());
        newOrder.setCity(orderDto.getCity());
        newOrder.setStreet(orderDto.getStreet());
        newOrder.setPhoneNumber(orderDto.getPhoneNumber());
        newOrder.setProduct(orderDto.getProduct());
        newOrder.setPickUpDate(orderDto.getPickUpDate());
    }
    public void delete(long id){
        orderRepository.deleteById(id);
    }
    public Optional<OrderDto> get(Long id){
        return  orderRepository.findById(id).stream().map(order -> new OrderDto(order.getId(),order.getFirstName(),order.getLastName(),order.getCity(),order.getStreet(),order.getPhoneNumber(),order.getProduct(),order.getPickUpDate())).findFirst();
    }
    public Long orderCount() {
        return orderRepository.count();
    }
    public List<Order> showAll(){return orderRepository.findAll();}
    public List<Product> showAllProducts(){return productRepository.findAll(PageRequest.of(0,4)).getContent();}
}
