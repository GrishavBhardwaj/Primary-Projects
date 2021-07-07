package com.ncu.model;

public class Complaints {

	int id;
	int status;
	String issue1;
	String issue2;
	String severity;
	String email;
	String treat1;
	String treat2;
	String treat3;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getIssue1() {
		return issue1;
	}

	public void setIssue1(String issue1) {
		this.issue1 = issue1;
	}

	public String getIssue2() {
		return issue2;
	}

	public void setIssue2(String issue2) {
		this.issue2 = issue2;
	}

	public String getSeverity() {
		return severity;
	}

	public void setSeverity(String severity) {
		this.severity = severity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTreat1() {
		return treat1;
	}

	public void setTreat1(String treat1) {
		this.treat1 = treat1;
	}

	public String getTreat2() {
		return treat2;
	}

	public void setTreat2(String treat2) {
		this.treat2 = treat2;
	}

	public String getTreat3() {
		return treat3;
	}

	public void setTreat3(String treat3) {
		this.treat3 = treat3;
	}

}
