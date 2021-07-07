package com.ncu.dao;

import java.util.List;
import java.util.Map;

import com.ncu.model.Complaints;

public interface IComplaintDao {

	public int addComplaint(Complaints e);

	public List<Map<String, Object>> getProfile(String email);

	public int editProfile(String name, int age, String email, long number);

	public List<Complaints> getComplaints(String email);

	public int editComplaint(int id, int status, String issue1, String issue2, String severity);

	public List<Map<String, Object>> getComplaint(int id);

}
