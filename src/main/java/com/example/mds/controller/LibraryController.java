package com.example.mds.controller;

import com.example.mds.pojo.Book;
import com.example.mds.service.BookService;
import com.example.mds.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class LibraryController {
    @Autowired
    BookService bookService;

    @CrossOrigin
    @GetMapping(value = "/api/books")
    @ResponseBody
    public List<Book> list()
    {
        return bookService.list();
    }

    @CrossOrigin
    @PostMapping(value = "/api/books")
    @ResponseBody
    public Book addOrUpdate(@RequestBody Book book) throws Exception
    {
        bookService.addOrUpdate(book);
        return book;
    }

    @CrossOrigin
    @PostMapping(value = "/api/delete")
    @ResponseBody
    public void delete(@RequestBody Book book) throws Exception
    {
        bookService.deleteById(book.getId());
    }

    @CrossOrigin
    @GetMapping(value = "/api/category/{cid}/books")
    @ResponseBody
    public List<Book> listByCategory(@PathVariable("cid") int cid) throws Exception
    {
        if(0!=cid)
        {
            return bookService.listByCategory(cid);
        }
        else
        {
            return list();
        }
    }

    @CrossOrigin
    @GetMapping("/api/search")
    @ResponseBody
    public List<Book> searchResult(@RequestParam("keywords") String keywords) {
        // 关键词为空时查询出所有书籍
        if ("".equals(keywords)) {
            return bookService.list();
        } else {
            return bookService.Search(keywords);
        }
    }

    @CrossOrigin
    @PostMapping("api/covers")
    @ResponseBody
    public String coversUpload(MultipartFile file) throws Exception {
        String folder = "D:/Medicalcreditsystem/mds/src/main/resources/static/static/img";
        File imageFolder = new File(folder);
        File f = new File(imageFolder, StringUtils.getRandomString(16) + file.getOriginalFilename()
                .substring(file.getOriginalFilename().length() - 4));
        if (!f.getParentFile().exists())
            f.getParentFile().mkdirs();
        try {
            file.transferTo(f);
            String imgURL = "http://localhost:8443/api/file/" + f.getName();
            return imgURL;
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }
}
