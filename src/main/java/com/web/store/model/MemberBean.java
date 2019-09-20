package com.web.store.model;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Member")
public class MemberBean implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer mId; // member id
	private String name; // member name
	private String tel; // phone
	private String addr; // address
	private String saddr; // send address
	private java.sql.Timestamp rdate; // register date
	private String account; // account
	private String password; // password
	private String email; // email
	private java.sql.Timestamp birthday;// birthday
	private String gender; // gender
	private Blob memberImage; // member photo
	private String gmail; // third party login with gmail
	private String line; // third party login with line

	@Transient
	private String pictureURL;

	public String getPictureURL() {
		return pictureURL;
	}

	public void setPictureURL(String pictureURL) {
		this.pictureURL = pictureURL;
	}

	@Transient
	private MultipartFile file;

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSaddr() {
		return saddr;
	}

	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}

	public java.sql.Timestamp getRdate() {
		return rdate;
	}

	public void setRdate(java.sql.Timestamp rdate) {
		this.rdate = rdate;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public java.sql.Timestamp getBirthday() {
		return birthday;
	}

	public void setBirthday(java.sql.Timestamp birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Blob getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(Blob memberImage) {
		this.memberImage = memberImage;
	}

	public String toString() {

		return "[" + mId + "," + name + "," + tel + "," + addr + "," + saddr + "," + rdate + "," + account + ","
				+ password + "," + email + "," + birthday + "," + gender + "," + memberImage + "]";
	}

	public MemberBean() {

	}

	public MemberBean(Integer mId, String name, String tel, String addr, String saddr, Timestamp rdate, String account,
			String password, String email, String birthday, String gender, Blob memberImage) {

		this.mId = mId;
		this.name = name;
		this.tel = (tel);
		this.addr = addr;
		this.saddr = saddr;
		this.rdate = rdate;
		this.account = account;
		this.password = password;
		this.email = email;
		this.birthday = new Timestamp(java.sql.Date.valueOf(birthday).getTime());
		this.gender = gender;
		this.memberImage = memberImage;
	}

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public static java.util.Date convertDate(String temp) {
		java.util.Date result = new java.util.Date();
		try {
			result = sdf.parse(temp);
		} catch (ParseException e) {
			result = null;
			e.printStackTrace();
		}
		return result;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String searchAccountSource() {
		if (this.getAccount() != null) {
			return "origin";
		} else if (this.getGmail() != null) {
			return "gmail";
		} else if (this.getLine() != null) {
			return "line";
		}
		return null;
	}

}