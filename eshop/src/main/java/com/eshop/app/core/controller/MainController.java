package com.eshop.app.core.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Joseph on 2016/12/7.
 */
@Controller
public class MainController {

    private final Logger logger = Logger.getLogger(this.getClass());

    @RequestMapping("")
    public String index(){
        return "app/main";
    }
}
