package com.eshop.app.service;

import com.eshop.app.dao.AccountDao;
import com.eshop.app.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Joseph on 2016/12/6.
 */

@Service
public class AccountService {

    @Autowired
    AccountDao accountDao;

    public List<Account> getAll(){
        List<Account> accountList = accountDao.findByCondition();
        return accountList;
    }

    public Account getByAccountName(String accountName){
        return accountDao.findByAccountName(accountName);
    }

}
