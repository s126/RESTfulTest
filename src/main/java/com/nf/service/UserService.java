package com.nf.service;

import com.nf.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/2/9.
 */
@Service
public class UserService {

    public List<User> getUserList(){
        List<User> list = new ArrayList<>();
        for(int i= 0; i< 10 ;i ++ ) {
            User user = new User();
            user.setName("张帅" + i );
            user.setAge(i);
            list.add(user);
        }
        return list;

    }
}
