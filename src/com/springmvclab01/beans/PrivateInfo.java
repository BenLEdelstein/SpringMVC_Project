package com.springmvclab01.beans;

import java.util.Date;

import javax.validation.constraints.Size;

public class PrivateInfo {
	private Long ssn;
	@Size(min=9, max=9)
	private String ssnString;
	private Long ccn;
	@Size(min=8, max=11)
	private String ccnString;
	private Date dob;
	
	public Long getSsn() {
		return ssn;
	}
	public void setSsn(Long ssn) {
		this.ssn = ssn;
	}
	public String getSsnString() {
		return ssnString;
	}
	public void setSsnString(String ssnString) {
		this.ssnString = ssnString;
		try {
			ssn = Long.parseLong(ssnString);
		}catch(Exception e) {}
	}
	public Long getCcn() {
		return ccn;
	}
	public void setCcn(Long ccn) {
		this.ccn = ccn;
	}
	public String getCcnString() {
		return ccnString;
	}
	public void setCcnString(String ccnString) {
		this.ccnString = ccnString;
		try {
			ccn = Long.parseLong(ccnString);
		}catch(Exception e) {}
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	
	
}
