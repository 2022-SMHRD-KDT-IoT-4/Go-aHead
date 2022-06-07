package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class moduleVO {

	String magnetic; // 붙어있을 때 1, 떨어져있을 때 0
	String alcohol; //음주 측정여부 음주일시 1, 음주가 아닐시 0
	String press; //압력 유 1, 압력무 0
	String GPS; //위도경도 값 
	//3축 자이로
	String camera;
	String motor;
	int piezo;
	
	

}
