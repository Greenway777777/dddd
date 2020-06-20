package com.example.mds.dao;

import com.example.mds.pojo.Book;
import com.example.mds.pojo.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookDao extends JpaRepository<Book,Integer> {

    //根据分类查询所有记录
    List<Book> findAllByCategory(Category category);
    //根据标题或作者模糊查询
    List<Book> findAllByTitleLikeOrAuthorLike(String title,String author);

}
