package com.crewfactory.main.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.crewfactory.main.domain.VanalyzerDomain;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.util.Utility;

@RestController
public class VanalyzerController {
	private static final Logger logger = LoggerFactory.getLogger(FileManagerController.class);

	@Autowired
	CounterService counter;

	@RequestMapping(value = "/visit/counter.do", method = { RequestMethod.POST, RequestMethod.GET })
	public @ResponseBody void counter(@RequestBody VanalyzerDomain vanalyzer, HttpSession session) throws Exception {
		int count = counter.checkIp(vanalyzer);
		logger.info("Today Visit ============ " + count);
		if(count == 0) {
			if (session.getAttribute("crewfactory-visiter") == null) {
				logger.info("vanalyzer ============ " + vanalyzer.toString());
				String path = vanalyzer.getPath();
				Date getDate = new Date();
				SimpleDateFormat getToday = new SimpleDateFormat("yyyyMMdd");
				logger.info("Today ============ " + getToday.format(getDate));
	
				String sector = "";
				String keyword = "";
				String area = "";
	
				String[] array = path.split("&");
	
				for (int i = 0; i < array.length; i++) {
					logger.info("array ================ " + array[i].toString());
					if (array[i].indexOf("query=") > -1 && path.indexOf("naver") > -1) {
						keyword = array[i].toString();
						keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
					} else if (array[i].indexOf("q=") > -1 && (path.indexOf("google") > -1 || path.indexOf("daum") > -1)) {
						keyword = array[i].toString();
						keyword = keyword.substring(keyword.indexOf("=") + 1, keyword.length());
					} else {
	
					}
				}
				if (StringUtils.isNotEmpty(path)) {
					Utility util = new Utility();
					sector = util.extractDomain(path);
					
					if(sector.indexOf("naver") > -1) area = "naver";
					if(sector.indexOf("cafe.naver") > -1) area = "cafe";
					if(sector.indexOf("blog.naver") > -1 || path.indexOf("post.naver") > -1) area = "blog";
					if(sector.indexOf("kin.naver") > -1) area = "knowledge";
					if(sector.indexOf("place.naver") > -1) area = "place";
					if(sector.indexOf("google") > -1) area = "google";
					if(sector.indexOf("daum") > -1) area = "daum";
					if(sector.indexOf("instagram") > -1) area = "instagram";
	
				}
	
				logger.info("sector ============ " + sector);
				logger.info("area ============ " + area);
				logger.info("keyword ============ " + keyword);
	
				vanalyzer.setKeyword(keyword);
				vanalyzer.setSector(sector);
				vanalyzer.setArea(area);
				vanalyzer.setToday(getToday.format(getDate));
	
				counter.increas_vanalyzer(vanalyzer);
				session.setAttribute("crewfactory-visiter", vanalyzer);
				logger.info("Increased Visiter ");
			}
		}else {
			logger.info("Today Visit ============ " + count);
		}
	}
}
