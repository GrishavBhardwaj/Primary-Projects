package com.ncu.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ncu.model.SymptomsAndDisease;

public class SymptomMapper implements  RowMapper<SymptomsAndDisease>{

	@Override
	public SymptomsAndDisease mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		SymptomsAndDisease symp = new SymptomsAndDisease();
		symp.setNum(rs.getInt("num"));
			symp.setDisease(rs.getString("disease"));
			symp.setSymptoms(rs.getString("symptoms"));
			symp.setIncubation(rs.getString("incubation"));
			symp.setComm(rs.getString("comm"));
			symp.setPrevention(rs.getString("prevention"));
			symp.setMedicine(rs.getString("medicine"));
			symp.setLink(rs.getString("link"));
	        return symp;
	}

}
