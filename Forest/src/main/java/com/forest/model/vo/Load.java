package com.forest.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Load {
	private String key;
	
	private String catogory;
	
	private String name;
	
	private String address;
	
	private String waypoint;
	
	private String intro;
	
	private String introDetail;
	
	private String start;
	
	private String end;
	
	private String mKey;
}
