package com.example.mds.service;

import com.example.mds.dao.UserDao;
import com.example.mds.pojo.User;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.util.HtmlUtils;

@Service
public class UserService {
    @Autowired
    UserDao userDAO;

    //判断用户是否存在
    public boolean isExist(String username)
    {
        User user=getByName(username);
        return null!=user;
    }

    //根据用户名查询
    public User getByName(String username)
    {
        return userDAO.findByUsername(username);
    }

    //根据用户名和密码查询
    public User get(String username,String password)
    {
        return userDAO.getByUsernameAndPassword(username,password);
    }

    //添加用户记录
    public void add(User user)
    {
        userDAO.save(user);
    }

    public int register(User user) {
        String username = user.getUsername();
        String password = user.getPassword();

        username = HtmlUtils.htmlEscape(username);
        user.setUsername(username);

        if (username.equals("") || password.equals("")) {
            return 0;
        }

        boolean exist = isExist(username);

        if (exist) {
            return 2;
        }

        // 默认生成 16 位盐
        String salt = new SecureRandomNumberGenerator().nextBytes().toString();
        int times = 2;
        String encodedPassword = new SimpleHash("md5", password, salt, times).toString();

        user.setSalt(salt);
        user.setPassword(encodedPassword);

        userDAO.save(user);

        return 1;
    }
}

