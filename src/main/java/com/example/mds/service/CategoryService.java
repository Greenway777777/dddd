package com.example.mds.service;

import com.example.mds.dao.CategoryDao;
import com.example.mds.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    CategoryDao categoryDao;

    //查询所有记录并根据id从大到小排序
    public List<Category> list()
    {
        Sort sort=new Sort(Sort.Direction.DESC,"id");
        return categoryDao.findAll(sort);
    }

    //根据id查询记录
    public Category get(int id)
    {
        Category category=categoryDao.findById(id).orElse(null);
        return category;
    }
}
