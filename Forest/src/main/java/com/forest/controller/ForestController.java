package com.forest.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.mvc.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping("/forest")
@Controller
public class ForestController {
	
	
	@GetMapping("/forest")
	public String forest() {
		
		return "/forest/forest";
	}
	@GetMapping("/forestDetail")
	public String forestDetail() {
		return "/forest/forestDetail";
	}
	@GetMapping("/forestInfo")
	public String forestInfo() {
		return "/forest/forestInfo";
	}
	@GetMapping("/forestManager")
	public String forestManager() {
		return "/forest/forestManager";
	}
	@GetMapping("/forestPay")
	public String forestPay() {
		return "/forest/forestPay";
	}
	@GetMapping("/forestPayComplete")
	public String forestPayComplete() {
		return "/forest/forestPayComplete";
	}

}
