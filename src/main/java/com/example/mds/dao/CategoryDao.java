package com.example.mds.dao;

import com.example.mds.pojo.Category;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CategoryDao extends JpaRepository<Category, Integer> {
}
