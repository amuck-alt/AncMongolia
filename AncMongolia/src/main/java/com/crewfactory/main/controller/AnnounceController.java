package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class AnnounceController {
	
	@Autowired
	AnnounceService service;
	
	@Autowired
	CounterService counter;
	
	@Autowired
	private TotalPage total_page;
	
	@GetMapping("/news/announce.do")
	String init (@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 10;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            //visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체
        
        
 
        Map <String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = service.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", service.selectAll(searchMap, startPage, visiblePages));

		return "/news/announce";
	}
	
	@GetMapping("/news/annview.do")	
	String view (@RequestParam(value="idx") int idx, HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));
		boolean result = counter.counter_announce(idx);
		model.addAttribute("visit", result);
//		HttpSession session = request.getSession();
//		logger.info(String.format("login : %s", session.getAttribute("crewfactory_update_counter_announce")));
//		if(session.getAttribute("crewfactory_update_counter_announce") == null) {
//			boolean result = counter.counter_announce(idx);
//			if(result == true) {
//				session.setAttribute("crewfactory_update_counter_announce", true);
//			}
//		}
		
		return "news/annview";
	}
	
	@GetMapping("/news/event.do")	
	String eventList (@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 10;
        
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
        String searchSection = paramMap.get("section");
        searchMap.put("searchText", searchText);
        searchMap.put("searchSection", searchSection);
 
        //전체 게시물수 가져오기
        int totalCnt = service.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", service.selectAll(searchMap, startPage, visiblePages));
	
		return "news/event";
	}
	
	@GetMapping("/news/eventv.do")	
	String eventView (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));		
		return "news/eventv";
	}
}
