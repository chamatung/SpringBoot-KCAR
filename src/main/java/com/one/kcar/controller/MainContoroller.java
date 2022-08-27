package com.one.kcar.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.service.buy.*;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class MainContoroller {
	@Autowired
	private brandService brandService;
	@Autowired
	private buyReviewService buyReviewService;
	@Autowired
	private homeService homeService;
	@Autowired
	private detailService detailService;
	@Autowired
	private latelyCarService latelyCarService;
	
	//차량검색
	@GetMapping(value = "vehicleSearch")
	public String vehicleSearch() {
		return "myCarScam/vehicleSearch";
	}
	//내차사기 홈서비스
	@GetMapping(value="homeSvc")
	public String homeSvc(Model model) {
		homeService.homeServiceMain(model);
		return "myCarScam/homeSvc";
	}
	//최근 본 차량latelyViewedCar
	@GetMapping(value="latelyViewedCar")
	public String latelyViewedCar(Model model,HttpServletResponse res, @CookieValue(name="latelyCar", required = false) String cv) {
		latelyCarService.latelyCarList("기본정렬", model,res,cv,null);
		return "myCarScam/latelyViewedCar";
	}
	//최근 본 차량 정렬
	@ResponseBody
	@PostMapping(value="latelyCarAlignment", produces = "text/html; charset=utf-8")
	public String latelyCarAlignment(@RequestBody(required = false) String alignment, Model model,@CookieValue(name="latelyCar", required = false) String cv) {
		String data = null;
		if(alignment != null) {
			data = latelyCarService.latelyCarList(alignment, model,null, cv,null);
		}
		return data;
	}
	
	//최근 본 차량 삭제 후 정렬
	@ResponseBody
	@PostMapping(value="latelyCarDelete", produces = "text/html; charset=utf-8")
	public String latelyCarDelete(@RequestBody(required = false) Map<String, String> list, Model model,@CookieValue(name="latelyCar", required = false) String cv) {
		String alignment = list.get("alignmentHidden");
		String deleteLatelyCarList = list.get("deleteLatelyCarList");
		
		String data = null;
		if(alignment != null) {
			data = latelyCarService.latelyCarList(alignment, model,null, cv,deleteLatelyCarList);
		}
		return data;
	}
	@ResponseBody
	@PostMapping(value="letterAjax", produces = "text/html; charset=utf-8")
	public String letterAjax(@RequestBody(required = false) Map<String, String> list) throws CoolsmsException {
		
		String msg = latelyCarService.letterSend(list);
		return msg;
	}
	//내차사기 고객후기
	@GetMapping(value="BuyCustReview")
	public String BuyCustReview(@RequestParam(value="currentPage",required = false,defaultValue="1")String currentPage,
			@RequestBody(required = false) String data, Model model) {
		HashMap<String, String> map = new HashMap<>();
		map.put("currentPage", currentPage);
		map.put("data", data);
		buyReviewService.buyReivewAllList(map,model);
		return "myCarScam/BuyCustReview";
	}
	//내차사기 고객후기 페이징
	@ResponseBody
	@PostMapping(value="buyReviewPaging", produces = "text/html; charset=utf-8")
	public String buyReviewPaging(@RequestBody(required = false) HashMap<String,String> map, Model model) {
		String revieList = buyReviewService.buyReivewAllList(map, model);
		return revieList;
	}
	//브랜드인증관 페이지 필터 없는 경우
	@GetMapping(value="brandCar")
	public String brandCar(@RequestParam(value="currentPage",required = false,defaultValue="1") String currentPage,
			@RequestBody(required = false) String data, Model model) {
		HashMap<String, String> map = new HashMap<>();
		map.put("currentPage", currentPage);
		map.put("data", data);
		map.put("brand", null);
		map.put("model", null);
		brandService.brandCarAllList(map,model);
		
		return "myCarScam/brandCar";
	}
	//paging 비동기통신
	@ResponseBody
	@PostMapping(value="brandCarPaging", produces="text/html; charset=utf-8")
	public String brandCarPaging(@RequestBody(required = false) HashMap<String,String> map, Model model) {
		String ajaxBrandCarAllList;
		if(map.get("currentPage") != null ) {
			ajaxBrandCarAllList = brandService.brandCarAllList(map,model);
			return ajaxBrandCarAllList;
		}else {
			map.put("currentPage", "1");
			ajaxBrandCarAllList = brandService.brandCarAllList(map,model);
			return ajaxBrandCarAllList;
		}
	}
	//
	@ResponseBody
	@PostMapping(value="modal", produces = "text/html; charset=utf-8")
	public String modal(@RequestBody(required = false)String brand,@RequestBody(required = false)String model) {
		String ajaxModalModelList = brandService.ajaxBrandModal(brand,model);
		
		return ajaxModalModelList;
	}
	
	//구매차량정보
	@GetMapping(value="detail/carInfo")
	public String carInfo(@RequestParam(value="c_num", required=false)String c_num,Model model,HttpServletResponse res) {
		if(c_num == null || c_num.isEmpty()) 
			return "redirect:/home";
		detailService.carDetail(c_num,model,res);
		return "myCarScam/detail/carInfo";
	}
	
	@GetMapping(value="detail/carOrderBuy")
	public String carOrderBuy() {
		return "redirect:/detail/carInfo";
	}
	@GetMapping(value="detail/carOrderRequest")
	public String carOrderRequest() {
		return "redirect:/detail/carInfo";
	}
	@GetMapping(value="detail/carOrderDetail")
	public String carOrderDetail() {
		return "redirect:/detail/carInfo";
	}
	@GetMapping(value="detail/payment")
	public String payment() {
		return "redirect:/detail/carInfo";
	}
	//차량구매하기 페이지
	@PostMapping(value="detail/carOrderBuy")
	public String carOrderBuy(@RequestParam(required=false) String c_num, Model model) {
		String msg = detailService.carOrder(c_num,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/logins";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderBuy";
	}
	@PostMapping(value="detail/carOrderRequest")
	public String carOrderRequest(@RequestParam(required=false) String c_num,@RequestParam(required=false) String c_price,Model model) {
		String msg = detailService.carOrderRequest(c_num,c_price,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/logins";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderRequest";
	}
	@PostMapping(value="detail/carOrderDetail")
	public String carOrderDetail(MemberDTO member,@RequestParam(required=false) String c_num,Model model) {
		String msg = detailService.carOrderDetail(member,c_num,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/logins";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderDetail";
	}
	@PostMapping(value="detail/payment")
	public String payment(MemberDTO member,@RequestParam(required=false) String c_num,Model model, RedirectAttributes ra) {
		String msg = detailService.carPayment(member,c_num,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/logins";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		ra.addAttribute("msg", msg);
		return "redirect:/home";
	}
	
	
	//차량정보 이메일 보내기
	
	
	@ResponseBody
	@PostMapping(value="detail/emailSend", produces = "text/html; charset=utf-8")
	public String emailSend(@RequestBody(required = false) Map<String,String> data) {
		String msg = detailService.emailSend(data);
		return msg;
	}
	//DB 대량데이터 INSERT용
	@Autowired
	private insertService inserService;
	
	@GetMapping(value="insertCarBrand")
	public String insertCarBrand() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarBrand();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertCarBrandModel")
	public String insertCarBrandModel() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarBrandModel();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertCar")
	public String insertCar() throws FileNotFoundException, IOException {
		String msg = inserService.insertCar();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertCarTag")
	public String insertCarTag() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarTag();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertContract")
	public String insertContract() throws FileNotFoundException, IOException {
		String msg = inserService.insertContract();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertReview")
	public String insertReview() throws FileNotFoundException, IOException {
		String msg = inserService.insertReview();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertCarPhoto")
	public String insertCarPhoto() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarPhoto();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertQuestion")
	public String insertQuestion() throws FileNotFoundException, IOException {
		String msg = inserService.insertQuestion();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertMember")
	public String insertMember() throws FileNotFoundException, IOException {
		String msg = inserService.insertMember();
		System.out.println(msg);
		return "redirect:/brandCar";
	}
}
