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
public class HelmetVO {

	@NonNull private String hel_number;
	private int hel_lost;
	private int hel_damage;
	private String hel_check;
	@NonNull private String hel_loc_lat;
	@NonNull private String hel_loc_long;
}
