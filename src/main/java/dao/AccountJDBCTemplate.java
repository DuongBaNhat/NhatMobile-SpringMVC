package dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import mapper.AccountMapper;
import model.Account;

public class AccountJDBCTemplate {
	private JdbcTemplate jdbcTemplateObj;

	public void setDataSource(final DriverManagerDataSource dataSource) {
		this.jdbcTemplateObj = new JdbcTemplate(dataSource); 
	}

	public Account getAccount(String email) {
		String sql = "select * from account where user_mail = ?";
		try {
			return this.jdbcTemplateObj.queryForObject(sql, new AccountMapper(), new Object[] { email });
		} catch (Exception e) {
			return null;
		}
	}
	
	public List<Account> getAccounts() {
		String sql = "select * from account";
		try {
			return this.jdbcTemplateObj.query(sql, new AccountMapper());
		} catch (Exception e) {
			return null;
		}
	}

}
