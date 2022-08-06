package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.AccountJDBCTemplate;
import model.Account;

@Controller
public class LoginControllers {
		
	private final AccountJDBCTemplate accountJDBCTemplate;
	public LoginControllers(final AccountJDBCTemplate accountJDBCTemplate) {
		this.accountJDBCTemplate = accountJDBCTemplate;
	}
	

	@RequestMapping(value = {"index.html","login.html", "login"})
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		Account acc = accountJDBCTemplate.getAccount(userName);
		if (userName != null && password != null) {
			if (acc != null && userName.equalsIgnoreCase(acc.getUser()) 
					&& password.equals(acc.getPassword())) {
				List<Account> accounts = this.accountJDBCTemplate.getAccounts();
				Map<String, List<Account>> mapAcc = new HashMap<String, List<Account>>();
				mapAcc.put("accounts", accounts);
				
				ModelAndView mView = new ModelAndView("admin", "accounts", accounts);
				mView.addObject("username", userName);
				
				return mView;
			} else {
				return new ModelAndView("login", "message", "Username or password is invalid");
			}

		}
		return new ModelAndView("login", "message", "Please input username and password");

	}
}
