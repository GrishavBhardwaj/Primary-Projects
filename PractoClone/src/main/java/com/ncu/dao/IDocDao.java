package com.ncu.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import com.ncu.model.Complaints;

@Component("idoc")
public interface IDocDao {

	//public void addTreatment();
	//public String getDetails();
	public List<Complaints> getComplaints(); 
	
	
	
	
}
