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
		int cnt = service.getMountCount();
		
		model.addObject("list", list);
		model.addObject("cnt", cnt);
		model.setViewName("/mount/mount");

	    return model;
	}
	
	@PostMapping("/mount")
	public ModelAndView mountData(ModelAndView model, String name, String min, String max, String sort,
			String[] areaArray) {
		List<Mount> list = service.findMountFilter(name, min, max, sort, areaArray);
		int cnt = list.size();
		System.out.println("controller list : " + service.findMountFilter(name, min, max, sort, areaArray));
		System.out.println("controller count : " + service.getMountCount());
		
		model.addObject("list", list);
		model.addObject("cnt", cnt);
		model.setViewName("/mount/mount");

		return model;
	}
	
	@GetMapping("/mountDetail")
	public ModelAndView mountainDetail(ModelAndView model, String name) {
		List<Mount> list = service.findMountDetail(name);
		System.out.println("detail : " + service.findMountDetail(name));
		model.addObject("list", list);
		model.setViewName("/mount/mountDetail");
		
		return model;
	}
	
	@GetMapping("/mountTop100")
	public ModelAndView mountainTop(ModelAndView model) {
		List<Mount> list = service.findTop100();
		
		model.addObject("list", list);
		model.setViewName("/mount/mountTop100");
		return model;
	}



}
