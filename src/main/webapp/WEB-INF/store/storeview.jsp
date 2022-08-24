<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="el-tabs__content" id="storeView">
	<div role="tabpanel" id="pane-innertab01"
		aria-labelledby="tab-innertab01" class="el-tab-pane mt80">
		<div class="dcDetailView">
			<div class="dcDetailImg">
				<img src="${sessionScope.st_photo }" alt="강남직영점">
				<!---->
			</div>
			<div class="dcDetailList">
				<ul>
					<li><h5>주소</h5>
						<p>${sessionScope.st_addr}</p></li>
					<li><h5>영업시간</h5>
						<p>월~토요일 09:00~18:00 공휴일/일요일 휴점</p></li>
					<li><h5>대표전화</h5>
						<p>${sessionScope.st_tel}</p></li>
					<li><h5>주요업무</h5>
						<ul class="icoDetail">
							<li><img src="/images/directcenter/icon-con-direct-0.png"
								alt="아이콘"> <span>중고차판매</span></li>
							<li><img src="/images/directcenter/icon-con-direct-1.png"
								alt="아이콘"> <span>중고차매입</span></li>
							<li><img src="/images/directcenter/icon-con-direct-4.png"
								alt="아이콘"> <span>차량진단</span></li>
							<li><img src="/images/directcenter/icon-con-direct-7.png"
								alt="아이콘"> <span>폐차</span></li>
							<li><img src="/images/directcenter/icon-con-direct-5.png"
								alt="아이콘"> <span>매매계약</span></li>
							<li><img src="/images/directcenter/icon-con-direct-2.png"
								alt="아이콘"> <span>명의이전 대행</span></li>
							<li><img src="/images/directcenter/icon-con-direct-3.png"
								alt="아이콘"> <span>중고차금융</span></li>
							<li>
								<!----> <!---->
							</li>
						</ul></li>
				</ul>
				<div class="contentButton">
					<button type="button"
						class="el-button button apply el-button--button">
						<span> 직영점 차량 (${totalsize}대) </span>
					</button>

				</div>
			</div>
		</div>
		<div class="partSection mt80">
			<h3 class="subTitle">최근 등록 차량</h3>
			<div>
				<div>
					<div class="carListWrap mT20">
					<c:forEach var="car" items="${list}" begin="0" end="2">
						<div class="carListBox" style="cursor: pointer;">
							<div class="carListImg" style="cursor: pointer;">
								<div>
									<img src="${car.c_photo }" alt="챠량이미지"
										onerror="this.src='/images/search/bg_no_Img_lg.png'"
										loading="lazy">
								</div>
								<ul class="listViewBtn">
									<li><button type="button"
											class="el-button el-button--default icon icoFav"
											id="mkt_brandAddWish">
											<!---->
											<!---->
											<span><span class="_hidden">찜하기</span></span>
										</button></li>
								</ul>
							</div>
							<ul class="listViewLabel">
							</ul>
							<div class="detailInfo">
								<div class="carName">
									<h3>${car.cb_brand }&nbsp;${car.cb_m_model }&nbsp;${car.c_fuel }
									</h3>
								</div>
								<div class="carListFlex">
									<div class="carExpIn">
										<p class="carExp">${car.c_price }만원</p>
									</div>
									<p class="detailCarCon">
										<span class="block">${car.c_year }</span> <span>${car.c_distance }
											km</span> <span>${car.c_fuel }</span> <span>${car.st_name }</span>
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup confirm noTitle"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div></div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<div>
							<div class="el-dialog__wrapper popup popCenter  active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button id="" class="button chosenApply">취소</button>
													<button id="mkt_intrstCarAplId" class="button apply">신청하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="dialog"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title"></span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div></div></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section>
			<div id="location" name="dtlLoc" class="partSection">
				<h3 class="subTitle">찾아오시는 길</h3>
				<div class="dcDetailView">
					<div class="dcDetailMap"
						style="position: relative; overflow: hidden;" id='map'></div>
					<div class="dcDetailList">
						<h4 class="title">${sessionScope.st_name}</h4>
						<ul data="[object Object]">
							<li><h5>주소</h5>
								<p>${sessionScope.st_addr}</p></li>
						</ul>

					</div>
				</div>
			</div>
		</section>
		<div class="partSection"> 
	<!-- 		<h4 class="subTitle mb0">직원 안내</h4>
			<div class="tabsParts el-tabs el-tabs--card el-tabs--top">
				<div class="el-tabs__header is-top">
					<div class="el-tabs__nav-wrap is-top">
						<div class="el-tabs__nav-scroll">
							<div role="tablist" class="el-tabs__nav is-top"
								style="transform: translateX(-0px);">
								<div id="tab-innrTabPart0" aria-controls="pane-innrTabPart0"
									role="tab" aria-selected="true" tabindex="0"
									class="el-tabs__item is-top is-active">전체</div>
								<div id="tab-innrTabPart1" aria-controls="pane-innrTabPart1"
									role="tab" tabindex="-1" class="el-tabs__item is-top">지점장</div>
								<div id="tab-innrTabPart2" aria-controls="pane-innrTabPart2"
									role="tab" tabindex="-1" class="el-tabs__item is-top">차량판매</div>
								<div id="tab-innrTabPart3" aria-controls="pane-innrTabPart3"
									role="tab" tabindex="-1" class="el-tabs__item is-top">차량매입</div>
								<div id="tab-innrTabPart4" aria-controls="pane-innrTabPart4"
									role="tab" tabindex="-1" class="el-tabs__item is-top">차량정비</div>
								<div id="tab-innrTabPart5" aria-controls="pane-innrTabPart5"
									role="tab" tabindex="-1" class="el-tabs__item is-top">고객지원</div>
							</div>
						</div>
					</div>
				</div>
				<div class="el-tabs__content">
					<div role="tabpanel" id="pane-innrTabPart0"
						aria-labelledby="tab-innrTabPart0" class="el-tab-pane">
						<div
							data="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]"
							class="workerBoard">
							<ul>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1251.jpg"
											alt="김형표"></span>
										<p class="label">지점장</p>
										<p class="name">김형표</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/113241858520210105090642.jpg"
											alt="강승원"></span>
										<p class="label">판매</p>
										<p class="name">강승원</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202110/CM/CMBIZ11120D/173250495420211022124813.jpg"
											alt="김학범"></span>
										<p class="label">판매</p>
										<p class="name">김학범</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/2921.jpg"
											alt="양경철"></span>
										<p class="label">판매</p>
										<p class="name">양경철</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/98143184920210105090226.jpg"
											alt="오건재"></span>
										<p class="label">판매</p>
										<p class="name">오건재</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/110841227420210125132713.jpg"
											alt="홍지원"></span>
										<p class="label">판매</p>
										<p class="name">홍지원</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202110/CM/CMBIZ11120D/191585288220211001133644.jpeg"
											alt="김대웅"></span>
										<p class="label">매입</p>
										<p class="name">김대웅</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/3042.jpg"
											alt="김두섭"></span>
										<p class="label">매입</p>
										<p class="name">김두섭</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1740.jpg"
											alt="서정균"></span>
										<p class="label">매입</p>
										<p class="name">서정균</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1334.jpg"
											alt="장우석"></span>
										<p class="label">매입</p>
										<p class="name">장우석</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/3081.jpg"
											alt="정태영"></span>
										<p class="label">매입</p>
										<p class="name">정태영</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/164128982220210121161206.jpg"
											alt="최중헌"></span>
										<p class="label">매입</p>
										<p class="name">최중헌</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/201901/CM/CMBIZ11120D/10144321120190130155702.jpg"
											alt="이혜영"></span>
										<p class="label">지원</p>
										<p class="name">이혜영</p>
										
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202202/CM/CMBIZ11120D/45785137820220214153913.PNG"
											alt="한송이"></span>
										<p class="label">지원</p>
										<p class="name">한송이</p>
										
									</div></li>
							</ul>
							<br> <br>
							
						</div>
						
						
						
						
						
					</div>
					<div role="tabpanel" aria-hidden="true" id="pane-innrTabPart1"
						aria-labelledby="tab-innrTabPart1" class="el-tab-pane"
						style="display: none;">
						
						<div data="[object Object]" class="workerBoard">
							<ul>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1251.jpg"
											alt="김형표"></span>
										<p class="label">지점장</p>
										<p class="name">김형표</p>
									</div></li>
							</ul>
							<br> <br>
							
						</div>
						
						
						
						
					</div>
					<div role="tabpanel" aria-hidden="true" id="pane-innrTabPart2"
						aria-labelledby="tab-innrTabPart2" class="el-tab-pane"
						style="display: none;">
						
						
						<div data="[object Object]" class="workerBoard">
							<ul>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/113241858520210105090642.jpg"
											alt="강승원"></span>
										<p class="label">판매</p>
										<p class="name">강승원</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202110/CM/CMBIZ11120D/173250495420211022124813.jpg"
											alt="김학범"></span>
										<p class="label">판매</p>
										<p class="name">김학범</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/2921.jpg"
											alt="양경철"></span>
										<p class="label">판매</p>
										<p class="name">양경철</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/98143184920210105090226.jpg"
											alt="오건재"></span>
										<p class="label">판매</p>
										<p class="name">오건재</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/110841227420210125132713.jpg"
											alt="홍지원"></span>
										<p class="label">판매</p>
										<p class="name">홍지원</p>
										<a class="moreListBtn">보유차량</a>
									</div></li>
							</ul>
							<br> <br>
							
						</div>
						
						
						
					</div>
					<div role="tabpanel" aria-hidden="true" id="pane-innrTabPart3"
						aria-labelledby="tab-innrTabPart3" class="el-tab-pane"
						style="display: none;">
						
						
						
						<div data="[object Object]" class="workerBoard">
							<ul>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202110/CM/CMBIZ11120D/191585288220211001133644.jpeg"
											alt="김대웅"></span>
										<p class="label">매입</p>
										<p class="name">김대웅</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/3042.jpg"
											alt="김두섭"></span>
										<p class="label">매입</p>
										<p class="name">김두섭</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1740.jpg"
											alt="서정균"></span>
										<p class="label">매입</p>
										<p class="name">서정균</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/1334.jpg"
											alt="장우석"></span>
										<p class="label">매입</p>
										<p class="name">장우석</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//DATA1/carpicture2/emp/pic/3081.jpg"
											alt="정태영"></span>
										<p class="label">매입</p>
										<p class="name">정태영</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202101/CM/CMBIZ11120D/164128982220210121161206.jpg"
											alt="최중헌"></span>
										<p class="label">매입</p>
										<p class="name">최중헌</p>
									</div></li>
							</ul>
							<br> <br>
							
						</div>
						
						
					</div>
					<div role="tabpanel" aria-hidden="true" id="pane-innrTabPart4"
						aria-labelledby="tab-innrTabPart4" class="el-tab-pane"
						style="display: none;">
						
						
						
						
						<div data="[object Object]" class="workerBoard">
							<ul></ul>
							<br> <br>
							<p class="noData">해당 직원이 없습니다.</p>
						</div>
						
					</div>
					<div role="tabpanel" aria-hidden="true" id="pane-innrTabPart5"
						aria-labelledby="tab-innrTabPart5" class="el-tab-pane"
						style="display: none;">
						
						
						
						
						
						<div data="[object Object]" class="workerBoard">
							<ul>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/201901/CM/CMBIZ11120D/10144321120190130155702.jpg"
											alt="이혜영"></span>
										<p class="label">지원</p>
										<p class="name">이혜영</p>
									</div></li>
								<li><div class="workerCont">
										<span class="workerImg"><img
											src="https://img.kcar.com//ucms/202202/CM/CMBIZ11120D/45785137820220214153913.PNG"
											alt="한송이"></span>
										<p class="label">지원</p>
										<p class="name">한송이</p>
									</div></li>
							</ul>
							<br> <br>
							
						</div>
					</div>
				</div> -->
			</div> 
		</div>
	</div>
</div>

