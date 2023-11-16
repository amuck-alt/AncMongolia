package com.crewfactory.main.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crewfactory.main.domain.HumanResourceDomain;
import com.crewfactory.main.service.CKInterviewService;
import com.crewfactory.main.service.CKRecruitService;
import com.crewfactory.main.service.HumanResourceService;

import com.crewfactory.main.util.ExcelUtil;


@Controller
public class AdminHumanResourceController {
	
	@Autowired
	HumanResourceService service;
	
	@Autowired
	CKInterviewService interview;
	
	@Autowired
	CKRecruitService recruit;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminHumanResourceController.class);
	
	@GetMapping("/manager/volunteer/list.do")
	public String select (HumanResourceDomain domain, HttpServletRequest request, Model model) throws Exception {
		
		model.addAttribute("resultRecruit", recruit.selectTitle());
		model.addAttribute("result", service.select(domain));
		model.addAttribute("intv1", interview.selectIntv1(domain.getCatenum()));
		model.addAttribute("intv2", interview.selectIntv2(domain.getCatenum()));
		return "/admin/volunteer/list";
	}
	
	@PostMapping("/manager/volunteer/update.do")
	public String update (@ModelAttribute("@hr") HumanResourceDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/volunteer/list.do?catenum="+domain.getCatenum();
	}
	
	@GetMapping("/manager/volunteer/delete.do")
	public String delete (@RequestParam(value="idx") int idx, @RequestParam(value="catenum") String catenum) throws Exception {
		service.delete(idx);
		return "redirect:/manager/volunteer/list.do?catenum="+catenum;
	}
	
	@GetMapping("/manager/volunteer/view.do")
	public String view (HttpServletRequest request, Model model) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("result", service.view(idx));
		return "/admin/volunteer/view";
	}
	
	@GetMapping("/manager/volunteer/pass1st.do")
	public String setPass1st (HumanResourceDomain domain,
							  @RequestParam("value") String value, Model model, RedirectAttributes redirect
							  ) throws Exception {
		domain.setValue(value);
		service.setpass1st(domain);
		redirect.addAttribute("idx", domain.getIdx());  
		redirect.addAttribute("catenum", domain.getCatenum());
		redirect.addAttribute("itvcode", domain.getItvcode());
		redirect.addAttribute("hopeidx", domain.getHopeidx());
		redirect.addAttribute("result1st", domain.getResult1st());
		redirect.addAttribute("result2nd", domain.getResult2nd());
		redirect.addAttribute("result3rd", domain.getResult3rd());
		redirect.addAttribute("intv1", domain.getIntv1());
		redirect.addAttribute("intv2", domain.getIntv2());
		
		return "redirect:/manager/volunteer/list.do";
	}
	
	@GetMapping("/manager/volunteer/pass2nd.do")
	public String setPass2nd (HumanResourceDomain domain,
							  @RequestParam("value") String value , RedirectAttributes redirect
							  ) throws Exception {
		domain.setValue(value);
		service.setpass2nd(domain);
		
		redirect.addAttribute("idx", domain.getIdx());  
		redirect.addAttribute("catenum", domain.getCatenum());
		redirect.addAttribute("itvcode", domain.getItvcode());
		redirect.addAttribute("hopeidx", domain.getHopeidx());
		redirect.addAttribute("result1st", domain.getResult1st());
		redirect.addAttribute("result2nd", domain.getResult2nd());
		redirect.addAttribute("result3rd", domain.getResult3rd());
		redirect.addAttribute("intv1", domain.getIntv1());
		redirect.addAttribute("intv2", domain.getIntv2());
		
		return "redirect:/manager/volunteer/list.do";
	}
	
	@GetMapping("/manager/volunteer/pass3rd.do")
	public String setPass3rd (HumanResourceDomain domain,
							  @RequestParam("value") String value , RedirectAttributes redirect
							  ) throws Exception {
		domain.setValue(value);
		service.setpass3rd(domain);
		
		redirect.addAttribute("idx", domain.getIdx());  
		redirect.addAttribute("catenum", domain.getCatenum());
		redirect.addAttribute("itvcode", domain.getItvcode());
		redirect.addAttribute("hopeidx", domain.getHopeidx());
		redirect.addAttribute("result1st", domain.getResult1st());
		redirect.addAttribute("result2nd", domain.getResult2nd());
		redirect.addAttribute("result3rd", domain.getResult3rd());
		redirect.addAttribute("intv1", domain.getIntv1());
		redirect.addAttribute("intv2", domain.getIntv2());
		return "redirect:/manager/volunteer/list.do";
	}
	
	@GetMapping("/manager/volunteer/allpass1st.do")
	public String allPass1st (HumanResourceDomain domain, RedirectAttributes redirect
							  ) throws Exception {
		
		service.allpass1st(domain);
		
		redirect.addAttribute("idx", domain.getIdx());  
		redirect.addAttribute("catenum", domain.getCatenum());
		redirect.addAttribute("itvcode", domain.getItvcode());
		redirect.addAttribute("hopeidx", domain.getHopeidx());
		redirect.addAttribute("result1st", domain.getResult1st());
		redirect.addAttribute("result2nd", domain.getResult2nd());
		redirect.addAttribute("result3rd", domain.getResult3rd());
		redirect.addAttribute("intv1", domain.getIntv1());
		redirect.addAttribute("intv2", domain.getIntv2());
		
		return "redirect:/manager/volunteer/list.do";
	}
	
	@GetMapping("/manager/volunteer/allpass2nd.do")
	public String allPass2nd (HumanResourceDomain domain, RedirectAttributes redirect
							  ) throws Exception {
		
		service.allpass2nd(domain);
		
		redirect.addAttribute("idx", domain.getIdx());  
		redirect.addAttribute("catenum", domain.getCatenum());
		redirect.addAttribute("itvcode", domain.getItvcode());
		redirect.addAttribute("hopeidx", domain.getHopeidx());
		redirect.addAttribute("result1st", domain.getResult1st());
		redirect.addAttribute("result2nd", domain.getResult2nd());
		redirect.addAttribute("result3rd", domain.getResult3rd());
		redirect.addAttribute("intv1", domain.getIntv1());
		redirect.addAttribute("intv2", domain.getIntv2());
		
		return "redirect:/manager/volunteer/list.do";
	}
	
	@GetMapping("/manager/volunteer/download.do")
	public void download (HumanResourceDomain domain, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("=================== download start ===================");

		List <HumanResourceDomain> list = service.downExcel(domain);
		
		logger.info(list.toString());

		int nRow = 0;
		ExcelUtil excel = new ExcelUtil("Sheet1");

		//헤더
		Row headerRow = excel.createRow(nRow++, 20f);
		excel.appendCell(headerRow, "header", "수험번호", 12);
		excel.appendCell(headerRow, "header", "한글이름", 12);
		excel.appendCell(headerRow, "header", "영문이름", 25);
		excel.appendCell(headerRow, "header", "연락처", 20);
		excel.appendCell(headerRow, "header", "이메일", 25);
		excel.appendCell(headerRow, "header", "생년월일", 18);
		excel.appendCell(headerRow, "header", "나이", 10);
		excel.appendCell(headerRow, "header", "성별", 10);
		excel.appendCell(headerRow, "header", "키", 10);
		excel.appendCell(headerRow, "header", "몸무게", 10);
		excel.appendCell(headerRow, "header", "최종학력", 20);
		excel.appendCell(headerRow, "header", "학교구분", 10);
		excel.appendCell(headerRow, "header", "졸업여부", 10);
		excel.appendCell(headerRow, "header", "국적", 20);
		excel.appendCell(headerRow, "header", "지역", 20);
		excel.appendCell(headerRow, "header", "어학점수", 25);
		excel.appendCell(headerRow, "header", "어학점수(기타)", 30);
		excel.appendCell(headerRow, "header", "승무원경력", 10);
		excel.appendCell(headerRow, "header", "근무항공사명", 40);
		//바디 
		for( HumanResourceDomain info : list) { 
			Row bodyRow = excel.createRow(nRow++, 20f);
			excel.appendCell(bodyRow, "cell_normal_centered", info.getStudentnum());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getKorname());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEngname());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getPhonenum());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEmail());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getBirth());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getAge());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getGender());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getHeight());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getWeight());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEdulv());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEdugb());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getGradlv());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getNation());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getAddress());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getLanglv1());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getLanglv2());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getReferyear());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getReference());
			excel.appendRow(bodyRow);
		}
		excel.download(response, "채용정보.xls");
	}
	
	public static String NullCheck(String obj, String defaultStr){
		String result = defaultStr;
		if(obj != null && !"".equals(obj)){
			result = String.valueOf(obj);
		}
		return result;
	}
}
