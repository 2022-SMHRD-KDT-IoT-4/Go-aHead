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

public class LocationVO {

	@NonNull private int use_number;
	@NonNull private int kick_using;
	private String kick_number;
	@NonNull private String hel_number;
	@NonNull private String mem_id;
	private String start_loc_lat;
	private String start_loc_long;
	private String end_loc_lat;
	private String end_loc_long;
	private String start_time;
	private String end_time;
}
