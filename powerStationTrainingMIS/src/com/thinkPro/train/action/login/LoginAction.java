package com.thinkPro.train.action.login;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	private Map session;
	private String userName;
	private String password;
	private boolean status;

	// 实现验证用户登陆，如果成功则将用户登陆状态放入session，失败则返回登陆界面
	public String execute() {

		if (userName.isEmpty()) {
			System.out.println("用户名不能为空");
			return ERROR;

		} else if (userName.equals("张三") && password.equals("123456")) {

			// 输入正确，则将用户名和密码放入session
			this.session.put("userName", userName);
			this.session.put("password", password);
			return SUCCESS;
		}

		return null;
	}

	// 注册功能，将用户名和密码存入数据库，密码经md5加密
	public String register() {
		System.out.println("进入注册界面");
		// MD5Tool md5Tool=new MD5Tool();
		// String newPassword=md5Tool.MD5(password);
		// System.out.println("这是密码"+newPassword);
		// this.session.put("userName", userName);
		status = true;
		System.out.println("用户名" + userName);

		return SUCCESS;
	}

	public String quitSystem() {
		this.session.clear();

		return SUCCESS;
	}

	@Override
	public void setSession(Map session) {
		this.session = session;

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
