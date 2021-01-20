package com.ryu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ryu.service.MemberService;
import com.ryu.vo.MemberVO;
import com.ryu.vo.PagingVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	
	
	@RequestMapping("/daum")
	public String test() {
		return "member/daum";
	}
	
	@RequestMapping("/list")
	  public String getlist(PagingVO vo, Model model
				, @RequestParam(value="nowPage", required=false)String nowPage
				, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
	  
		/*
		 * List<MemberVO> list=null; list=service.list(vo);
		 */
	  int total=service.count();
	  
	  if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
	  
	  vo= new PagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	  model.addAttribute("lists", service.list(vo));
	  model.addAttribute("paging", vo);
	  return "member/list"; 
	  
		}
	 
	
	@RequestMapping(value = "/write",method = RequestMethod.GET)
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
