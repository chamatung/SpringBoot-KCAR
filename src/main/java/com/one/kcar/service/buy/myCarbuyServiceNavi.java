package com.one.kcar.service.buy;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class myCarbuyServiceNavi {
@Autowired HttpSession session;

//여기는 전체
public String totalPage(int count) {
	int PageBlock = 12;
	int totalPage = count / PageBlock;
	String Page = "";
	if (count % PageBlock != 0) {
		totalPage += 1;
	}
	for (int i = 2; i <= totalPage; i++) {
		Page += "<a href='#' class='pagingNum' onclick=\"pagesel(this)\">" + i + "</a>";
		if (i > 10)
			break;
	}
	return Page;
}
	public String getnavi() {
		int currentPage = (int) session.getAttribute("currentPage");
		int totalPage = (int)session.getAttribute("totalPage");
		String navi="";
		if(currentPage !=1) {
			navi+="<button type=\"button\" class=\"el-button pagePrev el-button--default\"> <span><img src=\"/images/common/pagenation-btn-left.svg\" alt=\"이전\" onclick=\"prev()\"></span> </button>";
		}
		for(int i = 1;i <= totalPage; i++) {
			navi+="<a href='#' class='pagingNum' onclick=\"pagesel(this)\">";
			if(currentPage == i)navi+="<span class=\"textRed\">";
			navi+=i;
			if(currentPage == i)navi+="</span>";
			navi+="</a>";
			
		}if(currentPage !=totalPage) {
			navi+="<button type=\"button\" class=\"el-button pageNext el-button--default\"> <span><img src=\"/images/common/pagenation-btn-right.svg\" alt=\"다음\" onclick=\"next()\"></span> </button>";
		}

		return navi;
	}

	
	//여기부터 해외
	
	public String totalPageFore(int count) {
		int PageBlock = 12;
		int totalPage = count / PageBlock;
		String Page = "";
		if (count % PageBlock != 0) {
			totalPage += 1;
		}
		for (int i = 2; i <= totalPage; i++) {
			Page += "<a href='#' class='pagingNum' onclick=\"pageselFore(this)\">" + i + "</a>";
			if (i > 10)
				break;
		}
		return Page;
	}
	public String getnaviFore() {
		int currentPage = (int) session.getAttribute("currentPageFore");
		int totalPage = (int)session.getAttribute("totalPageFore");
		String navi="";
		if(currentPage !=1) {
			navi+="<button type=\"button\" class=\"el-button pagePrev el-button--default\"> <span><img src=\"/images/common/pagenation-btn-left.svg\" alt=\"이전\" onclick=\"prevFore()\"></span> </button>";
		}
		for(int i = 1;i <= totalPage; i++) {
			navi+="<a href='#' class='pagingNum' onclick=\"pageselFore(this)\">";
			if(currentPage == i)navi+="<span class=\"textRed\">";
			navi+=i;
			if(currentPage == i)navi+="</span>";
			navi+="</a>";
			
		}if(currentPage !=totalPage) {
			navi+="<button type=\"button\" class=\"el-button pageNext el-button--default\"> <span><img src=\"/images/common/pagenation-btn-right.svg\" alt=\"다음\" onclick=\"nextFore()\"></span> </button>";
		}

		return navi;
	}
}
