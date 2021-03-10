package com.board.domain;

import java.util.Date;

public class BoardVO {

	/*
	 * CREATE TABLE tbl_custom( busi_num CHAR(20) NOT NULL , short_ CHAR(20) NULL ,
	 * custom CHAR(20) NOT NULL, ceo CHAR(10) NULL , charge_person CHAR(10) NULL ,
	 * busi_condition CHAR(10) NULL, item CHAR(10) NULL , post_num CHAR(10) , addr1
	 * VARCHAR(80), addr2 VARCHAR(80) NULL, tel CHAR(10) NULL, fax CHAR(10) NULL ,
	 * homepage CHAR(10) NULL, co_yn CHAR(1) NULL , foreign_yn CHAR(1) NULL , tax_yn
	 * CHAR(1) NULL , country_eng CHAR(20) NULL, country_kor CHAR(20) NULL ,
	 * special_relation CHAR(1) NULL , contract_period_s DATE NULL ,
	 * contract_period_e DATE NULL , regi_info_man CHAR(10) NULL , regi_info_date
	 * DATE NULL , modi_info_man CHAR(10) NULL , modi_info_date DATE NULL , PRIMARY
	 * KEY (busi_num) );
	 */

	private String busi_num;
	private String short_;
	private String custom;
	private String ceo;
	private String charge_person;
	
	
	public String getBusi_num() {
		return busi_num;
	}
	public void setBusi_num(String busi_num) {
		this.busi_num = busi_num;
	}
	public String getShort_() {
		return short_;
	}
	public void setShort_(String short_) {
		this.short_ = short_;
	}
	public String getCustom() {
		return custom;
	}
	public void setCustom(String custom) {
		this.custom = custom;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getCharge_person() {
		return charge_person;
	}
	public void setCharge_person(String charge_person) {
		this.charge_person = charge_person;
	}
	
	/*
	 * private String busi_condition; private String item; private String post_num;
	 * private String addr1; private String addr2; private String tel; private
	 * String fax; private String homepage; private String co_yn; private String
	 * foreign_yn; private String tax_yn; private String country_eng; private String
	 * country_kor; private String special_relation; private Date contract_period_s;
	 * private Date contract_period_e; private String regi_info_man; private Date
	 * regi_info_date; private String modi_info_man; private Date modi_info_date;
	 */

}