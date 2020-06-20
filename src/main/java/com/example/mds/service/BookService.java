package com.example.mds.service;

import com.example.mds.dao.BookDao;
import com.example.mds.pojo.Book;
import com.example.mds.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    BookDao bookDao;
    @Autowired
    CategoryService categoryService;

    //查询所有记录并根据id从大到小排序
    public List<Book> list()
    {
        Sort sort=new Sort(Sort.Direction.DESC,"id");
        return bookDao.findAll(sort);
    }

    //更新记录
    public void addOrUpdate(Book book)
    {
        bookDao.save(book);//save操作，若主键存在则执行update，否则执行insert
    }

    //根据id删除记录
    public void deleteById(int id)
    {
        bookDao.deleteById(id);
    }

    //根据分类cid查询分类，再通过分类查询书籍
    public List<Book> listByCategory(int cid)
    {
        Category category=categoryService.get(cid);
        return bookDao.findAllByCategory(category);
    }

    //模糊查询
    public List<Book> Search(String keywords) {
        return bookDao.findAllByTitleLikeOrAuthorLike('%' + keywords + '%', '%' + keywords + '%');
    }
}
