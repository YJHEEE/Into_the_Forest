package com.forest.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.forest.model.service.MountService;
import com.forest.model.vo.Mount;
import com.kh.mvc.common.util.PageInfo;

//import lombok.extern.slf4j.Slf4j;

//@Slf4j
@RequestMapping("/mount")
@Controller
public class MountController {

	@Autowired
	MountService service;


	@GetMapping("/mount")
	public ModelAndView mountPage(ModelAndView model) {
		System.out.println(service.findAll());
		List<Mount> list = service.findAll();
		
		
		
		model.addObject("list", list);
		model.setViewName("/mount/mount");

	    return model;
	}
	
	@PostMapping("/mount")
	public ModelAndView mountData(ModelAndView model, String name, String min, String max, String sort,
			String[] areaArray) {
		
		int page = 1;

		PageInfo pageInfo = new PageInfo(page, 10, service.getMountCount(), 10);
		List<Mount> list = service.findMountFilter(name, min, max, sort, areaArray);
		System.out.println("controller list : " + service.findMountFilter(name, min, max, sort, areaArray));
		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("/mount/mount");

		return model;
	}

	@GetMapping("/mountDetail")
	public String mountainDetail() {
		return "/mount/mountDetail";
	}

	@GetMapping("/mountTop100")
	public String mountainTop() {
		return "/mount/mountTop100";
	}



}
