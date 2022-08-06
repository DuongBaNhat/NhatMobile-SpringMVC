package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import model.Account;

public class AccountMapper implements RowMapper<Account> {

	@Override
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account acc = new Account();
		acc.setUser(rs.getString("user_mail"));
		acc.setPassword(rs.getString("password"));
		acc.setRole(rs.getInt("account_role"));
		acc.setName(rs.getString("user_name"));
		acc.setAddress(rs.getString("user_address"));
		acc.setPhone(rs.getString("user_phone"));
		return acc;
	}

}
