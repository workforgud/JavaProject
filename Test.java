Test.java
=================================

package com.demo;


   


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;

@Controller
public class Test {

	@RequestMapping("/sub")
	public ModelAndView add(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("display.jsp");

		return mv;

	}

}

