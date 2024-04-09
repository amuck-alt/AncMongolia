package com.crewfactory.main.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.crewfactory.main.domain.ReservationDomain;
import com.crewfactory.main.service.ReservationService;
import com.crewfactory.main.util.ExcelUtil;

@Controller
public class AdminReservationController {
	
	@Autowired
	ReservationService service;
	
	@GetMapping("/manager/reservation/list.do")
	public String list (@ModelAttribute("@search") ReservationDomain domain, HttpServletRequest request, Model model) throws Exception {

		String cons_status = request.getParameter("cons_status");
		String cons_startday = request.getParameter("cons_startday");
		String cons_endday = request.getParameter("cons_endday");
		String cons_manager = request.getParameter("cons_manager");
		String cons_customer = request.getParameter("cons_customer");
		
		if(cons_status == null) domain.setCons_status("");
		if(cons_startday == null) domain.setCons_startday("");
		if(cons_endday == null) domain.setCons_endday("");
		if(cons_manager == null) domain.setCons_manager("");
		if(cons_customer == null) domain.setCons_customer("");

		model.addAttribute("search", domain);
		model.addAttribute("result", service.select(domain));
		return "/admin/reservation/list";
	}
	
	@GetMapping("/manager/reservation/excel.do")
	public void excel (@ModelAttribute("@search") ReservationDomain domain, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String cons_status = request.getParameter("cons_status");
		String cons_startday = request.getParameter("cons_startday");
		String cons_endday = request.getParameter("cons_endday");
		String cons_manager = request.getParameter("cons_manager");
		String customer = request.getParameter("customer");
		
		if(cons_status == null) domain.setCons_status("");
		if(cons_startday == null) domain.setCons_startday("");
		if(cons_endday == null) domain.setCons_endday("");
		if(cons_manager == null) domain.setCons_manager("");
		if(customer == null) domain.setCustomer("");
				
		List <ReservationDomain> list = service.select(domain);
		
		int nRow = 0;
		ExcelUtil excel = new ExcelUtil("상담정보");
		
		Date now = new Date();        
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");        
		String formatedNow = formatter.format(now);		

		//헤더
		Row headerRow = excel.createRow(nRow++, 20f);
		excel.appendCell(headerRow, "header", "상태", 12);
		excel.appendCell(headerRow, "header", "이름", 15);
		excel.appendCell(headerRow, "header", "나이", 8);
		excel.appendCell(headerRow, "header", "연락처", 20);
		excel.appendCell(headerRow, "header", "상담예약일", 20);
		excel.appendCell(headerRow, "header", "예약시간", 15);
		excel.appendCell(headerRow, "header", "담당팀", 12);
		excel.appendCell(headerRow, "header", "담당자", 12);
		excel.appendCell(headerRow, "header", "상담이력", 80);
		excel.appendCell(headerRow, "header", "수정일", 20);
		
		//바디 
		for( ReservationDomain info : list) { 
			Row bodyRow = excel.createRow(nRow++, 20f);
			String status = info.getCons_status();
			if("00".equals(info.getCons_status())) { status = "상담예약"; }
			else if("99".equals(info.getCons_status())) { status = "상담종료"; }
			else { status = "상담진행중"; }
			
			excel.appendCell(bodyRow, "cell_normal_centered", status);
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCus_name());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCus_age());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCus_mobile());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCons_day());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCons_time());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCons_team());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getCons_manager());
			excel.appendCell(bodyRow, "cell_normal", info.getNote());
			excel.appendCell(bodyRow, "cell_normal_centered", formatter.format(info.getRegdate()));
			excel.appendRow(bodyRow);
		}
		excel.download(response, "상담정보_"+formatedNow+".xls");
	}
	
	@GetMapping("/manager/reservation/write.do")
	public String write (Model model) throws Exception {
		return "/admin/reservation/write";
	}
	
	@PostMapping("/manager/reservation/insert.do")
	public String insert (@ModelAttribute("@manager") ReservationDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/reservation/list.do";
	}
	
	@GetMapping("/manager/reservation/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		model.addAttribute("resultNote", service.selectMemo(idx));
		return "/admin/reservation/view";
	}
	
	@PostMapping("/manager/reservation/update.do")
	public String update (@ModelAttribute("@manager") ReservationDomain domain, Model model) throws Exception {
		service.update(domain);
		service.insertMemo(domain);
		return "redirect:/manager/reservation/view.do?idx="+domain.getIdx();
	}
	
	@PostMapping("/manager/reservation/updateEnd.do")
	public String updateEnd (@ModelAttribute("@endForm") ReservationDomain domain, Model model) throws Exception {
		service.updateEnd(domain);
		service.insertMemo(domain);
		return "redirect:/manager/index.do";
	}

}
