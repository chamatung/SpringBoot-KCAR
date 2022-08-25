<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../bd/NotcMatrList_style.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="chrome">
<head>
<title>제안/칭찬 관리</title>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width, initial-scale=1">
<meta data-n-head="ssr" data-hid="og-title" name="og:title"
	content="K Car - 직접 매입, 판매하는 대한민국 No.1 직영중고차 케이카 ">
<meta data-n-head="ssr" data-hid="og-description" name="og:description"
	content="대한민국 No.1 직영중고차. 중고차 매입, 중고차 판매, 3일 책임 환불제, 온라인 구매 홈서비스, 중고차 매매 사이트, 중고차 보증 ">
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
	content="대한민국 No.1 직영중고차. 중고차 매입, 중고차 판매, 3일 책임 환불제, 온라인 구매 홈서비스, 중고차 매매 사이트, 중고차 보증">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차">
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<script
	src="https://connect.facebook.net/signals/config/771045850193577?v=2.9.77&amp;r=stable"
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
<link rel="preload" href="/_nuxt/037d689.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/cb4d74d.js" as="script">
<link rel="preload" href="/_nuxt/5bab1e0.js" as="script">
<link rel="preload" href="/_nuxt/46a2557.js" as="script">

<meta http-equiv="origin-trial"
	content="A7bG5hJ4XpMV5a3V1wwAR0PalkFSxLOZeL9D/YBYdupYUIgUgGhfVJ1zBFOqGybb7gRhswfJ+AmO7S2rNK2IOwkAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjY5NzY2Mzk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1661061119351&amp;cv=9&amp;fst=1661061119351&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="A+Mt6wQ7St5J869uXW1A/aL3lJaYJYff4gUwPvwSbTuZ7z/T1l4np41d/t4W9TdeS/EMua5fYfBoz4v4TT9tdAgAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1661061120853&amp;cv=9&amp;fst=1661061120853&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1661061120855&amp;cv=9&amp;fst=1661061120855&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1661061120874&amp;cv=9&amp;fst=1661061120874&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1661061120875&amp;cv=9&amp;fst=1661061120875&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="//tpc.googlesyndication.com/sodar/1s9mPOHO.js"></script>
<link rel="stylesheet" type="text/css"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1661061123050&amp;cv=9&amp;fst=1661061123050&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2F%3Fgclid%3DEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8" src="/_nuxt/b07f3c0.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1661061125162&amp;cv=9&amp;fst=1661061125162&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1661061125165&amp;cv=9&amp;fst=1661061125165&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=4&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI6Nn67Z7X-QIV6dVMAh1yVgYfEAAYASAAEgLjQfD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=K%20Car%20-%20%EC%A7%81%EC%A0%91%20%EB%A7%A4%EC%9E%85%2C%20%ED%8C%90%EB%A7%A4%ED%95%98%EB%8A%94%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20No.1%20%EC%A7%81%EC%98%81%EC%A4%91%EA%B3%A0%EC%B0%A8%20%EC%BC%80%EC%9D%B4%EC%B9%B4&amp;auid=1755031493.1659006818&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
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
				<%@include file="/WEB-INF/default/admin_header.jsp" %>
				<div class="contentsWrap">
					<div class="el-row">
						<div class="subHeader">
							<h1 class="title">제안/칭찬 관리</h1>
						</div>
						<div>
							<div class="tabsCol02 el-tabs el-tabs--top">
								
								<div class="el-tabs__content">
									<div role="tabpanel" id="pane-innertab01"
										aria-labelledby="tab-innertab01" class="el-tab-pane">
										<div class="boardList">
										<form action="" method="post" id="f">
										<input type="hidden" name="no" id="no" />
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
																<col name="el-table_1_column_1" width="100">
																<col name="el-table_1_column_2" width="670">
																<col name="el-table_1_column_3" width="150">
																<col name="el-table_1_column_4" width="150">
																<col name="el-table_1_column_5" width="150">
																<col name="gutter" width="0">
															</colgroup>
															<thead class="has-gutter">
																<tr class="">
																	<th colspan="1" rowspan="1"
																		class="el-table_1_column_1     is-leaf el-table__cell"><div
																			class="cell">번호</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_1_column_2     is-leaf el-table__cell"><div
																			class="cell">제목</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_1_column_3     is-leaf el-table__cell"><div
																			class="cell">고객명</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_1_column_4     is-leaf el-table__cell"><div
																			class="cell">회신방법</div></th>
																	<th colspan="1" rowspan="1"
																		class="el-table_1_column_5     is-leaf el-table__cell"><div
																			class="cell">회신여부</div></th>
																	<th class="el-table__cell gutter"
																		style="width: 0px; display: none;"></th>
																</tr>
															</thead>
														</table>
													</div><input type="hidden" value="${msg }" id="msg">
													<div class="el-table__body-wrapper is-scrolling-none">
														<table cellspacing="0" cellpadding="0" border="0"
															class="el-table__body" style="width: 1220px;">
															<colgroup>
																<col name="el-table_1_column_1" width="100">
																<col name="el-table_1_column_2" width="670">
																<col name="el-table_1_column_3" width="150">
																<col name="el-table_1_column_4" width="150">
																<col name="el-table_1_column_5" width="150">
															</colgroup>
															<tbody>
															<c:forEach var="list" items="${csVocList }">
																<tr class="el-table__row">
																	<td rowspan="1" colspan="1"
																		class="el-table_1_column_1   el-table__cell"><div
																			class="cell">${list.s_no }</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_1_column_2   el-table__cell"><div
																			class="cell">
																			<a class="el-link el-link--default is-underline">
																				<!---->
																				<span class="el-link--inner"><span class="title" id="${list.s_no }">${list.s_title }</span></span>
																			<!---->
																			</a>
																		</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_1_column_3   el-table__cell"><div
																			class="cell">${list.s_id }</div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_1_column_4   el-table__cell"><div
																			class="cell">
																			<c:choose>
																				<c:when test= "${list.s_reply == 'E'}">
																					이메일
																				</c:when>
																				<c:otherwise>
																					회신 불필요
																				</c:otherwise>
																			</c:choose></div></td>
																	<td rowspan="1" colspan="1"
																		class="el-table_1_column_5   el-table__cell">
																			<c:choose>
																			<c:when test= "${list.s_replyStatus == 'n' and list.s_reply == 'E'}">
																				<div class="cell" style="color: #b70f28;">회신 필요</div>
																			</c:when>
																			<c:when test= "${list.s_reply == 'N' }">
																				<div class="cell">회신 불필요</div>
																			</c:when>
																			<c:when test= "${list.s_replyStatus == 'y' }">
																				<div class="cell" style="color: blue;">회신 완료</div>
																			</c:when>
																			</c:choose>
																			</td>
																</tr>
																<!---->
															</c:forEach>
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
													<div class="paging">${csVocpage }
														<!-- <ul>
															<li>
																
															</li>
															<li class="pagingNum"><span class="textRed">1</span></li>
															<li class="pagingNum"><span class="">2</span></li>
															<li class="pagingNum"><span class="">3</span></li>
															<li class="pagingNum"><span class="">4</span></li>
															<li class="pagingNum"><span class="">5</span></li>
															<li class="pagingNum"><span class="">6</span></li>
															<li class="pagingNum"><span class="">7</span></li>
															<li class="pagingNum"><span class="">8</span></li>
															<li class="pagingNum"><span class="">9</span></li>
															<li class="pagingNum"><span class="">10</span></li>
															<li><button type="button"
																	class="el-button pageNext el-button--default">
																	
																	
																	<span><img
																		src="/images/common/pagenation-btn-right.svg" alt="다음"></span>
																</button></li>
														</ul> -->
													</div>
												</div>
											</div>
											</form>
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
	<script>window.__NUXT__=(function(a,b,c,d,e){return {layout:"LayoutMain",data:[{metaData:{META_KEYWORD:"중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차",TITLE:"K Car - 직접 매입, 판매하는 대한민국 No.1 직영중고차 케이카",META_DESC:"대한민국 No.1 직영중고차. 중고차 매입, 중고차 판매, 3일 책임 환불제, 온라인 구매 홈서비스, 중고차 매매 사이트, 중고차 보증"}}],fetch:{},error:c,state:{guest:{guest:{id:a,name:a,phone:a}},page:{name:b},session:{member:{membId:a,membNm:a,mbpno:a,email:a,regDttm:a},token:d},sample:{id:b,name:b},cmnCd:{cmnCd:{},other:{}},cmmCd:{cmnCd:{},other:{}},sc:{homeSvc:{formData:{}}}},serverRendered:d,routePath:e,config:{_app:{basePath:e,assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(void 0,"",null,true,"\u002F"));</script>
	<script src="/_nuxt/037d689.js" defer=""></script>
	<script src="/_nuxt/46a2557.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer=""></script>
	<script src="/_nuxt/cb4d74d.js" defer=""></script>
	<script src="/_nuxt/5bab1e0.js" defer=""></script>



	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
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
	
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	
	var msg = $("#msg").val();
		$("document").ready(function(){
			
			if(msg != ""){
				alert("${msg}");
			}
			
			$("span .title").css("cursor", "pointer").click(function(){
				let WriteNo = $(this).attr("id");
				$("#no").val(WriteNo);
				$("#f").attr("action", "csViewProc");
				$("#f").submit();
			})
		});
	</script>
</body>
</html>