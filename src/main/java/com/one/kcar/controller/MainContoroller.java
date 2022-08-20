package com.one.kcar.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.service.buy.*;

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
	//판매준비차량
	@GetMapping(value="prepareCar")
	public String prepareCar() {
		return "myCarScam/prepareCar";
	}
	//3D라이브 뷰
	@GetMapping(value="vrLiveView")
	public String vrLiveView() {
		return "myCarScam/vrLiveView";
	}
	//최근 본 차량
	@GetMapping(value="latelyViewedCar")
	public String latelyViewedCar() {
		return "myCarScam/latelyViewedCar";
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
	
	@ResponseBody
	@PostMapping(value="modal", produces = "text/html; charset=utf-8")
	public String modal(@RequestBody(required = false)String brand,@RequestBody(required = false)String model) {
		String ajaxModalModelList = brandService.ajaxBrandModal(brand,model);
		
		return ajaxModalModelList;
	}
	
	
	@GetMapping(value="brandCar/brandCarList")
	public String brandCarList(@RequestParam(value="brand", required=false)String brand, Model model ) {
		if(brand == null || brand.isEmpty()) return "redirect:/brandCar";//brandParameter가 null인 경우 brand메뉴페이지로 이동 //serviceclass로 이동해서 검증할 것
		brandService.brandCarList(brand, model);
		return "myCarScam/brand/brandCarList";
	}
	
	//구매차량정보
	@GetMapping(value="detail/carInfo")
	public String carInfo(@RequestParam(value="c_num", required=false)String c_num,Model model) {
		if(c_num == null || c_num.isEmpty()) 
			return "redirect:/home";
		detailService.carDetail(c_num,model);
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
			if(msg.equals("로그인")) return "redirect:/member/login";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderBuy";
	}
	@PostMapping(value="detail/carOrderRequest")
	public String carOrderRequest(@RequestParam(required=false) String c_num,@RequestParam(required=false) String c_price,Model model) {
		String msg = detailService.carOrderRequest(c_num,c_price,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/member/login";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderRequest";
	}
	@PostMapping(value="detail/carOrderDetail")
	public String carOrderDetail(MemberDTO member,@RequestParam(required=false) String c_num,Model model) {
		String msg = detailService.carOrderDetail(member,c_num,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/member/login";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		return "myCarScam/detail/carOrderDetail";
	}
	@PostMapping(value="detail/payment")
	public String payment(MemberDTO member,@RequestParam(required=false) String c_num,Model model, RedirectAttributes ra) {
		String msg = detailService.carPayment(member,c_num,model);
		if(msg != null) {
			if(msg.equals("로그인")) return "redirect:/member/login";//로그인 안했을때
			if(msg.equals("차번호")) return "redirect:carInfo";//차번호 없을때
		}
		ra.addAttribute("msg", msg);
		return "redirect:/home";
	}
	//DB 대량데이터 INSERT용
	@Autowired
	private insertService inserService;
	
	@GetMapping(value="insertCarBrand")
	public String insertCarBrand() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarBrand();
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertCarBrandModel")
	public String insertCarBrandModel() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarBrandModel();
		return "redirect:/brandCar";
	}
	
	@GetMapping(value="insertCar")
	public String insertCar() throws FileNotFoundException, IOException {
		String msg = inserService.insertCar();
		return "redirect:/brandCar";
		
	}
	@GetMapping(value="insertCarTag")
	public String insertCarTag() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarTag();
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
		return "redirect:/brandCar";
	}
	
	@GetMapping(value="insertCarPhoto")
	public String insertCarPhoto() throws FileNotFoundException, IOException {
		String msg = inserService.insertCarPhoto();
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertQuestion")
	public String insertQuestion() throws FileNotFoundException, IOException {
		String msg = inserService.insertQuestion();
		return "redirect:/brandCar";
	}
	@GetMapping(value="insertMember")
	public String insertMember() throws FileNotFoundException, IOException {
		String msg = inserService.insertMember();
		return "redirect:/brandCar";
	}
}
