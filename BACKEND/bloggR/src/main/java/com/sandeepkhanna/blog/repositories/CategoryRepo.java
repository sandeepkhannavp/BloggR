package com.sandeepkhanna.blog.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sandeepkhanna.blog.entities.Category;

public interface CategoryRepo extends JpaRepository<Category, Integer> {

}
