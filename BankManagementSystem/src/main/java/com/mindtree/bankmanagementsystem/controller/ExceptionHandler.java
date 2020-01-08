package com.mindtree.bankmanagementsystem.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.bankmanagementsystem.exception.service.NoCustomersPresent;

@RestControllerAdvice
public class ExceptionHandler {
	@org.springframework.web.bind.annotation.ExceptionHandler(NoCustomersPresent.class)
	public ModelAndView CustomerNotFound(Exception e, Throwable t, Model model) {
		model.addAttribute("errormessage", e.getLocalizedMessage());
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("CustomerNotFound");
		return modelandview;

	}
}
