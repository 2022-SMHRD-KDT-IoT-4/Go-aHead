package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//3축 자이로
@Data
@AllArgsConstructor
@NoArgsConstructor
public class downVO {
	int speedX;
	int speedY;
	int speedZ;
	
	int angleX;
	int angleY;
	int angleZ;
	int alert;
}