package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class moduleVO {

	String magnetic; // �پ����� �� 1, ���������� �� 0
	String alcohol; //���� �������� �����Ͻ� 1, ���ְ� �ƴҽ� 0
	String press; //�з� �� 1, �з¹� 0
	String GPS; //�����浵 �� 
	//3�� ���̷�
	String camera;
	String motor;
	int piezo;
	
	
	public moduleVO(String alcohol) {
		this.alcohol = alcohol;
	}
	
	

}
