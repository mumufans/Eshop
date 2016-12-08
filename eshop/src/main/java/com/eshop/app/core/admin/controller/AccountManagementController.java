package com.eshop.app.core.admin.controller;

import com.eshop.app.model.Account;
import com.eshop.app.service.AccountService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by hubin1 on 2016/12/6.
 */

@Controller
@RequestMapping("/management/account")
public class AccountManagementController {

    public static Logger logger = Logger.getLogger(AccountManagementController.class);

    @Autowired
    AccountService accountService;

    @RequestMapping("/list")
    public String list(Model model){
        List<Account> accountList = accountService.getAll();
        model.addAttribute("accountList", accountList);
        return "admin/accountList";

    }
}
