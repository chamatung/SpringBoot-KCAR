package com.one.kcar.service.cs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.cs.CsDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;

public interface ICsService {
	
	String FILE_LOCATION = "C:\\Users\\user\\Desktop\\kcar\\SpringBoot-KCAR\\src\\main\\resources\\static\\images\\cs";

	String csProc(MultipartHttpServletRequest multi);

	String noticeWriteProc(HttpServletRequest req);

	void noticeViewProc(int viewNo, Model model);

	String noticeModifyProc(NoticeDTO notice);

	void noticeDeleteProc(int no);

	String eventWriteProc(HttpServletRequest req);

	List<EventDTO> eventProc(Model model, String no, String search, String select, HttpServletRequest req);

	void eventViewProc(int viewNo, Model model);

	String eventModifyProc(EventDTO event);

	void eventDeleteProc(int no);

	List<NoticeDTO> noticeProc(Model model, String no, String search, String select,
			HttpServletRequest req);

	List<QuestionDTO> faqProc(Model model, String classification, String search, HttpServletRequest req);

	void csVocManage(Model model, int currentPage, HttpServletRequest req);

	void csViewProc(int viewNo, Model model);

	String replySend(CsDTO cs);

	String csQstnWriteProc(HttpServletRequest req);


}
