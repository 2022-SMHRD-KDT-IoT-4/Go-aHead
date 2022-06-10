package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UseVO {
	
	private String kick_num;
	private String hel_num;
	private String mem_id;
	private String start_time;

	public UseVO(String kick_num, String hel_num, String mem_id) {

	this.kick_num =kick_num;
	this.hel_num = hel_num;
	this.mem_id = mem_id;

	}
	
	
}
