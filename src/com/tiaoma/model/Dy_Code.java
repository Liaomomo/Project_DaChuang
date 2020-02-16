package com.tiaoma.model;


public class Dy_Code {
	
	String code_id;
	int user_id;
	String  html_url;
	String  img_url;
	String  text;
	
	
	public Dy_Code(String code_id, int user_id, String html_url, String img_url, String text) {
		super();
		this.code_id = code_id;
		this.user_id = user_id;
		this.html_url = html_url;
		this.img_url = img_url;
		this.text = text;
	}
	
	public String getCode_id() {
		return code_id;
	}
	public void setCode_id(String code_id) {
		this.code_id = code_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getHtml_url() {
		return html_url;
	}
	public void setHtml_url(String html_url) {
		this.html_url = html_url;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	

}
