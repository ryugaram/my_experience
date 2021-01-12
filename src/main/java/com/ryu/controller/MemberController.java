package com.ryu.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String getwrite() {
		return "member/write";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postwrite(MemberVO vo) {
		
		service.write(vo);
		
		return "redirect:/member/list";
		
	}
	
	@RequestMapping("/view")
	public String view(@RequestParam("bno") int bno,Model model) {
		
		MemberVO vo=service.view(bno);
		model.addAttribute("viewlist",vo);
		
		return "member/view";
	}
	
	
	
	
}
