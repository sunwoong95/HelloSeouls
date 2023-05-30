package com.bit.web.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bit.web.alpha.PagingAlgo;
import com.bit.web.dao.CtgDao;
import com.bit.web.service.CtgService;
import com.bit.web.service.CtgServiceImpl;
import com.bit.web.service.MypageService;
import com.bit.web.vo.MultiPageBean;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class Ctgcontroller {
	
	
	@Resource
	private final CtgService ctg;
	
	@Resource
	private MypageService contactService;
	
	
	@GetMapping(value = "gotoctg")
	public String goToCtgPage(Model model,HttpServletRequest resq) {
		model.addAttribute("locsg",ctg.readyForSg());
		model.addAttribute("maindb",ctg.readyForCtg());
		System.out.println(resq.getSession().getAttribute("user_id"));
		model.addAttribute("user_id",resq.getSession().getAttribute("user_id"));
		return "Final_Pro/ctgPage";
	}
	
	@GetMapping(value = "gotohotspot")
	public String gotoHotspot(Model model, HttpServletRequest resq) {
//		model.addAttribute("page",ctg.HotspotPagings(p));
//		model.addAttribute("user_first",ff);
		model.addAttribute("hotspot", ctg.readyForHot());
		resq.getSession().setAttribute("pageBean", ctg.makingTotals(5, 8));
		return "Final_Pro/HotspotMain";
	}
	
	@GetMapping(value = "gotoHotspotinfo")
	public String gotoHotspotInfo(int pc, Model model) {
		model.addAttribute("info",ctg.hotspotinfo(pc));
		return "Final_Pro/HotspotInfo";
	}
	
	@GetMapping(value="testings")
	public String flaskcon(String url) throws IOException, Exception {
//		JsonParsing x = new JsonParsing();
		InputStream is = new URL(url).openStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(is,Charset.forName("UTF-8")));
//		System.out.println(x.jsonReadAll(br));
		
		return "success";
	}
	
	@GetMapping(value = "Admin")
	public String gotoAdminPage(String ID, int pw) {
		
		return "Final_Pro/AdminPage";
	}
	
	@GetMapping(value="pgAction")
	public String pgActing(int Page,int Block, HttpServletRequest resq) {
		MultiPageBean bean =  (MultiPageBean)resq.getSession().getAttribute("pageBean");
		resq.getSession().setAttribute("pageBean", ctg.changePage(Page, Block, bean));
		System.out.println(ctg.changePage(Page, Block, bean));
		return "Final_Pro/HotspotMain";
						
	}
	
	@GetMapping(value="myAction")
	public ModelAndView pgActing2(int Page,int Block, HttpServletRequest resq, ModelAndView mav) {
		MultiPageBean bean =  (MultiPageBean)resq.getSession().getAttribute("myPaging");
		resq.getSession().setAttribute("myPaging", ctg.changePage(Page, Block, bean));
		String user_id = (String)resq.getSession().getAttribute("user_id");
		String user_nick = (String)resq.getSession().getAttribute("user_nickName");
//		System.out.println(ctg.changePage(Page, Block, bean));
//		System.out.println(ctg.userPlanner(user_id, user_nick,bean.getPageStart(), bean.getPageEnd()));
		mav.addObject("userInfo", contactService.userInfo(user_id));
		mav.addObject("userCreatedPlanner", contactService.userPlanner(user_id, user_nick,bean.getPageStart(), bean.getPageEnd()));
		mav.setViewName("Final_Pro/myPageMain");
		return mav;
						
	}
	
	@GetMapping(value = "gotoUserMg")
	public ModelAndView gotoUserManage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("users",ctg.getUsers());
		mav.addObject("userFirstCount", ctg.getffCount());
		mav.setViewName("Final_Pro/Admin/UserMg");
		return mav;
	}

	

}