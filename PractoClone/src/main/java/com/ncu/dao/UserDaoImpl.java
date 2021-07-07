package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.ncu.model.Customer;
import com.ncu.model.Login;

@Component
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(Customer customer) {

		String sql = "insert into customer values(?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { customer.getName(), customer.getAge(), customer.getEmail(),
				customer.getNumber(), customer.getPassword() });
	}

	public Customer validateUser(Login login) {

		String sql = "select * from customer where email='" + login.getEmail() + "' and password='"
				+ login.getPassword() + "'";

		List<Customer> users = jdbcTemplate.query(sql, new UserMapper());

		return users.size() > 0 ? users.get(0) : null;
	}

}

class UserMapper implements RowMapper<Customer> {

	public Customer mapRow(ResultSet rs, int arg1) throws SQLException {
		Customer user = new Customer();

		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));
		user.setNumber(rs.getString("number"));
		user.setAge(rs.getInt("age"));

		return user;
	}
}
