package com.nf.controller;

import com.nf.model.User;
import com.nf.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/2/9.
 */
@Controller
@RequestMapping("/users")
public class UserController {

    private List<User> userList = null;

    @Resource
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        if(userList == null) {
            userList = userService.getUserList();
        }
        model.addAttribute("userList",userList);

        return "user/index";
    }

    @RequestMapping(value = "{id}",method = RequestMethod.GET)
    public String show(@PathVariable int id, Model model){
        User user = userList.get(id);
        model.addAttribute("user", user);
        return "user/show";
    }



    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(User user) {
        return "user/add";
    }
    @RequestMapping(method = RequestMethod.POST)
    public String create(User user) {
        userList.add(user);

        return "redirect:/users";
    }


    @RequestMapping(value = "{id}/edit",method = RequestMethod.GET)
    public String edit(@PathVariable int id, Model model) {
        User user = userList.get(id);
        model.addAttribute("user",user);
        model.addAttribute("id", id);
        return "user/edit";
    }

    @RequestMapping(value = "{id}",method = RequestMethod.PUT)
    public String update(User user,@PathVariable int id){
        userList.set(id, user);
        return "redirect:/users";
    }


    @RequestMapping(value = "{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public String delete(@PathVariable int id){
        userList.remove(id);
        return "success";
    }



}
