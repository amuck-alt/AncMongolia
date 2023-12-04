package com.crewfactory.main.controller.home;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.CKRecruitService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class CKRecruitController {
	
	@Autowired
	private TotalPage total_page;
	
	@Autowired
	CKRecruitService service;
	
	@RequestMapping(value="/recruit/list.do")
	public String list (@RequestParam Map <String, String> paramMap, Model model) throws Exception {
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
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = service.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", service.selectList(searchMap, startPage, visiblePages));

		return "/recruit/list";
	}
	
	@RequestMapping(value="/recruit/view.do", method=RequestMethod.GET)
	String view (@RequestParam(value="idx") int idx, HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		return "/recruit/view";
	}

}
