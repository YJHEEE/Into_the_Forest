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

import com.forest.forest.model.service.ForestService;
import com.forest.model.vo.Forest;
import com.forest.model.vo.Mount;
import com.kh.mvc.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/forest")
@Controller
public class ForestController {

	@Autowired
	ForestService service;

	@GetMapping("/forest")
	public ModelAndView forestPage(ModelAndView model) {
//		System.out.println(service.selectAll());
		List<Forest> list = service.selectAll();

		model.addObject("list", list);
		model.setViewName("/forest/forest");

		return model;
	}

	@PostMapping("/forest")
	public ModelAndView forestData(ModelAndView model, @RequestParam List<String> param) {
		int page = 1;
		System.out.println("필터 : " + param.toString());

		PageInfo pageInfo = new PageInfo(page, 10, service.selectCount(), 10);
		List<Forest> list = service.selectByFilter(param);
		System.out.println("postController : " + list.toString());

		model.addObject("list", list);
		model.addObject("pageInfo", pageInfo);
		model.setViewName("/forest/forest");

		return model;
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
