package com.ncu.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.ncu.model.SymptomsAndDisease;

@Component()
public class SymptomDao implements SymtomInterfaceDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public SymptomDao(DataSource datasource) {
		jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public int createSymptom(SymptomsAndDisease disease) {
		// TODO Auto-generated method stub
		String query = "insert into symptomnlink(disease , symptoms , incubation , comm , prevention, medicine,link  ) values(" + disease.getDisease() + ",'"
				+disease.getSymptoms() + "','" + disease.getIncubation() + "','" + disease.getComm() + "','" 
				+ disease.getPrevention() + "','" + disease.getMedicine() + "','" + disease.getLink()+ "')";
		return jdbcTemplate.update(query);
	}

	@Override
	public List<SymptomsAndDisease> getSymptomTable() {
		// TODO Auto-generated method stub
		String query = "SELECT * FROM symptomnlink;";
		System.out.println(query);
		return  jdbcTemplate.query(query, new SymptomMapper());
	} 

	@Override
	public void deleteSymptom(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public SymptomsAndDisease getSingleSymptom(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
