package com.trunkshell.voj.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 处理应用程序公共的请求.
 * @author Xie Haozhe
 */
@Controller
@RequestMapping(value = "/")
public class DefaultController {
	/**
	 * 显示应用程序的首页.
	 * @param request - HttpRequest对象
	 * @return 一个包含首页内容的ModelAndView对象
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexView(HttpServletRequest request) {
		ModelAndView view = new ModelAndView("index");
		return view;
	}
}
