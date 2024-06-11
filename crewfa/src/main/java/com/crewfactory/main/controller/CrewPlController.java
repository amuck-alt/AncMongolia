package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.HonorService;
import com.crewfactory.main.service.ReviewService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class CrewPlController {
	
	@Autowired
	BlogService blog;
	
	@Autowired
	ReviewService review;
	
	@Autowired
	HonorService honor;
	
	@Autowired
	private TotalPage total_page;
	
	
	@RequestMapping(value="crewpeople/weare.do", method=RequestMethod.GET)
	String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 12;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            //visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체        
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = blog.selectBlogByWebTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", blog.selectBlogByWeb(searchMap, startPage, visiblePages));	
        model.addAttribute("topblog", blog.selectTopBlogByWeb(searchMap));
        
		return "crewpeople/weare";
	}
	
	@RequestMapping(value="/crewpeople/wearev.do", method=RequestMethod.GET)
	String wearev (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", blog.view(idx));		
		return "crewpeople/wearev";
	}
	
	// 합격생인터뷰
	@RequestMapping(value="crewpeople/review.do", method=RequestMethod.GET)
	String review(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
        String searchText = paramMap.get("searchText");            
        String searchSection = paramMap.get("section");
        String searchHeight = paramMap.get("height");
        String searchWeight = paramMap.get("weight");
        String searchGradlv = paramMap.get("gradlv");
        String searchLanglv = paramMap.get("langlv");
 
        int startPage = 1;
        int visiblePages = 12;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            //visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        searchMap.put("searchText", searchText);
        searchMap.put("searchSection", searchSection);
        searchMap.put("searchHeight", searchHeight);
        searchMap.put("searchWeight", searchWeight);
        searchMap.put("searchGradlv", searchGradlv);
        searchMap.put("searchLanglv", searchLanglv);
 
        //전체 게시물수 가져오기
        int totalCnt = review.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("section", searchSection);
        model.addAttribute("weight", searchWeight);
        model.addAttribute("height", searchHeight);
        model.addAttribute("gradlv", searchGradlv);
        model.addAttribute("langlv", searchLanglv);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", review.select(searchMap, startPage, visiblePages));

		return "crewpeople/review";
	}
	
	@RequestMapping(value="crewpeople/reviewv.do", method=RequestMethod.GET)
	String reviewv (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", review.view(idx));		
		return "crewpeople/reviewv";
	}
	
	@RequestMapping(value="crewpeople/moment.do", method=RequestMethod.GET)
	String moment(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
        String branch = paramMap.get("branch");
 
        int startPage = 1;
        int visiblePages = 12;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            //visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체
        
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        String searchSection = "moment";
        searchMap.put("searchText", searchText);
        searchMap.put("searchSection", searchSection);
        
        int totalCnt = 0;
        
        if("incheon".equals(branch)) {
        	totalCnt = blog.selectMomentByWebTotalIncheon(searchMap);
        }else {
        	totalCnt = blog.selectMomentByWebTotal(searchMap);
        }
        
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("section", searchSection);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        if("incheon".equals(branch)) {
        	model.addAttribute("result", blog.selectMomentByWebIncheon(searchMap, startPage, visiblePages));
        }else {
        	model.addAttribute("result", blog.selectMomentByWeb(searchMap, startPage, visiblePages));
        }

		return "crewpeople/moment";
	}
	
	@RequestMapping(value="/crewpeople/momentv.do", method=RequestMethod.GET)
	String view (@RequestParam(value="idx") int idx, @RequestParam(value="branch") String branch, Model model) throws Exception {
		if("incheon".equals(branch)) {
			model.addAttribute("result", blog.viewMomentIncheon(idx));
		}else {
			model.addAttribute("result", blog.viewMoment(idx));
		}
		return "crewpeople/momentv";
	}
	
	
	@RequestMapping(value="crewpeople/wave.do", method=RequestMethod.GET)
	String wave (@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");

 
        int startPage = 1;
        int visiblePages = 12;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            //visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체
        
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        String searchSection = "moment";
        searchMap.put("searchText", searchText);
        searchMap.put("searchSection", searchSection);
        
        int totalCnt = 0;
       	totalCnt = blog.selectWaveByWebTotal(searchMap);        
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("section", searchSection);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
       	model.addAttribute("result", blog.selectWaveByWeb(searchMap, startPage, visiblePages));

		return "crewpeople/wave";
	}
	
	@RequestMapping(value="/crewpeople/wavev.do", method=RequestMethod.GET)
	String wavev (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", blog.viewWave(idx));
		return "crewpeople/wavev";
	}
	
	@RequestMapping(value="crewpeople/hof.do", method=RequestMethod.GET)
	String hof (HttpServletRequest request, Model model) throws Exception {
		String unv = request.getParameter("univ");
		if(request.getParameter("univ") == null) {
			unv = "인하";
		}
		model.addAttribute("top", honor.selectByWebTop());
		
		if("기타".equals(unv)) {
			model.addAttribute("inha", honor.selectByWebEtc(unv));
		}else {
			model.addAttribute("inha", honor.selectByWeb(unv));
		}

		return "crewpeople/hof";
	}
	
	@RequestMapping(value="crewpeople/cexp.do", method=RequestMethod.GET)
	String cexp (Model model) throws Exception {
		return "crewpeople/cexp";
	}
	
}
