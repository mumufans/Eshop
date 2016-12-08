package com.eshop.app.core.controller;

import com.eshop.app.core.security.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hubin1 on 2016/12/6.
 */
public abstract class BaseController {
    private static Logger logger = Logger.getLogger(BaseController.class);

    public final static String CURRENT_USER_SESSION_KEY = "currentUser";

    public final static String CURRENT_USER_COOKIE_KEY = "jformUserInfo";

    @Autowired
    protected HttpServletRequest request;

    private User currentUser = null;

    protected User getCurrentUser(){
        Object obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(obj instanceof User){
            currentUser = (User)obj;
        }else{
            currentUser = null;
        }
        return currentUser;
    }
}
