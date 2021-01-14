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
	
	@RequestMapping("/test")
	public String test() {
		return "member/test";
	}
	
	@RequestMapping("/list")
	public String getlist(Model model) {
		
		List<MemberVO> list=null;
		list=service.list();
		int count=service.count();
		model.addAttribute("lists", list);
		model.addAttribute("count", count);
	
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
	
	
	@RequestMapping(value="/modify", method= RequestMethod.GET)
	public void modify(@RequestParam("bno")int bno, Model model) {
		
		MemberVO vo=service.view(bno);
		model.addAttribute("viewlist",vo);
		
	}
	
	@RequestMapping(value="/modify", method= RequestMethod.POST)
	public String postmodify(MemberVO vo) {
		
		service.modify(vo);
		
		return "redirect:/member/view?bno="+vo.getBno();
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("bno")int bno) {
		
		service.delete(bno);
		
		return "redirect:/member/list";
	}
		

	
	
}
