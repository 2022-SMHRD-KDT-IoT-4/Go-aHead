package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UseVO {
	
	private String kick_number;
	private String hel_number;
	private String mem_id;
	private String start_time;

	public UseVO(String kick_number, String hel_number, String mem_id) {

	this.kick_number =kick_number;
	this.hel_number = hel_number;
	this.mem_id = mem_id;

	}
	
	
}
