package com.hao.malgae.partner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/*")
public class PartnerController {

	// 채팅상담 페이지 이동
	@GetMapping("chat")
	public ModelAndView chat() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("partner/partnerbidchat");
		return mav;
	}

	// 리뷰 페이지로 이동
	@GetMapping("selectallreview")
	public ModelAndView selectAllReview() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("partner/partnerreview");
		return mav;
	}

	// 파트너 프로필 페이지로 이동
	@GetMapping("partnerprofile")
	public ModelAndView partnerProfile() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("partner/partnerprofile");
		return mav;
	}

}
