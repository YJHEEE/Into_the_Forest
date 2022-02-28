package com.forest.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Forest {
	private int forest_key;
	private String forest_name;
	private String forest_category;
	private String forest_oper;
	private String forest_info;
	private String forest_cityName;
	private String forest_addr;
	private String forest_phone;
	private String Check_in;
	private String Check_out;
	private String person;
	private String amenities;
	private String url;
	private String latitude;
	private String longitude;
}
