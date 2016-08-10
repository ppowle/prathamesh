package com;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "PRODUCT")
@Component
public class Product {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String p_id;
	private String p_name;
	private String p_class;
	private String p_engine;
	private int p_price;
	private String p_type;
	private String p_owner;
	private String image;

	@Transient
	private MultipartFile ipath;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_class() {
		return p_class;
	}

	public void setP_class(String p_class) {
		this.p_class = p_class;
	}

	public String getP_engine() {
		return p_engine;
	}

	public void setP_engine(String p_engine) {
		this.p_engine = p_engine;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_owner() {
		return p_owner;
	}

	public void setP_owner(String p_owner) {
		this.p_owner = p_owner;
	}

	public MultipartFile getIpath() {
		return ipath;
	}

	public void setIpath(MultipartFile ipath) {
		this.ipath = ipath;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getFilePath(String path1, String contextpath) {

		String fileName = null;
		if (!ipath.isEmpty()) {
			try {

				fileName = ipath.getOriginalFilename();
				byte[] bytes = ipath.getBytes();
				String npath = path1 + "\\resources\\" + fileName;
				// String npath="/App/reources/"+fileName;
				BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(npath)));
				buffStream.write(bytes);
				buffStream.close();
				String dbfilename = contextpath + "/resources/" + fileName;

				this.setImage(dbfilename);
				return dbfilename;
			} catch (Exception e) {
				return "You failed to upload " + fileName + ": " + e.getMessage();
			}
		} else {
			return "Unable to upload. File is empty.";
		}

	}

}
