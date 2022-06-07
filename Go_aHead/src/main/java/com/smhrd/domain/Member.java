package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Member {
	private int mem_num;
	@NonNull private String mem_id;
	@NonNull private String mem_pw;
	@NonNull private String mem_name;
	@NonNull private String mem_gender;
	@NonNull private String mem_blood;
	@NonNull private String mem_phone;
	private String mem_subphone;
	private String mem_birth;
	@NonNull private String drivenum;
	

}
