package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.VariousService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class VariousController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileManagerController.class);
	
	@Autowired
	private TotalPage total_page;
	
	@Autowired
	VariousService various;
	
	@RequestMapping(value="support/various.do", method=RequestMethod.GET)
	String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
		String strStartPage = paramMap.get("startPage");
        String strVisiblePages = paramMap.get("visiblePages");
 
        int startPage = 1;
        int visiblePages = 10;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체        
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = various.selectTotalByWeb(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", various.selectByWeb(searchMap, startPage, visiblePages));	
        
		return "support/various";
	}
	
	@RequestMapping(value="support/variousv.do", method=RequestMethod.GET)
	String wearev (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", various.view(idx));		
		return "support/variousv";
	}

}
