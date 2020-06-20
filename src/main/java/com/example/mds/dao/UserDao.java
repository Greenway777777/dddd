package com.example.mds.dao;

import com.example.mds.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;
// jpa<>中的参数为实体类以及实体类的id的类型
public interface UserDao extends JpaRepository<User,Integer> {

    //根据用户名查询
    User findByUsername(String username);
    //根据用户名和密码查询
    User getByUsernameAndPassword(String username,String password);
}
