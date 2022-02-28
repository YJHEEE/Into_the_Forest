package com.forest.model.vo;

import java.util.List;

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
public class Board {
	private int no;
	private String title;
	private String content;
	private String category;
	private int readCount;
	private String field1;
	private String field2;
	private String field3;
	private String field4;
	private String field5;
	private String id;
	private List<Reply> replies;
	
}