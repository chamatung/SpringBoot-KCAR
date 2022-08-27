package com.one.kcar.service.buy;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.one.kcar.dao.buy.ICarDetailDAO;
import com.one.kcar.dao.member.IMemberDAO;
import com.one.kcar.dto.buy.BuyReviewDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.CarInfoDTO;
import com.one.kcar.dto.buy.CarOptionDTO;
import com.one.kcar.dto.buy.CarOptionPhotoDTO;
import com.one.kcar.dto.buy.CarPhotoDTO;
import com.one.kcar.dto.buy.CarTagDTO;
import com.one.kcar.dto.buy.ContractDTO;
import com.one.kcar.dto.buy.PaymentVO;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.buy.StoreDTO;
import com.one.kcar.dto.member.MemberDTO;

@Service
public class detailService {
	@Autowired
	private ICarDetailDAO carDetailDao;
	@Autowired
	private IMemberDAO memberDao;
	@Autowired
	private HttpSession session;

	private Cookie latelyCar;

	private ArrayList<CarDTO> latelyCarDtoList;

	public Cookie getLatelyCar() {
		return latelyCar;
	}

	public ArrayList<CarDTO> getLatelyCarDtoList() {
		return latelyCarDtoList;
	}

	public void setLatelyCar(Cookie latelyCar) {
		this.latelyCar = latelyCar;
	}

	public void setLatelyCarDtoList(ArrayList<CarDTO> latelyCarDtoList) {
		this.latelyCarDtoList = latelyCarDtoList;
	}

	public void latelyCarCookie() {
		Cookie latelyCar = new Cookie("latelyCar", null);
		latelyCar.setPath("/");
		latelyCar.setMaxAge(7 * 24 * 60);
		this.latelyCar = latelyCar;
	}

	public String carDetail(String c_num, Model model, HttpServletResponse res) {

		CarDTO car = carDetailDao.car(c_num);// kcar_car
		CarInfoDTO carInfo = carDetailDao.carInfo(c_num);// kcar_car_info
		ArrayList<CarPhotoDTO> CarPhotoList = carDetailDao.carPhotoList(c_num);// kcar_car_photo
		CarOptionDTO carOption = carDetailDao.carOption(c_num);

		int carPrice = Integer.parseInt(car.getC_price());

		PaymentVO paymentVo = payment(carPrice * 10000, 0);
		PaymentVO paymentVo8 = payment(carPrice * 10000, 0.08d);
		PaymentVO paymentVo9 = payment(carPrice * 10000, 0.09d);
		PaymentVO paymentVo11 = payment(carPrice * 10000, 0.11d);
		PaymentVO paymentVo13 = payment(carPrice * 10000, 0.13d);

		ArrayList<QuestionDTO> questionList = carDetailDao.quesionList();
		ArrayList<BuyReviewDTO> reviewList = carDetailDao.reviewList();
		// 차량 할부 등 금액 정보들 36개월 연 7프로 기준
		model.addAttribute("carPriceInfo", paymentVo);
		model.addAttribute("carPriceInfo8", paymentVo8);
		model.addAttribute("carPriceInfo9", paymentVo9);
		model.addAttribute("carPriceInfo11", paymentVo11);
		model.addAttribute("carPriceInfo13", paymentVo13);

		model.addAttribute("car", car);
		model.addAttribute("carInfo", carInfo);
		model.addAttribute("questionList", questionList);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("CarPhotoFirst", car.getC_photo());
		if (CarPhotoList.size() != 0) {
			model.addAttribute("CarPhotoListBottom", CarPhotoList);
			CarPhotoList.remove(0);
			model.addAttribute("CarPhotoListCenter", CarPhotoList);
		}
		if (carOption != null) {
			model.addAttribute("carOption", carOption);
		}

		// 쿠키생성
		if (this.latelyCar == null) {
			latelyCarCookie();
			this.latelyCarDtoList = new ArrayList<CarDTO>();// 차량정보값 초기화
			this.latelyCar.setValue("latelyCarDtoList");
		}
		// value값 초기화시 다시 생성
		if (this.latelyCar.getValue() == null) {
			latelyCarCookie();
			this.latelyCarDtoList = new ArrayList<CarDTO>();// 차량정보값 초기화
			this.latelyCar.setValue("latelyCarDtoList");
		}

		// 최근본차량 쿠키저장
		int cnt = 0;
		for (int i = 0; i < latelyCarDtoList.size(); i++) {
			if (latelyCarDtoList.get(i).getC_num().equals(c_num)) {
				cnt++;
			}
		}
		if (cnt == 0) {
			car.setMonthPrice(paymentVo.getResult2() + "");
			latelyCarDtoList.add(car);
			if (latelyCarDtoList.size() > 15) {
				latelyCarDtoList.remove(0);
			}
		}

		return null;
	}

	public PaymentVO payment(int carPrice, double yearRate) {
		PaymentVO paymentVo = new PaymentVO();
		if (yearRate == 0) {
			paymentVo.setCarPrice(carPrice);
			return paymentVo;
		}
		paymentVo.setCarPrice(carPrice);
		paymentVo.setYearRate(yearRate);

		return paymentVo;
	}

	public String carOrder(String c_num, Model model) {
		String email = (String) session.getAttribute("id");
		if (email == null || email.isEmpty())
			return "로그인";
		if (c_num == null || c_num.isEmpty())
			return "차번호";
		CarDTO car = carDetailDao.car(c_num);

		PaymentVO paymentVo = new PaymentVO();

		int carPrice = Integer.parseInt(car.getC_price());
		paymentVo.setCarPrice(carPrice * 10000);

		model.addAttribute("car", car);
		model.addAttribute("carPriceInfo", paymentVo);

		return null;
	}

	public String carOrderRequest(String c_num, String c_price, Model model) {
		String email = (String) session.getAttribute("id");
		if (email == null || email.isEmpty())
			return "로그인";
		if (c_num == null || c_num.isEmpty())
			return "차번호";
		CarDTO car = carDetailDao.car(c_num);

		PaymentVO paymentVo = new PaymentVO();

		int carPrice = Integer.parseInt(car.getC_price());
		paymentVo.setCarPrice(carPrice * 10000);

		MemberDTO member = memberDao.login(email);
		model.addAttribute("member", member);
		model.addAttribute("car", car);
		model.addAttribute("carPriceInfo", paymentVo);

		return null;
	}

	public String carOrderDetail(MemberDTO member, String c_num, Model model) {
		String email = (String) session.getAttribute("id");
		if (email == null || email.isEmpty())
			return "로그인";
		CarDTO car = carDetailDao.car(c_num);

		PaymentVO paymentVo = new PaymentVO();

		int carPrice = Integer.parseInt(car.getC_price());
		paymentVo.setCarPrice(carPrice * 10000);

		model.addAttribute("member", member);
		model.addAttribute("car", car);
		model.addAttribute("carPriceInfo", paymentVo);
		model.addAttribute("member", member);

		return null;
	}

	// 결제했다치고 정보 입력 후 배송정보페이지로 이동
	public String carPayment(MemberDTO member, String c_num, Model model) {
		String email = (String) session.getAttribute("id");
		if (email == null || email.isEmpty())
			return "로그인";
		CarDTO car = carDetailDao.car(c_num);
		PaymentVO paymentVo = new PaymentVO();

		int carPrice = Integer.parseInt(car.getC_price());
		paymentVo.setCarPrice(carPrice * 10000);
		ContractDTO contract = new ContractDTO();

		contract.setC_c_b_email(email);// null
		contract.setC_c_b_name(member.getM_name());
		contract.setC_c_b_tel(member.getM_tel());
		contract.setC_c_b_zipcode(member.getM_zipcode());
		contract.setC_c_b_addr1(member.getM_addr1());
		contract.setC_c_b_addr2(member.getM_addr2());
		contract.setC_num(c_num);
		contract.setC_c_b_totalPrice(paymentVo.getSum() + "");
		contract.setC_c_b_carPrice(paymentVo.getCarPrice() + "");
		contract.setC_c_b_registrationPrice(paymentVo.getRegistrationPrice() + "");
		contract.setC_c_b_managePrice(paymentVo.getManagePrice() + "");
		contract.setC_c_b_registPrice(paymentVo.getRegistPrice() + "");
		contract.setC_c_b_kw(paymentVo.getKw() + "");

		carDetailDao.contract(contract);
		carDetailDao.carUpdate(c_num);
		carDetailDao.sellRequestUpdate(c_num);

		return "차량구매 성공";
	}

	@Autowired
	CarInfoMailService carInfoMailService;

	public String emailSend(Map<String, String> data) {

		String c_num = data.get("carNum");
		String name = data.get("name");
		String email = data.get("email");
		String emailContent = data.get("content");

		String subject = "K Car님이 보내신 차량 정보입니다.";

		CarDTO car = carDetailDao.car(c_num);
		CarOptionDTO carOption = carDetailDao.carOption(c_num);
		CarTagDTO carTag = carDetailDao.carTag(c_num);
		StoreDTO store = carDetailDao.store(car.getSt_name());
		PaymentVO paymentVo = new PaymentVO();
		int carPrice = Integer.parseInt(car.getC_price());
		paymentVo.setCarPrice(carPrice * 10000);

		String bodyHtml = bodyHtml(name, emailContent, car, carOption, carTag, paymentVo, store);
		String msg = carInfoMailService.sendEmail(email, subject, bodyHtml);

		return msg;
	}

//email content
	private String bodyHtml(String name, String emailContent, CarDTO car, CarOptionDTO carOption, CarTagDTO carTag,
			PaymentVO paymentVo, StoreDTO store) {
		String bodyHtml = "<div id=\"readFrame\">\r\n" + "		<div\r\n"
				+ "			style=\"max-width: 700px; min-width: 280px; margin: 0 auto; font-family: '나눔고딕', Helvetica, Arial, NanumGothic, '맑은 고딕', SDNeoGothic, SDGothicNeo, '돋움', 'dotum', sans-serif;\">\r\n"
				+ "			<div style=\"padding: 40px;\">\r\n" + "				<!-- 제목 및 차량 이미지 -->\r\n"
				+ "				<div style=\"width: 100%;\">\r\n" + "					<table width=\"100%\"\r\n"
				+ "						style=\"border-collapse: collapse; border-spacing: 0px; word-break: break-all; word-wrap: break-word;\">\r\n"
				+ "						<colgroup>\r\n" + "							<col width=\"100%\">\r\n"
				+ "						</colgroup>\r\n" + "						<tbody>\r\n"
				+ "							<tr>\r\n" + "								<td><span\r\n"
				+ "									style=\"font-size: 22px; color: ##16171d; font-weight: bold; letter-spacing: -0.4px;\">kcar.com에서\r\n"
				+ "										<span\r\n"
				+ "										style=\"font-size: 22px; font-weight: bold; color: #b70f28; letter-spacing: -0.4px;\">"
				+ name + "</span>님께\r\n" + "										보내신 차량정보입니다.\r\n"
				+ "								</span></td>\r\n" + "							</tr>\r\n"
				+ "							<tr>\r\n" + "								<td>\r\n"
				+ "									<p\r\n"
				+ "										style=\"padding: 16px 24px; border-radius: 8px; background-color: #f6f8fa; font-size: 16px; letter-spacing: -0.4px; color: #16171d; margin-top: 24px;\">"
				+ emailContent + "</p>\r\n" + "								</td>\r\n"
				+ "							</tr>\r\n" + "							<tr>\r\n"
				+ "								<td style=\"width: 100%; padding-top: 20px;\"><img\r\n"
				+ "									src=\"" + car.getC_photo() + "\"\r\n"
				+ "									alt=\"차량이미지\" style=\"width: 100%; display: block;\" loading=\"lazy\">\r\n"
				+ "									<p\r\n"
				+ "										style=\"padding: 14px 24px; background-color: #f6f8fa; font-size: 14px; color: #54555a;\">\r\n"
				+ "										<span>#무사고 #신차보증연장 #렌트/할부 가능! #당일출고 가능!</span>\r\n"
				+ "									</p></td>\r\n" + "							</tr>\r\n"
				+ "						</tbody>\r\n" + "					</table>\r\n"
				+ "					<!-- 차량 정보 -->\r\n" + "					<div\r\n"
				+ "						style=\"width: 100%; padding: 24px 0; font-size: 14px; letter-spacing: -0.4px; color: #16171d; line-height: 20px; border-bottom: 1px solid #f2f2f2;\">\r\n"
				+ "						<table width=\"100%\"\r\n"
				+ "							style=\"border-collapse: collapse; border-spacing: 0px; word-break: break-all; word-wrap: break-word;\">\r\n"
				+ "							<colgroup>\r\n" + "								<col width=\"100%\">\r\n"
				+ "							</colgroup>\r\n" + "							<tbody>\r\n"
				+ "								<tr>\r\n" + "									<td><span\r\n";
		if (carTag != null) {
			for (String tag : carTag.getBrandCarInfoTag()) {
				bodyHtml += "style=\"color: #b70f28; font-size: 13px; height: 24px; margin: 0 4px 0 0; padding: 3px 8px; border-radius: 4px; background-color: #fff9f9;\">"
						+ tag + "</span><span\r\n";
			}
		}
		bodyHtml += "									</td>\r\n" + "								</tr>\r\n"
				+ "								<tr>\r\n"
				+ "									<td style=\"padding-top: 20px\"><span\r\n"
				+ "										style=\"color: #b70f28; font-size: 22px; letter-spacing: -0.4px; color: #16171d; font-weight: bold;\">"
				+ car.getCb_brand() + " " + car.getCb_m_model() + "</span></td>\r\n"
				+ "								</tr>\r\n" + "								<tr>\r\n"
				+ "									<td\r\n"
				+ "										style=\"padding-top: 8px; letter-spacing: -0.4px; color: #54555a; font-size: 14px;\">\r\n"
				+ "										<span style=\"\">21년 5월식</span> <!-- 20220617퍼블 : 점으로 수정  --> ·\r\n"
				+ "										<!-- //20220617퍼블 : 점으로 수정  --> <span style=\"\">9,759km</span>\r\n"
				+ "										· <span style=\"\">" + car.getC_fuel() + "</span>\r\n"
				+ "									</td>\r\n" + "								</tr>\r\n"
				+ "								<tr>\r\n" + "									<td\r\n"
				+ "										style=\"padding-top: 4px; letter-spacing: -0.4px; color: #54555a; font-size: 14px;\">\r\n"
				+ "										<span style=\"\">김환민 차량평가사</span> <span\r\n"
				+ "										style=\"position: relative; display: inline-block; padding-left: 25px; margin-left: 8px; color: #b70f28\">\r\n"
				+ "											<i><img\r\n"
				+ "												src=\"https://www.kcar.com/images/mail/icon-etc-tel-fill.png\"\r\n"
				+ "												loading=\"lazy\"></i> 0504-1366-0098\r\n"
				+ "									</span>\r\n" + "									</td>\r\n"
				+ "								</tr>\r\n" + "								<tr>\r\n"
				+ "									<td style=\"padding-top: 16px\"><span\r\n"
				+ "										style=\"font-size: 24px; font-weight: normal;\"> <strong\r\n"
				+ "											style=\"font-weight: bold; color: #b70f28; font-size: 30px;\">"
				+ car.getC_price() + "</strong>만원\r\n"
				+ "									</span> <!-- 20220617퍼블 : line-height: 34px; vertical-align: bottom; 수정  -->\r\n"
				+ "										<span\r\n"
				+ "										style=\"font-size: 14px; font-weight: normal; display: inline-block; color: #16171d; margin-left: 8px; line-height: 34px; vertical-align: bottom;\">36개월 기준 할부\r\n"
				+ "											<span\r\n"
				+ "											style=\"font-size: 14px; font-weight: normal; color: #b70f28;\">월\r\n"
				+ "												" + paymentVo.getResult2() + "만원</span>\r\n"
				+ "									</span></td>\r\n" + "								</tr>\r\n"
				+ "							</tbody>\r\n" + "						</table>\r\n"
				+ "					</div>\r\n" + "				</div>\r\n" + "				<!-- 총구매 예상 비용 -->\r\n"
				+ "				<div style=\"width: 100%; padding-top: 24px\">\r\n"
				+ "					<p style=\"font-size: 16px; font-weight: bold; color: #16171d;\">\r\n"
				+ "						<span>총 구매 예상 비용</span> <span\r\n"
				+ "							style=\"color: #b70f28; float: right;\">" + paymentVo.getSum()
				+ "원</span>\r\n" + "					</p>\r\n" + "					<div\r\n"
				+ "						style=\"font-size: 12px; font-weight: normal; color: #54555a; margin: 16px 0 0; padding: 16px; border-radius: 8px; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "						<p>\r\n"
				+ "							<span style=\"\">차량가</span> <span style=\"float: right;\">"
				+ paymentVo.getCarPrice() + "원</span>\r\n" + "						</p>\r\n"
				+ "						<p style=\"padding-top: 8px\">\r\n"
				+ "							<span style=\"\">세금 및 부대비용</span> <span style=\"float: right;\">"
				+ (paymentVo.getSum() - paymentVo.getCarPrice()) + "</span>\r\n" + "						</p>\r\n"
				+ "					</div>\r\n" + "				</div>\r\n" + "				<!-- 차량 기본 정보 -->\r\n"
				+ "				<div style=\"width: 100%; padding-top: 24px\">\r\n"
				+ "					<p style=\"font-size: 16px; font-weight: bold; color: #16171d;\">\r\n"
				+ "						<span>차량기본정보</span>\r\n" + "					</p>\r\n"
				+ "					<div style=\"padding: 16px 0;\">\r\n"
				+ "						<table width=\"100%\"\r\n"
				+ "							style=\"padding-bottom: 32px; border-collapse: collapse; border-spacing: 0px; word-break: break-all; word-wrap: break-word;\">\r\n"
				+ "							<colgroup>\r\n" + "								<col width=\"25%\">\r\n"
				+ "								<col width=\"25%\">\r\n"
				+ "								<col width=\"25%\">\r\n"
				+ "								<col width=\"25%\">\r\n" + "							</colgroup>\r\n"
				+ "							<tbody>\r\n" + "								<tr>\r\n"
				+ "									<td style=\"vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; margin-right: 5px; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">차종</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_model() + "</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n"
				+ "									<td style=\"vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; margin-right: 5px; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">연월식</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_year() + "</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n"
				+ "									<td style=\"vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">주행거리</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_distance() + "km</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n" + "								</tr>\r\n"
				+ "								<tr>\r\n"
				+ "									<td style=\"padding-top: 4px; vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; margin-right: 5px; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">차량번호</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_num() + "</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n"
				+ "									<td style=\"padding-top: 4px; vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; margin-right: 5px; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">미션</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_change() + "</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n"
				+ "									<td style=\"padding-top: 4px; vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; margin-right: 5px; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">색/도어</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_color() + "/0</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n"
				+ "									<td style=\"padding-top: 4px; vertical-align: top;\">\r\n"
				+ "										<!-- 20220617퍼블 : 수정  --> <span\r\n"
				+ "										style=\"display: block; height: 100%; font-size: 12px; color: #54555a; text-align: left; padding: 13px 16px; border-left: 1px solid #f2f2f2; border-radius: 8px; background-color: #fff; box-shadow: 0 2px 4px 0 rgba(22, 23, 29, 0.04); border: solid 1px #e2e8ee;\">\r\n"
				+ "											<span style=\"display: block;\">연료</span> <strong\r\n"
				+ "											style=\"font-size: 13px; font-weight: bold; color: #16171d; padding-top: 4px; display: inline-block;\">"
				+ car.getC_fuel() + "</strong>\r\n" + "									</span>\r\n"
				+ "									</td>\r\n" + "								</tr>\r\n"
				+ "							</tbody>\r\n" + "						</table>\r\n" + "\r\n"
				+ "					</div>\r\n" + "					<a\r\n"
				+ "						href=\"http://localhost/detail/carInfo?c_num=" + car.getC_num() + "\"\r\n"
				+ "						style=\"font-size: 13px; color: #b70f28; font-weight: bold; text-align: center; text-decoration: none; cursor: pointer; padding: 11px 0; : 100%; display: block; border-radius: 4px; border: solid 1px #b70f28;\"\r\n"
				+ "						rel=\"noreferrer noopener\" target=\"_blank\">차량정보 상세보기</a>\r\n"
				+ "				</div>\r\n" + "				<!-- 직영점 정보 -->\r\n"
				+ "				<div style=\"width: 100%; padding-top: 24px\">\r\n" + "					<p\r\n"
				+ "						style=\"font-size: 16px; font-weight: bold; color: #16171d; padding-bottom: 16px; border-bottom: 1px solid #f2f2f2;\">\r\n"
				+ "						<span>직영점 정보</span>\r\n" + "					</p>\r\n"
				+ "					<table width=\"100%\"\r\n"
				+ "						style=\"background-color: #fff; margin-bottom: 32px; margin-top: 20px; border-collapse: collapse; border-spacing: 0px; word-break: break-all; word-wrap: break-word;\">\r\n"
				+ "						<colgroup>\r\n" + "							<col width=\"96px\">\r\n"
				+ "							<col width=\"*\">\r\n" + "						</colgroup>\r\n"
				+ "						<tbody>\r\n" + "							<tr>\r\n"
				+ "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; color: #16171d; padding: 4px 0;\">직영점</td>\r\n"
				+ "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; font-weight: normal; line-height: 1.33; padding: 4px 0;\">"
				+ store.getSt_name() + "</td>\r\n" + "							</tr>\r\n"
				+ "							<tr>\r\n" + "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; color: #16171d; padding: 4px 0;\">상담\r\n"
				+ "									시간</td>\r\n" + "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; font-weight: normal; line-height: 1.33; padding: 4px 0;\">월~토요일\r\n"
				+ "									09:00~18:00 공휴일/일요일 휴점</td>\r\n"
				+ "							</tr>\r\n" + "							<tr>\r\n"
				+ "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; color: #16171d; padding: 4px 0;\">대표전화</td>\r\n"
				+ "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; font-weight: normal; line-height: 1.33; padding: 4px 0;\">"
				+ store.getSt_tel() + "</td>\r\n" + "							</tr>\r\n"
				+ "							<tr>\r\n" + "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; color: #16171d; padding: 4px 0;\">주소</td>\r\n"
				+ "								<td\r\n"
				+ "									style=\"text-align: left; font-size: 13px; font-weight: normal; line-height: 1.33; padding: 4px 0;\">"
				+ store.getSt_addr() + "</td>\r\n" + "							</tr>\r\n"
				+ "						</tbody>\r\n" + "					</table>\r\n" + "				</div>\r\n"
				+ "			</div>\r\n" + "		</div>\r\n" + "	</div>";
		return bodyHtml;
	}
}
