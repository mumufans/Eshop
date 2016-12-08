package com.eshop.app.core.security;

import com.eshop.app.core.controller.BaseController;
import com.eshop.app.core.utils.AuthenticationUtils;
import com.eshop.app.model.Account;
import com.eshop.app.service.AccountService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by hubin1 on 2016/12/6.
 */

@Service
public class AccountAuthenticationProvider implements AuthenticationProvider {

    private static Logger logger = Logger.getLogger(AccountAuthenticationProvider.class);

    @Autowired
    private final HttpServletRequest request = null;

    @Autowired
    AccountService accountService;

    @Override
    @Transactional(noRollbackFor = BadCredentialsException.class)
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        logger.trace("user authentication");
        String username = authentication.getName();
        String password = String.valueOf(authentication.getCredentials());
        Account account = accountService.getByAccountName(username);
        authenticateAccount(account, username, password);
        User user = new User();
        user.setAccount(account);
        request.getSession().setAttribute(BaseController.CURRENT_USER_SESSION_KEY, user);
        return new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
    }

    private void authenticateAccount(Account account, String username, String password){
        String errorMsg = null;
        if(account == null) {
            errorMsg = "用户名不存在";
        }else if (!AuthenticationUtils.generatePassword(password).equals(account.getAccountPwd())){
            errorMsg = "密码错误";
        }
        if (!StringUtils.isEmpty(errorMsg)){
            request.getSession().setAttribute("user_login_name", username);
            throw new BadCredentialsException(errorMsg);
        }
    }

    public boolean supports(Class<?> authentication) {
        return (UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication));
    }
}
