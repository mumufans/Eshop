package com.eshop.app.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hubin1 on 2016/12/5.
 */

@Controller
@RequestMapping("")
public class AccountController {

    @RequestMapping("/signin")
    public String signin(){
        return "app/account/signin";
    }
}
