package com.one.kcar.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.cs.CsDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;
import com.one.kcar.service.cs.ICsService;
import com.one.kcar.service.member.MailService;

@Controller
public class CsController {
	@Autowired ICsService service;
	@Autowired MailService mailService;

		//자주하는 질문
		@RequestMapping(value = "csQstn")
		public String csQstn() {
			return "qna/csQstn";
		}
		
		@ResponseBody
		@RequestMapping(value = "GetcsQstn", produces = "application/json; charset=utf-8")
		public String GetcsQstn(Model model, @RequestParam(value="classification", required = false)String classification,
				@RequestParam(value="search", required = false)String search, HttpServletRequest req) throws JsonProcessingException {
			System.out.println(classification);
			System.out.println(search);
			
			if(classification == "" && search == "") {
				classification = "내차사기";
			}
			
			ObjectMapper mapper = new ObjectMapper();
			HashMap<String, Object> hashMap = new HashMap<String, Object>();
			List<QuestionDTO> faqList = service.faqProc(model, classification, search, req);
			hashMap.put("faqList", faqList);
			
			String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
			System.out.println("json ==" + json);
			return json;
				
		}
		
		@GetMapping(value = "csQstnWriteForm")
		public String csQstnWriteForm() {
			return "qna/csQstnWriteForm";
		}
		
		@RequestMapping(value = "csQstnWriteProc")
		public String csQstnWriteProc(HttpServletRequest req, RedirectAttributes model) {
			String msg = service.csQstnWriteProc(req);
			model.addFlashAttribute("msg", msg);
			if(msg.equals("작성 완료")) {
				return "redirect:main";
			}
			return "redirect:csQstneWriteForm";
		}
		
		@RequestMapping(value = "csQstnManage")
		public String csQstnManage() {
			return "qna/csQstnManage";
		}
		
		
		//제안/칭찬 접수
		@GetMapping(value = "cs/csVoc")
		public String csVoc() {
			return "qna/csVoc";
		}
		
		//제안/칭찬 접수 insert
		@RequestMapping(value="/cs/csProc")
		public String csProc(RedirectAttributes model, MultipartHttpServletRequest multi) {
			String msg = service.csProc(multi);
			model.addFlashAttribute("msg", msg);
			if(msg.equals("접수 완료")) {
				return "redirect:/home";
			}
			return "redirect:cs/csVoc";
		}
		
		//공지사항
		@RequestMapping(value = "NotcMatrList")
		public String NotcMatrList(Model model) {
			service.noticeProc(model, 0, null, null);
			return "bd/NotcMatrList";
		}
		
		
		@ResponseBody
		@RequestMapping(value = "GetEvent", produces = "application/json; charset=utf-8")
		public String GetEvent(Model model, @RequestParam(value="no", required = false)String no,
				String search, String select, HttpServletRequest req) throws JsonProcessingException {
			
			ObjectMapper mapper = new ObjectMapper();
			HashMap<String, Object> hashMap = new HashMap<String, Object>();
			List<EventDTO> eventList = service.eventProc(model, no, search, select, req);
			hashMap.put("eventList", eventList);
			
			String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
			System.out.println("json ==" + json);
			return json;
				
		}
		
		//고객지원 메뉴
		@GetMapping(value = "menu")
		public String menu() {
			return "cs/menu";
		}
		
		
		//공지사항 작성 폼
		@GetMapping(value = "noticeWriteForm")
		public String noticeWriteForm() {
			return "bd/NoticeWriteForm";
		}
		
		//공지사항 작성
		@RequestMapping(value = "noticeWriteProc")
		public String noticeWriteProc(HttpServletRequest req, RedirectAttributes model) {
			String msg = service.noticeWriteProc(req);
			model.addFlashAttribute("msg", msg);
			
			if(msg.equals("공지사항 작성 완료")) {
				return "redirect:NotcMatrListManage";
			}
			return "redirect:noticeWriteForm";
		}
		
		@RequestMapping(value = "noticeViewProc")
		public String noticeViewProc(@RequestParam(value = "no", required=false)String no, Model model) {
			if(no == null || no == "") {
				return "redirect:NotcMatrList"; //forward?
			}
			
			int viewNo = Integer.parseInt(no);
			service.noticeViewProc(viewNo, model);
			return "bd/NoticeViewForm";
		}
		
		@RequestMapping(value = "eventViewProc")
		public String eventViewProc(@RequestParam(value = "no", required=false)String no, Model model) {
			if(no == null || no == "") {
				return "redirect:NotcMatrList"; //forward?
			}
			
			int viewNo = Integer.parseInt(no);
			service.eventViewProc(viewNo, model);
			return "bd/EventViewForm";
		}
		
		@RequestMapping(value = "noticeModifyForm")
		public String noticeModifyForm(Model model, NoticeDTO notice) {
			model.addAttribute("modifyList", notice);
			return "bd/NoticeModifyForm";
		}
		
		@RequestMapping(value = "eventModifyForm")
		public String eventModifyForm(Model model, EventDTO event) {
			model.addAttribute("eventmodifyList", event);
			return "bd/eventModifyForm";
		}
		
		@RequestMapping(value = "noticeModifyProc")
		public String noticeModifyProc(NoticeDTO notice, RedirectAttributes model) {
			String msg = service.noticeModifyProc(notice);
			model.addFlashAttribute("msg", msg);
			
			if(msg.equals("수정 완료")) {
				return "redirect:NotcMatrListManage";
			}
			return "redirect:noticeModifyForm";
		}
		
		@RequestMapping(value = "eventModifyProc")
		public String eventModifyProc(EventDTO event,  RedirectAttributes model) {
			String msg = service.eventModifyProc(event);
			model.addFlashAttribute("msg", msg);
			if(msg.equals("수정 완료")) {
				return "redirect:NotcMatrListManage";
			}
			return "redirect:eventModifyForm";
		}
		
		@RequestMapping(value = "noticeDeleteProc")
		public String noticeDeleteProc(String n_no) {
			int no = Integer.parseInt(n_no);
			service.noticeDeleteProc(no);
			return "redirect:NotcMatrListManage";
		}	
		
		@RequestMapping(value = "eventDeleteProc")
		public String eventDeleteProc(String e_no) {
			int no = Integer.parseInt(e_no);
			service.eventDeleteProc(no);
			return "redirect:NotcMatrListManage";
		}
		
		@GetMapping(value = "eventWriteForm")
		public String eventWriteForm() {
			return "bd/eventWriteForm";
		}
		
		//이벤트 작성
		@RequestMapping(value = "eventWriteProc")
		public String eventWriteProc(HttpServletRequest req, RedirectAttributes model, @RequestParam(value="listViewno", required = false)String listViewno) {
			String msg = service.eventWriteProc(req);
			model.addFlashAttribute("msg", msg);
			
			if(msg.equals("이벤트 작성 완료")) {
				return "redirect:NotcMatrListManage";
			}
			model.addAttribute("view", listViewno);
			return "redirect:eventWriteForm";
		}
		
		@RequestMapping(value = "csVocManage")
		public String csVocManage(Model model, @RequestParam(value="currentPage", required = false, defaultValue = "1")int currentPage,
				 HttpServletRequest req) {
			service.csVocManage(model, currentPage, req);
			return "qna/csVocManage";
		}
		
		@RequestMapping(value = "csViewProc")
		public String csViewProc(@RequestParam(value = "no", required=false)String no, Model model) {
			if(no == null || no == "") {
				return "redirect:csVocManage"; //forward?
			}
			
			int viewNo = Integer.parseInt(no);
			service.csViewProc(viewNo, model);
			return "qna/csViewForm";
		}
		
		@RequestMapping(value = "replySend")
		public String replySend(String subject, String content, String to, CsDTO cs, RedirectAttributes model) {
			mailService.sendMail(to, subject, content);
			String msg = service.replySend(cs);
			model.addFlashAttribute("msg", msg);
			if(msg.equals("메일 전송 완료")) {
				return "redirect:csVocManage";
			}
			return "redirect:csViewProc";
		}
		
		@RequestMapping(value = "NotcMatrListManage")
		public String NotcMatrListManage(Model model, @RequestParam(value="listViewno", required = false)String listViewno) {
				model.addAttribute("view", listViewno);
			
			System.out.println(listViewno);
			return "bd/NotcMatrListManage";
		}
		
		@RequestMapping(value = "noticeManageViewProc")
		public String noticeManageViewProc(@RequestParam(value = "no", required=false)String no, Model model) {
			if(no == null || no == "") {
				return "redirect:NotcMatrListManage"; 
			}
			
			int viewNo = Integer.parseInt(no);
			service.noticeViewProc(viewNo, model);
			return "bd/NoticeViewFormManage";
		}
		
		@RequestMapping(value = "eventManageViewProc")
		public String eventManageViewProc(@RequestParam(value = "no", required=false)String no, Model model) {
			if(no == null || no == "") {
				return "redirect:NotcMatrListManage";
			}
			
			int viewNo = Integer.parseInt(no);
			service.eventViewProc(viewNo, model);
			return "bd/EventViewFormManage";
		}
		
		
}
