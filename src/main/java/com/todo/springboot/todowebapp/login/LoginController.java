package com.todo.springboot.todowebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
    @RequestMapping(value="/",method = RequestMethod.GET)
    public String gotoLoginPage(ModelMap model){
        model.put("name","in28minutes");
        return "welcome";
    }

}
