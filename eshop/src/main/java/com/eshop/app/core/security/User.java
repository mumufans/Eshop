package com.eshop.app.core.security;

import com.eshop.app.model.Account;
import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by hubin1 on 2016/12/6.
 */
public class User implements Serializable, UserDetails {

    private static final long serialVersionUID = 1L;

    private static Logger logger = Logger.getLogger(User.class);

    private Account account;

    private final List<GrantedAuthority> authorities = new ArrayList<>();

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    public String getPassword() {
        return account.getAccountPwd();
    }

    public String getUsername() {
        return account.getAccountName();
    }

    public boolean isAccountNonExpired() {
        return false;
    }

    public boolean isAccountNonLocked() {
        return false;
    }

    public boolean isCredentialsNonExpired() {
        return false;
    }

    public boolean isEnabled() {
        return true;
    }

    public Account getAccount(){
        return account;
    }

    public void setAccount(Account account){
        this.account = account;
//        setUserAuthorities();
    }

//    private void setUserAuthorities(){
//        if(getAccount() != null){
//            getAuthorities().add(new SimpleGrantedAuthority(getAccount().getAccountName()));
//        }
//    }
}
