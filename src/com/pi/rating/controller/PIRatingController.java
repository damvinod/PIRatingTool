package com.pi.rating.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pi.rating.utility.JsonView;
import com.pi.rating.utility.XMLHelper;

@Controller
@RequestMapping("/pirating/")
public class PIRatingController {

	JsonView jsonView = new JsonView();
	
	@RequestMapping("main.do")
	public ModelAndView add(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		mav.addObject("RESOURCE_ROOT", "");
		mav.setViewName("PiRatingMain");
		return mav;

	}
	
	@RequestMapping("lion.do")
	public ModelAndView lion(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		Map<String, String> outPutMap = new LinkedHashMap<String, String>();
		
		outPutMap.put("htmlString", XMLHelper.getSaxonLoading());
		
		return new ModelAndView(jsonView, outPutMap);

	}
}