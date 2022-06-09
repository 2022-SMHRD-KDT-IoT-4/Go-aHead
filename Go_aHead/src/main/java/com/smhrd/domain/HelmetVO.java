package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class HelmetVO {

   private String hel_number;
   private int hel_lost;
   private int hel_damage;
   private String hel_check;
   private String hel_loc_lat;
   private String hel_loc_long;
}