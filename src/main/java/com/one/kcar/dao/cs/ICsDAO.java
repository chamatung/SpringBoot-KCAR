package com.one.kcar.dao.cs;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.cs.CsDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;

@Mapper
public interface ICsDAO {
	
	void csWriteProc(CsDTO cs);

	void noticeWriteProc(NoticeDTO notice);

	ArrayList<NoticeDTO> noticeProc(@Param("select")String sel, @Param("search") String search);

	NoticeDTO noticeViewProc(int viewNo);

	int noticeCount(HashMap<String, Object> map);

	void noticeModifyProc(NoticeDTO notice);

	void noticeDeleteProc(int no);

	void eventWriteProc(EventDTO event);

	int eventCount(HashMap<String, Object> map);

	ArrayList<EventDTO> eventProc(@Param("select")String sel, @Param("search") String search);

	EventDTO eventViewProc(int viewNo);

	void eventModifyProc(EventDTO event);

	void eventDeleteProc(int no);

	ArrayList<QuestionDTO> faqProc(@Param("search")String search, @Param("classification")String classification);

	int csVocCount();

	ArrayList<NoticeDTO> csVocProc(@Param("b") int begin, @Param("e")int end);

	CsDTO csViewProc(int viewNo);

	int replySend(CsDTO cs);

	void csQstnWriteProc(QuestionDTO question);

}
