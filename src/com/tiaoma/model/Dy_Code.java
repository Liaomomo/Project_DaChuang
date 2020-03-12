package com.tiaoma.model;


public class Dy_Code {
	
	String code_id;
	int user_id;
	String  title;
	String  html_url;
	String  img_url;
	String  text;
	String create_date;
	
	
	
	
	
	public Dy_Code(String code_id, int user_id, String title, String html_url, String img_url, String text,
			String create_date) {
		super();
		this.code_id = code_id;
		this.user_id = user_id;
		this.title = title;
		this.html_url = html_url;
		this.img_url = img_url;
		this.text = text;
		this.create_date = create_date;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_code(String create_date) {
		this.create_date = create_date;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	

}
