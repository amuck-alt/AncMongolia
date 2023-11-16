package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.HRSearchDomain;
import com.crewfactory.main.domain.HumanResourceDomain;
import com.crewfactory.main.service.CKInterviewService;
import com.crewfactory.main.service.CKRecruitService;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.HumanResourceService;


@Controller
public class HumanResourceController {
	
	private static final Logger logger = LoggerFactory.getLogger(HumanResourceController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	CKRecruitService recruit;
	
	@Autowired
	HumanResourceService service;
	
	@Autowired
	CKInterviewService interview;
	
	@GetMapping("/ehr/propose.do")
	public String onlineResume (@RequestParam Map <String, String> paramMap, Model model) throws Exception {
		Map <String, Object> searchMap = new HashMap<String, Object>(); 
		model.addAttribute("result", recruit.selectList(searchMap, 0, 1));
		return "/ehr/propose";
	}
	
	@GetMapping("/ehr/submit.do")
	public String insert (HttpServletRequest request,  @RequestParam("photo") MultipartFile mpf, @RequestParam("resume") MultipartFile rsm) throws Exception {
		logger.info(request.toString());
		String returnurl = "redirect:/ehr/complete.do";
		String catenum = request.getParameter("catenum");
		String korname = request.getParameter("korname");
		String engname = request.getParameter("engname");
		String photo = "";
		String resume = "";
		String phoneagency = request.getParameter("phoneagency");
		String phonefirst = request.getParameter("phonefirst");
		String phonesecond = request.getParameter("phonesecond");
		String email = request.getParameter("email");
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String gender = request.getParameter("gender");
		String nation = request.getParameter("nation");
		String address = request.getParameter("address");
		String edulv = request.getParameter("edulv");
		String gradlv = request.getParameter("gradlv");
		String edugb = request.getParameter("edugb");
		String skilllv = request.getParameter("skilllv");
		String reference = request.getParameter("reference");
		String introduce = request.getParameter("introduce");
		
		String langlv1 = request.getParameter("langlv1");
		String langlv2 = request.getParameter("langlv2");
		String referyear = request.getParameter("referyear");
		String age = request.getParameter("age");
		
		try {
			HumanResourceDomain domain = new HumanResourceDomain();
			domain.setCatenum(catenum);
			domain.setKorname(korname);
			domain.setEngname(engname);
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "ehr", realpath);
		    	photo = fd.getPath();
		    	domain.setPhoto(photo);
		    }else {
		    	domain.setPhoto("");
		    }
			if(StringUtils.isNoneEmpty(rsm.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(rsm, "ehr", realpath);
		    	resume = fd.getPath();
		    	domain.setResume(resume);
		    	domain.setResumename(fd.getName());
		    }else {
		    	domain.setResume("");
		    }
			domain.setPhoneagency(phoneagency);
			domain.setPhonefirst(phonefirst);
			domain.setPhonesecond(phonesecond);
			domain.setEmail(email);
			domain.setBirthyear(birthyear);
			domain.setBirthmonth(birthmonth);
			domain.setBirthday(birthday);
			domain.setHeight(height);
			domain.setWeight(weight);
			domain.setGender(gender);
			domain.setNation(nation);
			domain.setAddress(address);
			domain.setEdulv(edulv);
			domain.setEdugb(edugb);
			domain.setGradlv(gradlv);
			domain.setLanglv1(langlv1);
			domain.setLanglv2(langlv2);
			domain.setAge(age);
			domain.setSkilllv(skilllv);
			domain.setReferyear(referyear);
			domain.setReference(reference);
			domain.setIntroduce(introduce);
			logger.info(domain.toString());
			
			int volunteer = service.checkVolunteer(domain);
			
			if(volunteer > 0) {
				returnurl = "redirect:/ehr/complete.do?result=already";
			} else {
				service.insert(domain);
				returnurl = "redirect:/ehr/complete.do?result=done";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return returnurl;
	}
	
	@PostMapping("/ehr/update.do")
	public String updateResume (HttpServletRequest request,  @RequestParam(value="editphoto", required=false) MultipartFile mpf, @RequestParam(value="editresume", required=false) MultipartFile rsm) throws Exception {
		
		logger.info("==============================");
		
		String idx = request.getParameter("idx");
		String returnurl = "redirect:/ehr/complete.do";
		String catenum = request.getParameter("catenum");
		String korname = request.getParameter("korname");
		String engname = request.getParameter("engname");
		String photo = request.getParameter("photo");
		String resume = request.getParameter("resume");
		String resumename = request.getParameter("resumename");
		String phoneagency = request.getParameter("phoneagency");
		String phonefirst = request.getParameter("phonefirst");
		String phonesecond = request.getParameter("phonesecond");
		String email = request.getParameter("email");
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String gender = request.getParameter("gender");
		String nation = request.getParameter("nation");
		String address = request.getParameter("address");
		String edulv = request.getParameter("edulv");
		String gradlv = request.getParameter("gradlv");
		String edugb = request.getParameter("edugb");
		String skilllv = request.getParameter("skilllv");
		String reference = request.getParameter("reference");
		String introduce = request.getParameter("introduce");
		
		String langlv1 = request.getParameter("langlv1");
		String langlv2 = request.getParameter("langlv2");
		String referyear = request.getParameter("referyear");
		String age = request.getParameter("age");
		
		try {
			HumanResourceDomain domain = new HumanResourceDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "ehr", realpath);
		    	photo = fd.getPath();
		    	domain.setPhoto(photo);
		    }else {
		    	domain.setPhoto("");
		    }
			if(StringUtils.isNoneEmpty(rsm.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(rsm, "ehr", realpath);
		    	resume = fd.getPath();
		    	domain.setResume(resume);
		    	domain.setResumename(fd.getName());
		    }else {
		    	domain.setResume("");
		    }
			
			domain.setIdx(idx);
			domain.setCatenum(catenum);
			domain.setKorname(korname);
			domain.setEngname(engname);
			domain.setPhoto(photo);
			domain.setResume(resume);
	    	domain.setResumename(resumename);
			domain.setPhoneagency(phoneagency);
			domain.setPhonefirst(phonefirst);
			domain.setPhonesecond(phonesecond);
			domain.setEmail(email);
			domain.setBirthyear(birthyear);
			domain.setBirthmonth(birthmonth);
			domain.setBirthday(birthday);
			domain.setHeight(height);
			domain.setWeight(weight);
			domain.setGender(gender);
			domain.setNation(nation);
			domain.setAddress(address);
			domain.setEdulv(edulv);
			domain.setEdugb(edugb);
			domain.setGradlv(gradlv);
			domain.setLanglv1(langlv1);
			domain.setLanglv2(langlv2);
			domain.setAge(age);
			domain.setSkilllv(skilllv);
			domain.setReferyear(referyear);
			domain.setReference(reference);
			domain.setIntroduce(introduce);
			logger.info(domain.toString());
			
			boolean result = service.updateResume(domain);
			
			if(result == false) {
				returnurl = "redirect:/ehr/complete.do";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return returnurl;
	}
	
	@GetMapping("/ehr/complete.do")
	public String complete (HttpServletRequest request) throws Exception {
		return "/ehr/complete";
	}
	
	@GetMapping("/ehr/search.do")
	public String search (HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("recruit", recruit.selectTitle());
		return "/ehr/search";
	}
	
	@PostMapping("/ehr/result.do")
	public String result (HttpServletRequest request, Model model) throws Exception {
		logger.info("==================================================");
		String srhCateNum = request.getParameter("srhcatenum");
		String srhKorName = request.getParameter("srhkorname");
		String srhPhoneAgency = request.getParameter("srhphoneagency");
		String srhPhoneFirst = request.getParameter("srhphonefirst");
		String srhPhoneSecond = request.getParameter("srhphonesecond");
		String srhEmail = request.getParameter("srhemail");
		String srhBirthYear = request.getParameter("srhbirthyear");
		String srhBirthMonth = request.getParameter("srhbirthmonth");
		String srhBirthDay = request.getParameter("srhbirthday");
		
		HRSearchDomain domain = new HRSearchDomain();		
		domain.setSrhcatenum(srhCateNum);
		domain.setSrhkorname(srhKorName);
		domain.setSrhphoneagency(srhPhoneAgency);
		domain.setSrhphonefirst(srhPhoneFirst);
		domain.setSrhphonesecond(srhPhoneSecond);
		domain.setSrhEmail(srhEmail);
		domain.setSrhBirthYear(srhBirthYear);
		domain.setSrhBirthMonth(srhBirthMonth);
		domain.setSrhBirthDay(srhBirthDay);

		model.addAttribute("result", service.search(domain));
		model.addAttribute("interview1", interview.select1st(srhCateNum));
		model.addAttribute("interview2", interview.select2nd(srhCateNum));
		return "/ehr/result";
	}
	
	@GetMapping("/ehr/choice1st.do")
	public String selectIntv1 (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String catenum = request.getParameter("catenum");
		String title = request.getParameter("title");
		String hopeintv1 = request.getParameter("hopeintv1");
		String intvday = request.getParameter("intvday");
		String intvtime = request.getParameter("intvtime");
		String intvloc = request.getParameter("intvloc");
		int limitCount = Integer.valueOf(request.getParameter("limitcount"));
		String limitResult = "";
		HumanResourceDomain domain = new HumanResourceDomain();
		
		domain.setIdx(idx);
		domain.setCatenum(catenum);
		domain.setTitle(title);
		domain.setHopeintv1(hopeintv1);
		domain.setIntvday(intvday);
		domain.setIntvtime(intvtime);
		domain.setIntvloc(intvloc);
		
		int volunteerCount = service.checkLimitVolunteer1(domain);

		if(volunteerCount >= limitCount) {
			limitResult = "BLOCK";
		}else {
			service.updateIntv1(domain);
			limitResult = "PASS";
		}
		
		model.addAttribute("limit", limitResult);
		model.addAttribute("result", domain);
		
		return "/ehr/done";
	}
	
	@GetMapping("/ehr/choice2nd.do")
	public String selectIntv2 (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String catenum = request.getParameter("catenum");
		String title = request.getParameter("title");
		String hopeintv2 = request.getParameter("hopeintv2");
		String intvday = request.getParameter("intvday");
		String intvtime = request.getParameter("intvtime");
		String intvloc = request.getParameter("intvloc");
		int limitCount = Integer.valueOf(request.getParameter("limitcount"));
		String limitResult = "";
		
		HumanResourceDomain domain = new HumanResourceDomain();
		
		domain.setIdx(idx);
		domain.setCatenum(catenum);
		domain.setTitle(title);
		domain.setHopeintv2(hopeintv2);
		domain.setIntvday(intvday);
		domain.setIntvtime(intvtime);
		domain.setIntvloc(intvloc);
		
		int volunteerCount = service.checkLimitVolunteer2(domain);

		if(volunteerCount >= limitCount) {
			limitResult = "BLOCK";
		}else {
			service.updateIntv1(domain);
			limitResult = "PASS";
		}
		
		model.addAttribute("limit", limitResult);
		model.addAttribute("result", domain);
		
		return "/ehr/done";
	}
	
	@GetMapping("/ehr/print.do")
	public String print (HttpServletRequest request, Model model) throws Exception {
		String studentnum = request.getParameter("studentnum");		
		model.addAttribute("stunum", studentnum);
		return "/ehr/print";
	}

}
