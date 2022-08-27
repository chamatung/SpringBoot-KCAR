<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<nav>
	<div class="mypageMenu">
		<h2 class="title">
			<a href="/mypage" aria-current="page"
				class="nuxt-link-exact-active nuxt-link-active"> 마이페이지 </a>
		</h2>
		<ul>
			<li><a href="/BuyOrderManage" class=""> 내차사기
					주문관리 </a></li>
			<li><a href="mp/MyCarSellAplMgtList" class=""> 내차팔기
					신청관리 </a></li>
			<li><a href="/RentAplList" class=""> 렌트 신청내역 </a></li>
		</ul>
	
		<ul>
			<li><a href="/latelyViewedCar" class=""> 최근 본
					차량 </a></li>
		</ul>
		<ul>
			<li><a href="/update" aria-current="page"
				class="nuxt-link-exact-active nuxt-link-active"> 회원정보 </a></li>
			
			
		</ul>
	</div>
</nav>

</body>
</html>