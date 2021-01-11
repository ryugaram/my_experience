package com.ryu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ryu.service.MemberService;
import com.ryu.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	
	@RequestMapping("/list")
	public String getlist(Model model) {
		
		List<MemberVO> list=null;
		list=service.list();
		model.addAttribute("lists", list);
	
		return "member/list";
	}
	
}
