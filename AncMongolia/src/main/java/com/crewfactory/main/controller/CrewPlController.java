package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.ReviewService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class CrewPlController {
	
	@Autowired
	BlogService blog;
	
	@Autowired
	ReviewService review;
	
	@Autowired
	private TotalPage total_page;
	
	
	@GetMapping("crewpeople/weare.do")
	String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 21;
        
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
	
	@GetMapping("/crewpeople/wearev.do")
	String wearev (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", blog.view(idx));		
		return "crewpeople/wearev";
	}
	
	// 합격생인터뷰
	@GetMapping("crewpeople/review.do")
	String review(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
        String searchText = paramMap.get("searchText");            
        String searchSection = paramMap.get("section");
        String searchHeight = paramMap.get("height");
        String searchWeight = paramMap.get("weight");
        String searchGradlv = paramMap.get("gradlv");
        String searchLanglv = paramMap.get("langlv");
        String searchGubun = paramMap.get("gubun");
        String searchAlcd = paramMap.get("alcd");
 
        int startPage = 1;
        int visiblePages = 20;
        
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
        
        if(!"".equals(searchGubun)) {
        	searchMap.put("searchGubun", searchGubun);
        }
        
        if(!"".equals(searchAlcd)) {
        	searchMap.put("searchAlcd", searchAlcd);
        }
        
        //전체 게시물수 가져오기
        int totalCnt = review.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("section", searchSection);
        model.addAttribute("weight", searchWeight);
        model.addAttribute("height", searchHeight);
        model.addAttribute("gradlv", searchGradlv);
        model.addAttribute("langlv", searchLanglv);
        model.addAttribute("gubun", searchGubun);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", review.select(searchMap, startPage, visiblePages));

		return "crewpeople/review";
	}
	
	@GetMapping("crewpeople/reviewv.do")
	String reviewv (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", review.view(idx));		
		return "crewpeople/reviewv";
	}
	
	@GetMapping("crewpeople/moment.do")
	String moment(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 21;
        
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
        //전체 게시물수 가져오기
        int totalCnt = blog.selectMomentByWebTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("section", searchSection);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", blog.selectMomentByWeb(searchMap, startPage, visiblePages));

		return "crewpeople/moment";
	}
	
	@GetMapping("/crewpeople/momentv.do")
	String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", blog.viewMoment(idx));		
		return "crewpeople/momentv";
	}
	
}
