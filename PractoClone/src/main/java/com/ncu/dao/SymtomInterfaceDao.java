package com.ncu.dao;

import java.util.List;

import com.ncu.model.SymptomsAndDisease;

public interface SymtomInterfaceDao {

	public int createSymptom(SymptomsAndDisease Product);

	public List<SymptomsAndDisease> getSymptomTable();

	public void deleteSymptom(int id);

	public SymptomsAndDisease getSingleSymptom(int id);

}
