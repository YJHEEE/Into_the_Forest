package com.kh.mvc.forest.controller;

import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//import lombok.extern.slf4j.Slf4j;

//@Slf4j
@RequestMapping("/user")
@Controller
public class UserController {
	
	
	@GetMapping("/user")
	public String user() {
		return "/user/user";
	}
	@GetMapping("/userInfo")
	public String userInfo() {
		return "/user/userInfo";
	}
	@GetMapping("/userReservation")
	public String userReservation() {
		return "/user/userReservation";
	}
	@GetMapping("/userReservationDetail")
	public String userReservationDetail() {
		return "/user/userReservationDetail";
	}
	@GetMapping("/userReview")
	public String userReview() {
		return "/user/userReview";
	}
	@GetMapping("/userStamp")
	public String userStamp() {
		return "/user/userStamp";
	}
	
}
