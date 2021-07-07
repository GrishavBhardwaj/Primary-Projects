package com.ncu.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.ncu.model.Complaints;
import com.ncu.model.SymptomsAndDisease;

@Component()
public class DocDao implements IDocDao {

	@Autowired
	private JdbcTemplate jdbcTemplateObject;
	
	
	
	public DocDao(DataSource dataSource) {
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
//	@Override
//	public List<SymptomsAndDisease> getSymptomTable() {
//		// TODO Auto-generated method stub
//		String query = "SELECT * FROM symptoms;";
//		System.out.println(query);
//		return  jdbcTemplate.query(query, new SymptomMapper());
//	} 

	public List<Complaints> getComplaints() {
		String SQL = "Select * from complaint where status = 0";
		List<Complaints> comps = jdbcTemplateObject.query(SQL, new DocMapper());
		return comps;
	}
	
	public List<Complaints> getparticularComplaint(String issue, int id) {
		String SQL = "Select * from complaint where id=" + "\""+id+ "\"" + "AND issue1="+ "\"" +issue+ "\"" + "AND status=0";
		List<Complaints> comps = jdbcTemplateObject.query(SQL, new DocMapper());
		return comps;
	}
	
	
	public int treatComplaint(String treat1,String treat2,String treat3,int id, String issue) {
		String SQL = "UPDATE complaint SET status = 1,"+"treat1=" +"\""+treat1+"\""+",treat2="+"\""+treat2+"\""+",treat3=" + "\""+treat3+"\"" + "where id=" + "\""+ id+ "\"" + "AND issue1="+ "\"" +issue+ "\"" ;
		int comps = jdbcTemplateObject.update(SQL);;
		return comps;
	}
}
