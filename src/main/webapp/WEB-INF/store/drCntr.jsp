<%@ page contentType="text/html; charset=UTF-8"%>

<head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=25b6215a33995fb8cff8835aecce271b&libraries=services"></script>
<script src="/js/storescript.js"></script>

<%@include file="/WEB-INF/default/header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style>
.dropup {
	display: none;
}

.modalopen {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(8, 8, 8, 0.75);
	z-index: 11;
}
</style>
</head>
<body>
	<div class="normal" id="modalbox"></div>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app" class="Container">
				<div>
					<div class="el-dialog__wrapper popup fullPopup xnone active"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="딜러 약관 동의"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">딜러 약관 동의</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div class="footerBtnWrap">
										<div class="searchTrigger box multBtn el-row">
											<button class="button apply">확인</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
				</div>
				<div class="directCenter contWrap">
					<div class="el-row">
						<div class="subHeader">
							<h2 class="title">전국직영점</h2>
							<p class="desc"">전국직영점을 검색해 보세요.</p>
						</div>
						<div class="centerSearchForm">
							<div class="areaSearch">
								<div class="el-select"">
									<!---->
									<div class="el-input el-input--suffix ">
										<!---->
										<input type="text" readonly="readonly" placeholder="직영점 검색"
											class="el-input__inner" id="sel1" onclick="dropdown()">
										<!---->
										<div class="dropup" id="dropdown-menu"
											style="min-width: 522px; transform-origin: center bottom; z-index: 2047; position: absolute; top: 50px; left: 0px;"
											x-placement="top-start">
											<div class="el-scrollbar" style="">
												<div class="el-select-dropdown__wrap el-scrollbar__wrap"
													style="margin-bottom: -17px; margin-right: -17px;">
													<ul class="el-scrollbar__view el-select-dropdown__list">
														<!---->
														<c:forEach var="name" items="${list }">
															<li class="el-select-dropdown__item"
																onclick="select(this)"><span>${name.st_name }</span></li>
														</c:forEach>
													</ul>
												</div>
												<div class="el-scrollbar__bar is-horizontal">
													<div class="el-scrollbar__thumb"
														style="transform: translateX(0%);"></div>
												</div>
												<div class="el-scrollbar__bar is-vertical">
													<div class="el-scrollbar__thumb"
														style="transform: translateY(0%); height: 14.8936%;"></div>
												</div>
											</div>
											<!---->
											<div x-arrow="" class="popper__arrow" style="left: 411px;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="inner">
							<ul class="centerLists"> 
								<c:forEach var="store" items="${list }">
									<li><a href="/db/detail?st_name=${store.st_name}"><div
												class="centerVisual">
												<span class="centerNameTag">${store.st_name}</span> <img
													src="${store.st_photo }" style="cursor: pointer;">
											</div></a>
										<div class="centerInfo">
											<p>${store.st_addr}</p>
											<p class="centerTel">${store.st_tel}</p>
											<!-- 											<p class="rentcarNum">
												직영점 차량 <a href="javascript:void(0);" class="pointColor">대</a>
											</p> -->
											<div class="mt32">
												<button type="button" class="el-button el-button--button"
													onclick="mapstart('${store.st_name}')";>

													<span> 찾아오시는 길 </span>
												</button>
											
													<button type="button" class="el-button el-button--button" value="${store.st_name }" onclick="kakaotalk(this)">

														<span> 주소문자받기 </span>
													</button>
												
											</div>
										</div></li>
								</c:forEach>

							</ul>
						</div>
					</div>
					<div class="el-dialog__wrapper popup popCenter rentShopPopup"
						eager="" style="z-index: 2045; display: none;" id="mappop">
						<div role="dialog" aria-modal="true" aria-label="찾아오시는 길"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">찾아오시는 길</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn" onclose="mapclose()">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<div class="el-dialog__body">
								<div class="popContent el-scrollbar active">
									<div class="el-scrollbar__wrap"
										style="margin-bottom: -17px; margin-right: -17px;">
										<div class="el-scrollbar__view">
											<div>
												<div alt="직영점 지도"
													style="width: 545px; height: 346px; position: relative; overflow: hidden;"
													id="map">
													<div
														style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
														<div
															style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;">
															<div
																style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
															<div
																style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div>
														</div>
														<div style="margin: 0px 4px; float: left;">
															<a target="_blank" href="http://map.kakao.com/"
																title="Kakao 지도로 보시려면 클릭하세요."
																style="float: left; width: 32px; height: 10px;"><img
																src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png"
																alt="Kakao 지도로 이동"
																style="float: left; width: 32px; height: 10px; border: none;"></a>
															<div
																style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
														</div>
													</div>

												</div>
												<div>
													<ul class="detailList">
														<li><h5>주소</h5>
															<p id="address"></p></li>

													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="el-scrollbar__bar is-horizontal">
										<div class="el-scrollbar__thumb"
											style="transform: translateX(0%);"></div>
									</div>
									<div class="el-scrollbar__bar is-vertical">
										<div class="el-scrollbar__thumb"
											style="transform: translateY(0%);"></div>
									</div>
								</div>
							</div>
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div class="footerBtnWrap">
										<div class="searchTrigger box Large popFixBtnM el-row">
											<button class="button apply" onclick="mapclose()">닫기</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
					<div>
						<div class="el-dialog__wrapper popup popCenter rentSmsPopup"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="직영점 정보 문자받기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">직영점 정보 문자받기</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn" onclick="mapclose()">
										<i class="el-d	ialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<div class="searchTrigger box Large popFixBtnM el-row">
												<button class="button apply" onclick="mapclose()">닫기</button>
											</div>
										</div></span>
								</div>
							</div>
						</div>
					</div>

				</div>
				<%@include file="/WEB-INF/default/footer.jsp"%>
			</div>
		</div>

	</div>

</body>
<script>
function kakaotalk(content){
/* 	sessionStorage.setItem("kst_name",content.value);
	const what=sessionStorage.getItem("kst_name");
	alert(what); */
	location.href="https://kauth.kakao.com/oauth/authorize?client_id=35d849b33448f51f3c3f73a432418b30&redirect_uri=http://localhost/kakaoTalk&response_type=code&scope=talk_message";
}
</script>