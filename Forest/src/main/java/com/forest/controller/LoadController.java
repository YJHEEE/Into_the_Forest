package com.forest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.forest.model.service.LoadService;
import com.forest.model.vo.Load;
import com.forest.model.vo.Mount;
import com.kh.mvc.common.util.PageInfo;

//import lombok.extern.slf4j.Slf4j;

//@Slf4j
@RequestMapping("/load")
@Controller
public class LoadController {

	@Autowired
	LoadService service;

	@GetMapping("/dulle")
	public ModelAndView dullePage(ModelAndView model) {
//		System.out.println(service.findAll());
		List<Load> list = service.findAll();
		int cnt = service.getLoadCount();
		
		model.addObject("list", list);
		model.addObject("cnt", cnt);
		model.setViewName("/load/dulle");

		return model;
	}
	
	@PostMapping("/dulle")
	public ModelAndView dulleData(ModelAndView model, String name, String min, String max, String sort) {

		System.out.println("controller1 => name : "+name+" / min : "+min+" / max : "+max+" / sort : "+sort);
		List<Load> list = service.findDulleFilter(name, min, max, sort);
		int cnt = service.getLoadCount();
		
		System.out.println("controller2 :"+list.toString());
		
		model.addObject("list", list);
		model.addObject("cnt", cnt);
		model.setViewName("/load/dulle");
		System.out.println("controller3 : "+model.toString());

		return model;
	}
	

	@GetMapping("/trail")
	public String trail() {
		return "/load/trail";
	}

}
