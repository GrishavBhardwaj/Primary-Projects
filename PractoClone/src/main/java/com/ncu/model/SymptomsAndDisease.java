package com.ncu.model;

public class SymptomsAndDisease {
	int num;
	String disease;
	String symptoms;
	String incubation;
	String comm;
	String prevention;
	String medicine;
	String link;
	
	
	
	public SymptomsAndDisease() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "SymptomsAndDisease [num=" + num + ", disease=" + disease + ", symptoms=" + symptoms + ", incubation="
				+ incubation + ", comm=" + comm + ", prevention=" + prevention + ", medicine=" + medicine + ", link="
				+ link + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getIncubation() {
		return incubation;
	}
	public void setIncubation(String incubation) {
		this.incubation = incubation;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public String getPrevention() {
		return prevention;
	}
	public void setPrevention(String prevention) {
		this.prevention = prevention;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	

	
}
