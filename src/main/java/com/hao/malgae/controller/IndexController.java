package com.hao.malgae.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping("/index")
	public String home(Locale locale, Model model) {

		String[] workers = { "오창영", "백동주", "배상엽", "하지민" };

		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("workers", workers);

		return "index/index";
	}
}