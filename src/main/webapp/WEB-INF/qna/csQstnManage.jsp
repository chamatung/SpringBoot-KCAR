<%@ page contentType="text/html; charset=UTF-8" %>
<html lang="ko" class="chrome">
<head>
<title>자주하는 질문 관리</title>
<%@ include file="csQstn_style.jsp" %>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width, initial-scale=1">
<meta data-n-head="ssr" data-hid="og-title" name="og:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카 ">
<meta data-n-head="ssr" data-hid="og-description" name="og:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="og-image" name="og:image"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" data-hid="og-type" name="og:type"
	content="website">
<meta data-n-head="ssr" data-hid="twitter-card" name="twitter:card"
	content="summary_large_image">
<meta data-n-head="ssr" data-hid="twitter-title" name="twitter:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카">
<meta data-n-head="ssr" data-hid="twitter-description"
	name="twitter:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="twitter-image-src"
	name="twitter:image:src"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" name="format-detection" content="telephone=no">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차">
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<script
	src="https://connect.facebook.net/signals/config/771045850193577?v=2.9.69&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-12BKR6ZT1H&amp;l=dataLayer&amp;cx=c"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NXZPHVG"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/3.2/appboy.min.js" async=""></script>
<script type="text/javascript"
	integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
	crossorigin="anonymous" async=""
	src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"></script>
<script data-n-head="ssr" src="/mobile_redirect.js"></script>
<script data-n-head="ssr" src="/static_mma_common.js"></script>
<script src="//rum.beusable.net/script/b171101e144206u678/f88ad03cce"
	async="" type="text/javascript"></script>
<script data-n-head="ssr" src="//t1.daumcdn.net/adfit/static/kp.js"
	charset="utf-8"></script>
<script data-n-head="ssr" data-hid="gtm-script">if(!window._gtm_init){window._gtm_init=1;(function(w,n,d,m,e,p){w[d]=(w[d]==1||n[d]=='yes'||n[d]==1||n[m]==1||(w[e]&&w[e][p]&&w[e][p]()))?1:0})(window,navigator,'doNotTrack','msDoNotTrack','external','msTrackingProtectionEnabled');(function(w,d,s,l,x,y){w[x]={};w._gtm_inject=function(i){if(w.doNotTrack||w[x][i])return;w[x][i]=1;w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s);j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i;f.parentNode.insertBefore(j,f);};w[y]('GTM-NXZPHVG')})(window,document,'script','dataLayer','_gtm_ids','_gtm_inject')}</script>
<link rel="preload" href="/_nuxt/f7a91b8.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/38f7038.js" as="script">
<link rel="preload" href="/_nuxt/32ff197.js" as="script">
<link rel="preload" href="/_nuxt/bbe05a3.js" as="script">

<meta http-equiv="origin-trial"
	content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659343388890&amp;cv=9&amp;fst=1659343388890&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DCj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659343388893&amp;cv=9&amp;fst=1659343388893&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=Cj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;gac=UA-23566107-15%3ACj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DCj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="A+Mt6wQ7St5J869uXW1A/aL3lJaYJYff4gUwPvwSbTuZ7z/T1l4np41d/t4W9TdeS/EMua5fYfBoz4v4TT9tdAgAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<link rel="stylesheet" type="text/css"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script type="text/javascript" async=""
	src="//tpc.googlesyndication.com/sodar/1s9mPOHO.js"></script>
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script charset="utf-8" src="/_nuxt/92725ea.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659343393488&amp;cv=9&amp;fst=1659343393488&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659343393489&amp;cv=9&amp;fst=1659343393489&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=Cj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;gac=UA-23566107-15%3ACj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8" src="/_nuxt/820dbfb.js"></script>
<script charset="utf-8" src="/_nuxt/28f6986.js"></script>
<script charset="utf-8" src="/_nuxt/f507642.js"></script>
<script charset="utf-8" src="/_nuxt/4f587d5.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659350195868&amp;cv=9&amp;fst=1659350195868&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%9E%90%EC%A3%BC%ED%95%98%EB%8A%94%20%EC%A7%88%EB%AC%B8&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659350195872&amp;cv=9&amp;fst=1659350195872&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=Cj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;gac=UA-23566107-15%3ACj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%9E%90%EC%A3%BC%ED%95%98%EB%8A%94%20%EC%A7%88%EB%AC%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659350200898&amp;cv=9&amp;fst=1659350200898&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659350200900&amp;cv=9&amp;fst=1659350200900&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=Cj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;gac=UA-23566107-15%3ACj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta data-n-head="ssr" data-hid="title" name="title" content="자주하는 질문">


</head>
<body class="" style="">
	<noscript data-n-head="ssr" data-hid="gtm-noscript" data-pbody="true">
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZPHVG&"
			height="0" width="0" style="display: none; visibility: hidden"
			title="gtm"></iframe>
	</noscript>
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<div class="contentsWrap">
					<div class="el-row">
						<!-- <div class="subHeader">
							<h1 class="title">고객지원</h1>
							<p class="desc">안녕하세요. K Car 고객센터 입니다. 무엇을 도와드릴까요?</p>
						</div> -->
						<div class="sectionHeader2">
							<h2 class="title">
								<span>자주하는 질문</span>
							</h2>
							<form action="" method="post" id="csQstn_form_Search">
								<input type="hidden" name="classification" id="classification">
								<div class="searchBar ">
									<div class="el-input">
										<input type="text" autocomplete="off" name="search" id="search"
											placeholder="궁금한 점이 있다면 무엇이든 찾아보세요" class="el-input__inner">
									</div>
									<div id="searchButton" style="cursor: pointer;">
										<i class="el-icon-search"></i>
									</div>
								</div>
							</form>
							<input type="hidden" value="${msg }" id="msg">
						</div>
					</div>
					<div class="el-row">
						<div class="contentBox">
							<div class="el-row">
								<div class="leftTabSty faqWrap el-tabs el-tabs--left">
								
									<div class="el-tabs__header is-left" style="height: 100%;" id="nav">
										<div class="el-tabs__nav-wrap is-left">
											<div class="el-tabs__nav-scroll">
												<ul role="tablist" class="el-tabs__nav is-left"
													style="transform: translateY(0px);">
													<li class="el-tabs__active-bar is-left"
														style="height: 56px; transform: translateY(0px);"></li>
													<li id="tab-C0002" aria-controls="pane-C0002" role="tab" data-tab="tab-1"
														aria-selected="true" tabindex="0" 
														class="el-tabs__item is-left is-active" onclick="buyClick()">내차사기</li>
													<li id="tab-C0003" aria-controls="pane-C0003" role="tab" data-tab="tab-2"
														tabindex="-1" class="el-tabs__item is-left" onclick="sellClick()">내차팔기</li>
													<li id="tab-C0004" aria-controls="pane-C0004" role="tab" data-tab="tab-3"
														tabindex="-1" class="el-tabs__item is-left" onclick="memberClick()">회원정보관리</li>
													<li id="tab-C0006" aria-controls="pane-C0006" role="tab" data-tab="tab-4"
														tabindex="-1" class="el-tabs__item is-left" onclick="rentClick()">렌트</li>
													<li id="tab-C0007" aria-controls="pane-C0007" role="tab" data-tab="tab-5"
														tabindex="-1" class="el-tabs__item is-left" onclick="otherClick()">기타</li>
												</ul>
											</div>
										</div>
									</div>
									<div id="contentWrap">
										<!-- <div class="el-tabs__content">
											<div role="tabpanel" id="pane-C0002"
												aria-labelledby="tab-C0002" class="el-tab-pane">
												<div>
													<div role="tablist" aria-multiselectable="true"
														class="el-collapse faqList">
														<div class="el-collapse-item">
															<div role="tab" aria-controls="el-collapse-content-5848"
																aria-describedby="el-collapse-content-5848">
																<div role="button" id="el-collapse-head-5848"
																	tabindex="0" class="el-collapse-item__header">
																	<i class="el-icon-Q"></i><span>내차사기 홈서비스란 무엇인가요?
																	</span><i class="el-collapse-item__arrow el-icon-arrow-right"></i>
																</div>
															</div>
															<div role="tabpanel" aria-hidden="true"
																aria-labelledby="el-collapse-head-5848"
																id="el-collapse-content-5848"
																class="el-collapse-item__wrap" style="display: none;">
																<div class="el-collapse-item__content">
																	<div>
																		<i class="el-icon-A"></i>
																		<div class="faqA">
																			<p>내차사기 홈서비스란 온라인으로 차량을 주문·결제하고 집에서 받아볼 수 있는 비대면
																				중고차 구매 서비스입니다.</p>
																			<p>
																				<br>
																			</p>
																			<p>K Car 홈페이지 또는 앱에서 마음에 드는 차를 찾아 내차사기 홈서비스로 주문해
																				보세요. 즉시 결제 또는 상담 후 결제를 완료하면 K Car 전문 배송 기사가 안전하고 신속하게
																				차량을 배송해 드립니다.</p>
																			<p>
																				<br>
																			</p>
																			<p>더 자세한 안내는 아래 [내차사기 홈서비스] 바로가기를 눌러 확인해 주세요.</p>
																			<p>
																				<br>
																			</p>
																			<p>
																				<a href="https://www.kcar.com/bc/homeSvc/main"
																					rel="noopener noreferrer" target="_blank">▶
																					[내차사기 홈서비스] 바로가기 (PC)</a>
																			</p>
																			<p>
																				<a href="https://m.kcar.com/bc/homeSvc/main"
																					rel="noopener noreferrer" target="_blank">▶
																					[내차사기 홈서비스] 바로가기 (모바일)</a>
																			</p>
																			<p>&nbsp;</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													
														
													</div>
												</div>
											</div>
										</div> -->
										</div>
									</div>
								</div>
								<div class="descFooter">
									궁금한 사항은 K Car 고객센터(<span class="tel">1588-5455</span>)로 문의해주세요.
								</div>
							</div>
						</div>
					</div>
				</div>
				<%@include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	<script>window.__NUXT__=(function(a,b,c,d,e){return {layout:"LayoutMain",data:[{metaData:{META_KEYWORD:"중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차",TITLE:"K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카",META_DESC:"대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 "}}],fetch:{},error:c,state:{guest:{guest:{id:a,name:a,phone:a}},page:{name:b},session:{member:{membId:a,membNm:a,mbpno:a,email:a,regDttm:a},token:d},sample:{id:b,name:b},cmnCd:{cmnCd:{},other:{}},cmmCd:{cmnCd:{},other:{}},sc:{homeSvc:{formData:{}}}},serverRendered:d,routePath:e,config:{_app:{basePath:e,assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(void 0,"",null,true,"\u002F"));</script>
	<script src="/_nuxt/f7a91b8.js" defer=""></script>
	<script src="/_nuxt/bbe05a3.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer="script"></script>
	<script src="/_nuxt/38f7038.js" defer=""></script>
	<script src="/_nuxt/32ff197.js" defer=""></script>


	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="">console.log("\ud50c\ub7ab\ud3fc: PC");</script>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 190px; z-index: 2002; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차팔기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				법인차매각신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				폐차신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 고객후기</li>
		</ul>
	</div>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	
	<script>
		function buyClick(){
			$("#classification").val("내차사기");
			getfaqList();
		}
		function sellClick(){
			$("#classification").val("내차팔기");
			getfaqList();
		}
		function memberClick(){
			$("#classification").val("회원정보관리");
			getfaqList();
		}
		function rentClick(){
			$("#classification").val("렌트");
			getfaqList();
		}
		function otherClick(){
			$("#classification").val("기타");
			getfaqList();
		}
		
		var msg = $("#msg").val();
		$("document").ready(function(){
			
			if(msg != ""){
				alert("${msg}");
			}
			
			getfaqList();
			
			$("#searchButton").click(function() {
				getfaqList();
	        });
			
			$('ul li').click(function(){
                var tab_id = $(this).attr('data-tab');
                $('ul li').removeClass('is-active');
                $(this).addClass(' is-active');
            });
		});
		
		function getfaqList(){
			$.ajax({
		          url : 'GetcsQstn',
		          type : 'POST',
		          data : $("#csQstn_form_Search").serialize(),
		          success : function(obj) {
			          console.log(obj);
			          console.log(obj.faqList);
			          var htmlString = "";
			          var searchValue = $("#search").val();
			          console.log(obj.faqList.length);
			          if (searchValue != ""){
			        	  $("#nav").hide();
			        	  htmlString += "<div class='mT20'>";
			        	  htmlString += "<a href='csQstnManage' class='moreBtn el-link el-link--default is-underline'>";
			        	  htmlString += "<span class='el-link--inner'>";
			        	  htmlString += "<i class='el-icon-arrow-left'></i>";
			        	  htmlString += "돌아가기 </span> </a> </div>";
			        	  htmlString += "<div class='searchText'>";
			        	  htmlString += "<span>'" + searchValue + "'에 대한 " + obj.faqList.length + "개 결과</span></div>";
			          }
			          
			          for(var i = 0; i < obj.faqList.length; i++){
			        	  htmlString += "<form action='' method='post' id='f'>"
			        	  htmlString += "<input type='hidden' value='" + obj.faqList + "'"
			        	  htmlString += "<div class='el-tabs__content'>";
			        	  htmlString += "	<div role='tabpanel' id='pane-C0002' aria-labelledby='tab-C0002' class='el-tab-pane'>";
			        	  htmlString += "		<div>";
			        	  htmlString += "			<div role='tablist' aria-multiselectable='true' class='el-collapse faqList'>";
			        	  htmlString += "				<div class='el-collapse-item'>";
			        	  htmlString += "					<div role='tab' aria-controls='el-collapse-content-5848' aria-describedby='el-collapse-content-5848' >";
			        	  htmlString += "						<div role='button' id='el-collapse-head-5848' tabindex='0' class='el-collapse-item__header' onclick='question("+i+")'>";
			        	  htmlString += "							<i class='el-icon-Q'></i>";
			        	  htmlString += "							<span>" + obj.faqList[i].q_title +"</span>";
			        	  htmlString += "							<span id='delete'>삭제</span>";
			        	  htmlString += "						</div>";
			        	  htmlString += "					</div>";
			        	  htmlString += "					<div role='tabpanel' aria-hidden='true' aria-labelledby='el-collapse-head-5848' id='el-collapse-content-5848' class='el-collapse-item__wrap' style='display: none;'>";
			        	  htmlString += "						<div class='el-collapse-item__content'>";
			        	  htmlString += "						<div> <i class='el-icon-A'> </i>";
			        	  htmlString += "			<div class='faqA'>" + obj.faqList[i].q_content + "</div>";
			        	  htmlString += "					</div></div></div></div></div></div></div></div>";
			        	  htmlString += "</form>"
			          }
			          
			          $("#contentWrap").html(htmlString);
		          
		          },
		          error : function(e) {
		         	 console.log(e);
		          }
		    });
		}
		
		$("#delete").click(function() {
			if (confirm("해당 질문을 삭제하시겠습니까?") == true){
				 $("#f").attr("action", "csQstnDeleteProc");
			 }
		});
	</script>
	<script src="js/question.js" type="text/javascript"></script>
</body>
</html>