<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="NotcMatrList_style.jsp" %>
<html lang="ko" class="chrome">
<head>
<title>공지사항 및 이벤트</title>
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
<link rel="preload" href="/_nuxt/f5f07d3.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/38f7038.js" as="script">
<link rel="preload" href="/_nuxt/ec7bfe3.js" as="script">
<link rel="preload" href="/_nuxt/52e5c68.js" as="script">

<meta http-equiv="origin-trial"
	content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="A+Mt6wQ7St5J869uXW1A/aL3lJaYJYff4gUwPvwSbTuZ7z/T1l4np41d/t4W9TdeS/EMua5fYfBoz4v4TT9tdAgAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659421913247&amp;cv=9&amp;fst=1659421913247&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659421913251&amp;cv=9&amp;fst=1659421913251&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3ACj0KCQjw852XBhC6ARIsAJsFPN3xN7jqY4iFD6KINQXZzPn4NeM38f1cW_2R4uTghWhgdYe4v5fgg_YaAiA7EALw_wcB&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<script type="text/javascript" async=""
	src="//tpc.googlesyndication.com/sodar/1s9mPOHO.js"></script>
<link rel="stylesheet" type="text/css"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659421922576&amp;cv=9&amp;fst=1659421922576&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659421922578&amp;cv=9&amp;fst=1659421922578&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8" src="/_nuxt/b0200d4.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659422243797&amp;cv=9&amp;fst=1659422243797&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659422243799&amp;cv=9&amp;fst=1659422243799&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fcs%2FcsQstn&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659425186610&amp;cv=9&amp;fst=1659425186610&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%9E%90%EC%A3%BC%ED%95%98%EB%8A%94%20%EC%A7%88%EB%AC%B8&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659425186612&amp;cv=9&amp;fst=1659425186612&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%9E%90%EC%A3%BC%ED%95%98%EB%8A%94%20%EC%A7%88%EB%AC%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script charset="utf-8" src="/_nuxt/fb09e43.js"></script>
<script charset="utf-8" src="/_nuxt/b1fbc1b.js"></script>
<script charset="utf-8" src="/_nuxt/b347ffd.js"></script>

<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659425198946&amp;cv=9&amp;fst=1659425198946&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbc%2Fsearch&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659425198951&amp;cv=9&amp;fst=1659425198951&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbc%2Fsearch&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659425383175&amp;cv=9&amp;fst=1659425383175&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=8&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%B0%A8%EB%9F%89%20%EA%B2%80%EC%83%89&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659425383177&amp;cv=9&amp;fst=1659425383177&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=8&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EC%B0%A8%EB%9F%89%20%EA%B2%80%EC%83%89&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script charset="utf-8" src="/_nuxt/0b2ea90.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659426230471&amp;cv=9&amp;fst=1659426230471&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=9&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659426230474&amp;cv=9&amp;fst=1659426230474&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=9&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8" src="/_nuxt/e324fe1.js"></script>
<script charset="utf-8" src="/_nuxt/4773c35.js"></script>
<script charset="utf-8" src="/_nuxt/a049cce.js"></script>
<script charset="utf-8" src="/_nuxt/84f29d9.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659426266184&amp;cv=9&amp;fst=1659426266184&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=10&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659426266188&amp;cv=9&amp;fst=1659426266188&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=10&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659426350231&amp;cv=9&amp;fst=1659426350231&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659426350235&amp;cv=9&amp;fst=1659426350235&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI7eHHq8Sn-QIV49pMAh2PxABHEAAYASAAEgKhqfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%20%EC%A7%81%EC%A0%91%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%20%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta data-n-head="ssr" data-hid="title" name="title"
	content="공지사항 및 이벤트">
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
						<div class="subHeader">
							<h1 class="title">공지사항</h1>
							<p class="desc">K Car의 새로운 소식을 전달받으실 수 있습니다.</p>
						</div>
						<div>
							<div class="tabsCol02 el-tabs el-tabs--top">
								<div class="el-tabs__header is-top">
									<div class="el-tabs__nav-wrap is-top">
										<div class="el-tabs__nav-scroll">
											<div role="tablist" class="el-tabs__nav is-top"
												style="transform: translateX(0px);">
												<div class="el-tabs__active-bar is-top"
													style="width: 610px; transform: translateX(0px);"></div>
												<div id="tab-innertab01" aria-controls="pane-innertab01"
													role="tab" aria-selected="true" tabindex="0"
													class="el-tabs__item is-top is-active">공지사항</div>
												<div id="tab-innertab02" aria-controls="pane-innertab02"
													role="tab" tabindex="-1" class="el-tabs__item is-top">이벤트</div>
											</div>
										</div>
									</div>
								</div>
								<div class="el-tabs__content">
									<div role="tabpanel" id="pane-innertab01"
										aria-labelledby="tab-innertab01" class="el-tab-pane">
										<div class="boardList">
											<div class="boardSearch">
												<p>
													<span>총 260 건</span>의 글이 있습니다.
												</p>
												<ul class="boardSearchForm">
													<li class="searchSelect"><div class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<!---->
																<input type="text" readonly="readonly"
																	autocomplete="off" placeholder="전체"
																	class="el-input__inner">
																<!---->
																<span class="el-input__suffix"><span
																	class="el-input__suffix-inner"><i
																		class="el-select__caret el-input__icon el-icon-arrow-up"></i>
																	<!---->
																		<!---->
																		<!---->
																		<!---->
																		<!----></span>
																<!----></span>
																<!---->
																<!---->
															</div>
															<div class="el-select-dropdown el-popper"
																style="display: none; min-width: 246px;">
																<div class="el-scrollbar" style="">
																	<div
																		class="el-select-dropdown__wrap el-scrollbar__wrap"
																		style="margin-bottom: -17px; margin-right: -17px;">
																		<ul
																			class="el-scrollbar__view el-select-dropdown__list">
																			<!---->
																			<li class="el-select-dropdown__item selected"><span>전체</span></li>
																			<li class="el-select-dropdown__item"><span>제목</span></li>
																			<li class="el-select-dropdown__item"><span>내용</span></li>
																		</ul>
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
																<!---->
															</div>
														</div></li>
													<li class="searchInput"><div class="el-input">
															<!---->
															<input type="text" autocomplete="off"
																placeholder="검색어를 입력해주세요" class="el-input__inner">
															<!---->
															<!---->
															<!---->
															<!---->
														</div></li>
													<li><button type="button"
															class="el-button btn10 el-button--default">
															<!---->
															<!---->
															<span><span class="_hidden">검색</span></span>
														</button></li>
												</ul>
											</div>
											<div class="boardListTable">
												<div
													class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition"
													style="width: 100%;">
													<div class="hidden-columns">
														<div></div>
														<div></div>
														<div></div>
													</div>
													<div class="el-table__header-wrapper">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__header" style="width: 1220px;">
															<colgroup>
																<col name="el-table_3_column_9" width="100">
																<col name="el-table_3_column_10" width="980">
																<col name="el-table_3_column_11" width="140">
																<col name="gutter" width="0">
															</colgroup>
															<thead class="has-gutter">
																<tr class="">
																	<th colspan="1" rowspan="1"
																		class="el-table_3_column_9     is-leaf el-table__cell"><div
																			class="cell">번호</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_3_column_10     is-leaf el-table__cell"><div
																			class="cell">제목</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_3_column_11     is-leaf el-table__cell"><div
																			class="cell">등록일</div></th>
																	<th class="el-table__cell gutter"
																		style="width: 0px; display: none;"></th>
																</tr>
															</thead>
														</table>
													</div>
													<div class="el-table__body-wrapper is-scrolling-none">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__body" style="width: 1220px;">
															<colgroup>
																<col name="el-table_3_column_9" width="100">
																<col name="el-table_3_column_10" width="980">
																<col name="el-table_3_column_11" width="140">
															</colgroup>
															<tbody>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">260</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 시스템 점검에 따른 서비스 일시 중단 안내</span> <span
																					class="el-tag el-tag--NEW el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.08.01</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">259</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 사이트 개편에 따른 이용 가이드 안내</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.07.18</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">258</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						침수차 안심 보상 서비스 </span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.07.01</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">257</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 시스템 점검에 따른 서비스 일시 중단 안내</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.06.21</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">256</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[당첨자
																						발표] 22년 5월 고객후기 이벤트 우수작</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.06.13</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">255</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[EVENT]
																						22년 6월 고객후기 이벤트 - 후기만 작성해도 100% 당첨!</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.05.31</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">254</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 전국 직영점 6월 휴점 안내 </span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.05.25</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">253</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 시스템 점검에 따른 서비스 일시 중단 안내</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.05.11</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">252</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[당첨자
																						발표] 22년 4월 고객후기 이벤트 우수작</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.05.11</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_9   el-table__cell"><div
																			class="cell">251</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_10   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[공지]
																						K Car 전국 직영점 5월 휴점 안내 </span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_3_column_11   el-table__cell"><div
																			class="cell">2022.05.03</div></td>
																</tr>
																<!---->
															</tbody>
														</table>
														<!---->
														<!---->
													</div>
													<!---->
													<!---->
													<!---->
													<!---->
													<div class="el-table__column-resize-proxy"
														style="display: none;"></div>
												</div>
												<div class="mT40 pagination -sm">
													<!---->
													<div class="pagingNum">
														<span class="textRed">1</span> / 26
													</div>
													<button type="button"
														class="el-button pageNext el-button--default">
														<!---->
														<!---->
														<span><img
															src="/images/common/pagenation-btn-right.svg" alt="다음"></span>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div role="tabpanel" aria-hidden="true" id="pane-innertab02"
										aria-labelledby="tab-innertab02" class="el-tab-pane"
										style="display: none;">
										<div class="boardList">
											<div class="boardSearch">
												<p>
													<span>총 4 건</span>의 글이 있습니다.
												</p>
												<ul class="boardSearchForm">
													<li class="searchSelect"><div class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<!---->
																<input type="text" readonly="readonly"
																	autocomplete="off" placeholder="전체"
																	class="el-input__inner">
																<!---->
																<span class="el-input__suffix"><span
																	class="el-input__suffix-inner"><i
																		class="el-select__caret el-input__icon el-icon-arrow-up"></i>
																	<!---->
																		<!---->
																		<!---->
																		<!---->
																		<!----></span>
																<!----></span>
																<!---->
																<!---->
															</div>
															<div class="el-select-dropdown el-popper"
																style="display: none;">
																<div class="el-scrollbar" style="">
																	<div
																		class="el-select-dropdown__wrap el-scrollbar__wrap"
																		style="margin-bottom: -17px; margin-right: -17px;">
																		<ul
																			class="el-scrollbar__view el-select-dropdown__list">
																			<!---->
																			<li class="el-select-dropdown__item selected"><span>전체</span></li>
																			<li class="el-select-dropdown__item"><span>제목</span></li>
																			<li class="el-select-dropdown__item"><span>내용</span></li>
																		</ul>
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
																<!---->
															</div>
														</div></li>
													<li class="searchInput"><div class="el-input">
															<!---->
															<input type="text" autocomplete="off"
																placeholder="검색어를 입력해 주세요." class="el-input__inner">
															<!---->
															<!---->
															<!---->
															<!---->
														</div></li>
													<li><button type="button"
															class="el-button btn10 el-button--default">
															<!---->
															<!---->
															<span><span class="_hidden">검색</span></span>
														</button></li>
												</ul>
											</div>
											<div class="boardListTable">
												<div
													class="el-table el-table--fit el-table--scrollable-x el-table--enable-row-hover el-table--enable-row-transition"
													style="width: 100%;">
													<div class="hidden-columns">
														<div></div>
														<div></div>
														<div></div>
														<div></div>
														<div></div>
													</div>
													<div class="el-table__header-wrapper">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__header" style="width: 1220px;">
															<colgroup>
																<col name="el-table_4_column_12" width="100">
																<col name="el-table_4_column_13" width="600">
																<col name="el-table_4_column_14" width="220">
																<col name="el-table_4_column_15" width="160">
																<col name="el-table_4_column_16" width="140">
																<col name="gutter" width="0">
															</colgroup>
															<thead class="has-gutter">
																<tr class="">
																	<th colspan="1" rowspan="1"
																		class="el-table_4_column_12     is-leaf el-table__cell"><div
																			class="cell">번호</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_4_column_13     is-leaf el-table__cell"><div
																			class="cell">제목</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_4_column_14     is-leaf el-table__cell"><div
																			class="cell">이벤트 기간</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_4_column_15     is-leaf el-table__cell"><div
																			class="cell">이벤트 분류</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_4_column_16     is-leaf el-table__cell"><div
																			class="cell">등록일</div></th>
																	<th class="el-table__cell gutter"
																		style="width: 0px; display: none;"></th>
																</tr>
															</thead>
														</table>
													</div>
													<div class="el-table__body-wrapper is-scrolling-left">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__body" style="width: 1220px;">
															<colgroup>
																<col name="el-table_4_column_12" width="100">
																<col name="el-table_4_column_13" width="600">
																<col name="el-table_4_column_14" width="220">
																<col name="el-table_4_column_15" width="160">
																<col name="el-table_4_column_16" width="140">
															</colgroup>
															<tbody>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_12   el-table__cell"><div
																			class="cell">4</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_13   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[EVENT]
																						리뉴얼 기념! 케이카 APP 리뷰 이벤트 - 총 210명에게 백화점 상품권/스타벅스
																						아메리카노 지급</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_14   el-table__cell"><div
																			class="cell">
																			<span>2022.07.29~2022.08.31</span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_15   el-table__cell"><div
																			class="cell">
																			<span class="el-tag el-tag--ing el-tag--light">
																				진행중 </span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_16   el-table__cell"><div
																			class="cell">
																			<span>2022.07.29</span>
																		</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_12   el-table__cell"><div
																			class="cell">3</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_13   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[EVENT]
																						22년 8월 고객후기 이벤트 - 후기만 작성해도 100% 당첨!</span> <span
																					class="el-tag el-tag--NEW el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_14   el-table__cell"><div
																			class="cell">
																			<span>2022.08.01~2022.08.31</span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_15   el-table__cell"><div
																			class="cell">
																			<span class="el-tag el-tag--ing el-tag--light">
																				진행중 </span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_16   el-table__cell"><div
																			class="cell">
																			<span>2022.07.28</span>
																		</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_12   el-table__cell"><div
																			class="cell">2</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_13   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[EVENT]
																						22년 7월 고객후기 이벤트 - 후기만 작성해도 100% 당첨!</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_14   el-table__cell"><div
																			class="cell">
																			<span>2022.07.17~2022.07.31</span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_15   el-table__cell"><div
																			class="cell">
																			<span class="el-tag el-tag--end el-tag--light">
																				마감 </span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_16   el-table__cell"><div
																			class="cell">
																			<span>2022.07.18</span>
																		</div></td>
																</tr>
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_12   el-table__cell"><div
																			class="cell">1</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_13   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span>[당첨자
																						발표] 22년 6월 고객후기 이벤트 우수작</span> <span
																					class="el-tag el-tag--none el-tag--light">
																						NEW </span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_14   el-table__cell"><div
																			class="cell">
																			<span>2022.07.18~2022.07.31</span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_15   el-table__cell"><div
																			class="cell">
																			<span class="el-tag el-tag--end el-tag--light">
																				마감 </span>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_4_column_16   el-table__cell"><div
																			class="cell">
																			<span>2022.07.18</span>
																		</div></td>
																</tr>
																<!---->
															</tbody>
														</table>
														<!---->
														<!---->
													</div>
													<!---->
													<!---->
													<!---->
													<!---->
													<div class="el-table__column-resize-proxy"
														style="display: none;"></div>
												</div>
												<div class="mT40">
													<div class="pagination -sm">
														<!---->
														<div class="pagingNum">
															<span class="textRed">1</span> / 1
														</div>
														<!---->
													</div>
												</div>
											</div>
										</div>
									</div>
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
	<script src="/_nuxt/f5f07d3.js" defer=""></script>
	<script src="/_nuxt/52e5c68.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer=""></script>
	<script src="/_nuxt/38f7038.js" defer=""></script>
	<script src="/_nuxt/ec7bfe3.js" defer=""></script>


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

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 209px; z-index: 2045; display: none;"
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
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 305px; z-index: 2029; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차사기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				차량검색</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				판매준비차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				3D 라이브 뷰</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				최근 본 차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 고객후기</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				리스차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				브랜드 인증관</li>
		</ul>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 465px; z-index: 2020; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">금융</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				할부</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				리스</li>
		</ul>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 401px; z-index: 2031; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">렌트</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				중고차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트특가</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				신차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				기사포함렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트지점</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트일반정비소</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트사고정비소</li>
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

	<script type="text/javascript" id="">var getCnt=$("#kcarSearchList .btn_compare").length,items=[];if(0<getCnt)for(var i=0;i<getCnt&&3!=i;i++)items.push($("#kcarSearchList .btn_compare").eq(i).data("carCd"));window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewList",item:items});</script>

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
</body>
</html>