package com.thinkPro.train.bean.unit;

import java.util.Date;

public class Unit {
	private String unitId;
	private String upUnitId;
	private String unitName;
	private String address;
	private String telephone;
	private String contactPerson;
	private String email;
	private String header;
	private Date createDate;
	private String remark;
	private String unitClass;

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}

	public String getUpUnitId() {
		return upUnitId;
	}

	public void setUpUnitId(String upUnitId) {
		this.upUnitId = upUnitId;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHeader() {
		return header;
	}

	public void setHeader(String header) {
		this.header = header;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUnitClass() {
		return unitClass;
	}

	public void setUnitClass(String unitClass) {
		this.unitClass = unitClass;
	}

	@Override
	public String toString() {
		return "Unit [unitId=" + unitId + ", upUnitId=" + upUnitId
				+ ", unitName=" + unitName + ", address=" + address
				+ ", telephone=" + telephone + ", contactPerson="
				+ contactPerson + ", email=" + email + ", header=" + header
				+ ", createDate=" + createDate + ", remark=" + remark
				+ ", unitClass=" + unitClass + "]";
	}
	
}
