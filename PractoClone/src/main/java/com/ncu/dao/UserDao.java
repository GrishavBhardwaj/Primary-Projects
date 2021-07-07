package com.ncu.dao;

import com.ncu.model.Customer;
import com.ncu.model.Login;

public interface UserDao {

	void register(Customer customer);

	Customer validateUser(Login login);
}
