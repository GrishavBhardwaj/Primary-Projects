package com.ncu.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ncu.model.Complaints;

@Repository
public class ComplaintDao implements IComplaintDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public ComplaintDao(DataSource datasource) {
		jdbcTemplate = new JdbcTemplate(datasource);
	}

	public int addComplaint(Complaints e) {
		String query = "insert into complaint(status, issue1, issue2, severity, email, treat1, treat2, treat3) values("
				+ e.getStatus() + ",'" + e.getIssue1() + "','" + e.getIssue2() + "','" + e.getSeverity() + "','"
				+ e.getEmail() + "' , '' , '' , '')";

		return jdbcTemplate.update(query);
	}

	public List<Map<String, Object>> getProfile(String email) {
		String query = "Select * from customer where email = '" + email + "'";

		return jdbcTemplate.queryForList(query);
	}

	public int editProfile(String name, int age, String email, long number) {
		String query = "Update customer set name = '" + name + "', age=" + age + "," + "number=" + number
				+ " where email = '" + email + "'";

		return jdbcTemplate.update(query);
	}

	public List<Complaints> getComplaints(String email) {
		String query = "Select * from complaint where email = '" + email + "'";

		List<Complaints> comps = jdbcTemplate.query(query, new ComplaintMapper());

		return comps;
	}

	public int editComplaint(int id, int status, String issue1, String issue2, String severity) {
		String query = "Update complaint set status = " + status + ", issue1 = '" + issue1 + "', issue2 = '" + issue2
				+ "', severity = '" + severity + "' where id = " + id;

		return jdbcTemplate.update(query);
	}

	public List<Map<String, Object>> getComplaint(int id) {
		String query = "Select * from complaint where id = '" + id + "'";

		return jdbcTemplate.queryForList(query);
	}
}
