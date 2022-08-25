package com.one.kcar.service.cs;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.one.kcar.dao.cs.ICsDAO;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.cs.CsDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;

@Service
public class CsServiceImpl implements ICsService {
	@Autowired
	private ICsDAO csDao;

	@Override
	public String csProc(MultipartHttpServletRequest req) {

		String category = req.getParameter("category");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String id = req.getParameter("id");
		String replyValue = req.getParameter("replyValue");
		String reply = req.getParameter("reply");

		CsDTO cs = new CsDTO();
		cs.setS_category(category);
		cs.setS_title(title);
		cs.setS_content(content);
		cs.setS_id(id);
		cs.setS_reply(reply);
		cs.setS_replyValue(replyValue);
		cs.setS_replyStatus("n");

		if (id == null || id == "" || id.equals("")) {
			cs.setS_id("익명");
		}

		if (reply == "N" || reply.equals("N")) {
			cs.setS_replyValue("N");
		}

		MultipartFile file = req.getFile("fileName");
		if (file.getSize() != 0) {
			String fileName = file.getOriginalFilename();
			cs.setS_file(fileName);
			File save = new File(ICsService.FILE_LOCATION + "\\" + fileName);
			try {
				file.transferTo(save);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			cs.setS_file("파일없음");
		}

		csDao.csWriteProc(cs);
		return "접수 완료";

	}

	@Override
	public String noticeWriteProc(HttpServletRequest req) {
		String title = req.getParameter("title");
		String content = req.getParameter("content");

		NoticeDTO notice = new NoticeDTO();
		notice.setN_title(title);
		notice.setN_content(content);

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		notice.setN_date(sdf.format(date));

		csDao.noticeWriteProc(notice);
		return "공지사항 작성 완료";
	}

	@Override
	public void noticeViewProc(int viewNo, Model model) {
		model.addAttribute("viewList", csDao.noticeViewProc(viewNo));
	}

	@Override
	public String noticeModifyProc(NoticeDTO notice) {
		csDao.noticeModifyProc(notice);
		
		return "수정 완료";
	}

	@Override
	public void noticeDeleteProc(int no) {
		csDao.noticeDeleteProc(no);
	}

	@Override
	public String eventWriteProc(HttpServletRequest req) {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String startDate = req.getParameter("startDate");
		String endDateDate = req.getParameter("endDate");

		EventDTO event = new EventDTO();
		event.setE_title(title);
		event.setE_content(content);
		event.setE_startDate(startDate);
		event.setE_endDate(endDateDate);

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		event.setE_date(sdf.format(date));

		csDao.eventWriteProc(event);
		return "이벤트 작성 완료";
	}

	@Override
	public List<EventDTO> eventProc(Model model, String no, String search, String select, HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();

		if (no.equals("event")) {
			map.put("search", search);
			map.put("select", select);
			ArrayList<EventDTO> eventList = csDao.eventProc(select, search);
			model.addAttribute("eventList", eventList);

			return eventList;
		}
		return null;
	}

	@Override
	public void eventViewProc(int viewNo, Model model) {
		model.addAttribute("eventviewList", csDao.eventViewProc(viewNo));
	}

	@Override
	public String eventModifyProc(EventDTO event) {
		csDao.eventModifyProc(event);
		return "수정 완료";
	}

	@Override
	public void eventDeleteProc(int no) {
		csDao.eventDeleteProc(no);
	}

	@Override
	public List<NoticeDTO> noticeProc(Model model, String no, String search, String select,
			HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();

		if (no.equals("notice")) {
			map.put("search", search);
			map.put("select", select);

			
			ArrayList<NoticeDTO> noticeList = csDao.noticeProc(select, search);
			model.addAttribute("noticeList", noticeList);
			
			return noticeList;
		}
		return null;
		
	}
	
	@Override
	public List<QuestionDTO> faqProc(Model model, String classification, String search, HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("search", search);
		map.put("classification", classification);
		
		ArrayList<QuestionDTO> faqList = csDao.faqProc(search, classification);
		model.addAttribute("faqList", faqList);

		model.addAttribute("search", search);
		
		  String url = req.getContextPath() + "/csQstnSearch?"; if(search != "") {
		  url+="search="+search+"&"; }
		 
		  
		return faqList;
		
	}

	@Override
	public void csVocManage(Model model, int currentPage, HttpServletRequest req) {
		
		int totalCount = csDao.csVocCount();
		int pageBlock = 10;
		int end = currentPage * pageBlock;
		int begin = end+1 - pageBlock;
		
		ArrayList<NoticeDTO> csVocList = csDao.csVocProc(begin, end);
		model.addAttribute("csVocList", csVocList);
		
		String url = req.getContextPath() + "/csVoc?";
		url += "currentPage=";
		model.addAttribute("csVocpage", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}

	@Override
	public void csViewProc(int viewNo, Model model) {
		model.addAttribute("csViewList", csDao.csViewProc(viewNo));
	}

	@Override
	public String replySend(CsDTO cs) {
		csDao.replySend(cs);
		return "메일 전송 완료";
	}

	@Override
	public String csQstnWriteProc(HttpServletRequest req) {
		String classification = req.getParameter("classification");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
System.out.println(content);
		QuestionDTO question = new QuestionDTO();
		question.setQ_classification(classification);
		question.setQ_title(title);
		question.setQ_content(content);

		csDao.csQstnWriteProc(question);
		return "작성 완료";
	}

}
