package com.ncu.model;

public class Customer {
	String name;
	int age;
	String email;
	String number;
	String password;

	@Override
	public String toString() {
		return "Customer [name=" + name + ", age=" + age + ", email=" + email + ", number=" + number + ", password="
				+ password + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
