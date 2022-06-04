package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private int mem_num;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_gender;
	private String mem_blood;
	private String mem_phone;
	private String mem_subphone;
	private String mem_birth;
	private String drivenum;
	

}
