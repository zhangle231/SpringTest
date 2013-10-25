package com.cyou.ctu.service;

import com.cyou.ctu.model.UserInfo;

public class LoginService {
	public UserInfo login(String name, String password) {
		UserInfo userInfo = new UserInfo();
		userInfo.setName(name);
		userInfo.setPassword(password);
		return userInfo;
	}
}
