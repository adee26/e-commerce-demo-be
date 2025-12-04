package com.adedev.ecommerceappdemo.repository;

import com.adedev.ecommerceappdemo.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductRepository extends JpaRepository<Product, Integer> {
}
