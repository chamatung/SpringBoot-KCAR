package com.one.kcar.service.cs;


public class PageService {
	public static String getNavi(int currentPage, int pageBlock, int totalCount, String url) {
		int blockCnt = totalCount / pageBlock;
		
		if(totalCount % pageBlock > 0)
			blockCnt++;
		
		String result = "";
		if(currentPage != 1)
			
			result+="<a href='"+url+(currentPage-1)+"'> <span><img src=\"https://www.kcar.com/images/common/pagenation-btn-left.svg\" alt=\"이전\"></span> </a>&nbsp;";
			
		for(int i = 1;i <= blockCnt; i++) {
			if(currentPage == i)
				result+="<b>";
			
			result+="<a href='"+url+i+"'>"+ i +" </a>";
			if(currentPage == i)
				result+="</b>";
		}
		
		if(currentPage!=blockCnt) 
			result+="&nbsp;<a href='"+url+(currentPage+1)+"'> <span><img src=\"https://www.kcar.com/images/common/pagenation-btn-right.svg\" alt=\"다음\"></span> </a>";
		return result;
	}
}
