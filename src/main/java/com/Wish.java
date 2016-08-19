package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "Wish")
@Component
public class Wish {

	@Id
	@Column(name = "ID")
	@GeneratedValue()

	private String id;
	private String Uid;
	private String Pid;
	private String Pcategory;
	private String Pname;
	private double Pprice;
	private String Quantity;
	private String Status;
	private String Pimage;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUid() {
		return Uid;
	}

	public void setUid(String uid) {
		Uid = uid;
	}

	public String getPid() {
		return Pid;
	}

	public void setPid(String pid) {
		Pid = pid;
	}

	public String getPcategory() {
		return Pcategory;
	}

	public void setPcategory(String pcategory) {
		Pcategory = pcategory;
	}

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		Pname = pname;
	}

	public double getPprice() {
		return Pprice;
	}

	public void setPprice(double pprice) {
		Pprice = pprice;
	}

	public String getQuantity() {
		return Quantity;
	}

	public void setQuantity(String quantity) {
		Quantity = quantity;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getPimage() {
		return Pimage;
	}

	public void setPimage(String pimage) {
		Pimage = pimage;
	}

}
