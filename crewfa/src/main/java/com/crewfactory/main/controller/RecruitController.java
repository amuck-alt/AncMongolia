package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.InterviewService;
import com.crewfactory.main.service.RecruitService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class RecruitController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecruitController.class);
	
	@Autowired
	RecruitService recruit;
	
	@Autowired
	InterviewService interview;
	
	@Autowired
	private TotalPage total_page;
	
	@RequestMapping(value="support/recruit.do", method=RequestMethod.GET)
	String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
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
        
        Map <String, Object> searchMap = new HashMap <String, Object>(); 
        String searchText = paramMap.get("searchText");
        String searchSection = paramMap.get("section");
        
        logger.info(" <<<<<<<<<<< RECRUIT >>>>>>>>>>> ");
        logger.info("searchText ================= " + searchText);
        logger.info("searchSectoin ================= " + searchSection);
        
        searchMap.put("searchSection", searchSection);
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = recruit.selectByWebTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", recruit.selectByWeb(searchMap, startPage, visiblePages));

		return "support/recruit";
	}
	
	@RequestMapping(value="support/recruitv.do", method=RequestMethod.GET)
	String recruitv (@RequestParam(value="idx") int idx, @RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		model.addAttribute("result", recruit.view(idx));
		return "support/recruitv";
	}
	
	@RequestMapping(value="support/alko.do", method=RequestMethod.GET)
	String alko (HttpServletRequest request, Model model) throws Exception {
		return "support/alko";
	}
	
	@RequestMapping(value="support/alos.do", method=RequestMethod.GET)
	String alos (HttpServletRequest request, Model model) throws Exception {
		return "support/alos";
	}
	
	@RequestMapping(value="support/univ.do", method=RequestMethod.GET)
	String univ (HttpServletRequest request, Model model) throws Exception {
		return "support/univ";
	}
	
	@RequestMapping(value="support/mrate.do", method=RequestMethod.GET)
	String mrate (HttpServletRequest request, Model model) throws Exception {
		return "support/mrate";
	}
	
}
