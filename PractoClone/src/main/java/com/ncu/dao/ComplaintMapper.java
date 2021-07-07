package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ncu.model.Complaints;

public class ComplaintMapper implements RowMapper<Complaints> {

	@Override
	public Complaints mapRow(ResultSet rs, int rowNum) throws SQLException {
		Complaints comp = new Complaints();
		comp.setId(rs.getInt("id"));
		comp.setStatus(rs.getInt("status"));
		comp.setIssue1(rs.getString("issue1"));
		comp.setIssue2(rs.getString("issue2"));
		comp.setSeverity(rs.getString("severity"));
		comp.setEmail(rs.getString("email"));
		comp.setTreat1(rs.getString("treat1"));
		comp.setTreat2(rs.getString("treat2"));
		comp.setTreat3(rs.getString("treat3"));
		return comp;
	}

}