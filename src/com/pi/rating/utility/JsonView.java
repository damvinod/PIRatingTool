package com.pi.rating.utility;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.sf.json.JSONObject;

import org.springframework.web.servlet.View;

public class JsonView implements View {
	
	
	@Override
	public String getContentType() {
		return "application/json";
	}

	@Override
	public void render(Map<String, ?> arg0, HttpServletRequest arg1,
			HttpServletResponse response) throws Exception {
		PrintWriter writer = response.getWriter();
		response.setContentType("text/plain; charset=UTF-8");
		JSONObject jsonObject = new JSONObject();
		jsonObject.putAll(arg0);
		//System.out.println(jsonObject.toString());
		writer.print(jsonObject.toString());
		writer.close();

	}
	
	
	
	

}
