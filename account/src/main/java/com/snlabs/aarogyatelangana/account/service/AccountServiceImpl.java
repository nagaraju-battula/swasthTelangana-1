package com.snlabs.aarogyatelangana.account.service;

import com.snlabs.aarogyatelangana.account.beans.LoginUser;
import com.snlabs.aarogyatelangana.account.beans.NewUser;
import com.snlabs.aarogyatelangana.account.beans.Patient;
import com.snlabs.aarogyatelangana.account.beans.UserDetails;
import com.snlabs.aarogyatelangana.account.dao.AccountDao;

public class AccountServiceImpl implements AccountService{
	
	public AccountDao accountDao;

	public AccountServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean createAccount(NewUser user) {
		return accountDao.createAccount(user);
	}

	@Override
	public UserDetails getAccountDetails(LoginUser user) {
		// TODO Auto-generated method stub
		return accountDao.getAccountDetails(user);
	}

	public AccountDao getAccountDao() {
		return accountDao;
	}

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	
	
}