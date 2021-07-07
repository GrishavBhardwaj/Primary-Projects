package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.ncu.model.Complaints;


public class DocMapper implements RowMapper<Complaints>  {
	
	  @Override
	  public Complaints mapRow(ResultSet rs, int rowNum) throws SQLException {
		  Complaints comp = new Complaints();
	      comp.setEmail(rs.getString("email"));
	      comp.setId(rs.getInt("id"));
	      comp.setIssue1(rs.getString("issue1"));
	      comp.setIssue2(rs.getString("issue2"));
	      comp.setSeverity(rs.getString("severity"));
	      comp.setStatus(rs.getInt("status"));
	      return comp;
	   }
	
}
