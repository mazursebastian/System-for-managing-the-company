package com.example.projekt.service;

import com.example.projekt.entities.Product;
import com.example.projekt.repository.ProductRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;
import java.util.List;

@Service
public class ProductService {
    private  final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }
    public void delete(long id) {productRepository.deleteById(id);}
    public Product showById(long id){return productRepository.findById(id).orElseThrow(EntityExistsException::new);}

}
