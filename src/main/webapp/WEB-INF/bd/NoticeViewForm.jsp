<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="NoticeWriteForm_style.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="chrome">
<head>
<title>공지사항 상세</title>
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
	src="https://connect.facebook.net/signals/config/771045850193577?v=2.9.73&amp;r=stable"
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
<link rel="preload" href="/_nuxt/dcaa410.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/cb4d74d.js" as="script">
<link rel="preload" href="/_nuxt/962afff.js" as="script">
<link rel="preload" href="/_nuxt/d0ce771.js" as="script">

<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660199914420&amp;cv=9&amp;fst=1660199914420&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660199914422&amp;cv=9&amp;fst=1660199914422&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660199914439&amp;cv=9&amp;fst=1660199914439&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660199914439&amp;cv=9&amp;fst=1660199914439&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<script charset="utf-8" src="/_nuxt/f2dcbd7.js"></script>
<script type="text/javascript" async=""
	src="//tpc.googlesyndication.com/sodar/1s9mPOHO.js"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660199914915&amp;cv=9&amp;fst=1660199914915&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8" src="/_nuxt/b57c028.js"></script>
<script charset="utf-8" src="/_nuxt/b377c95.js"></script>
<script charset="utf-8" src="/_nuxt/440eaa4.js"></script>
<script charset="utf-8" src="/_nuxt/e987c39.js"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660206700287&amp;cv=9&amp;fst=1660206700287&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660206700290&amp;cv=9&amp;fst=1660206700290&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=6&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660207267779&amp;cv=9&amp;fst=1660207267779&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000002%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660207267782&amp;cv=9&amp;fst=1660207267782&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000002%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660207268820&amp;cv=9&amp;fst=1660207268820&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660207268821&amp;cv=9&amp;fst=1660207268821&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660207270740&amp;cv=9&amp;fst=1660207270740&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000002%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660207270742&amp;cv=9&amp;fst=1660207270742&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000002%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660207280013&amp;cv=9&amp;fst=1660207280013&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660207280014&amp;cv=9&amp;fst=1660207280014&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrList&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EC%83%81%EC%84%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1660207281530&amp;cv=9&amp;fst=1660207281530&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660207281531&amp;cv=9&amp;fst=1660207281531&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=7&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg880&amp;sendb=1&amp;ig=1&amp;gclaw=EAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;gac=UA-23566107-15%3AEAIaIQobChMI1vuwn5a--QIVUYrCCh3Yrg81EAAYASAAEgIMpvD_BwE&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fbd%2FNotcMatrDtl%3FbltbdCd%3DBN20220800000001%26typeCd%3D&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%EB%B0%8F%20%EC%9D%B4%EB%B2%A4%ED%8A%B8&amp;auid=1444975468.1659081980&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta data-n-head="ssr" data-hid="title" name="title" content="공지사항 상세">
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
						
					<form action="" method="post" id="f">
					<input type="hidden" value="${viewList.n_no }" name="n_no"/>
					<input type="hidden" value="${viewList.n_title }" name="n_title"/>
					<input type="hidden" value="${viewList.n_content }" name="n_content"/>
					<input type="hidden" value="notice" name="listViewno"/>
						<div>
							<div class="boardView">
								<div class="boardViewTitle">
									<h5>
										${viewList.n_title }
										<!---->
									</h5>
									<p>
										<span>관리자</span> <span>${viewList.n_date }</span>
									</p>
								</div>
								<div class="borderViewCon">
									<pre>${viewList.n_content }</pre>
								</div>
							</div>
							
							<div class="searchTrigger box Large maxW97 el-row">
								<button class="button apply" onclick="listView()">목록</button>
								<!-- <button class="button apply" formaction="noticeModifyForm">수정하기</button>
								<button class="button apply" onclick="removeCheck()" id="submitButton">삭제하기</button> -->
							</div>
							
							<!-- <div class="boardViewPaging">
								<ul>
									<li class="bvPN">이전글</li>
									<li class="bvPT"><a
										class="el-link el-link--default is-underline">
											
											<span class="el-link--inner"> [공지] K Car 사이트 개편에 따른 이용
												가이드 안내 </span>
										
									</a></li>
									<li class="bvPD">2022.07.18</li>
								</ul>
								<ul>
									<li class="bvPN">다음글</li>
									<li class="bvPT"><a
										class="el-link el-link--default is-underline">
											
											<span class="el-link--inner"> [공지] K Car 전국 직영점 8월 휴점
												안내 </span>
										
									</a></li>
									<li class="bvPD">2022.08.11</li>
								</ul>
							</div> -->
						</div>
					</form>
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
	<script>window.__NUXT__=(function(a,b,c,d){return {layout:"LayoutMain",data:[{metaData:{META_KEYWORD:"중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차",TITLE:"공지사항 상세",META_DESC:"대한민국 No.1 직영중고차. 중고차 매입, 중고차 판매, 3일 책임 환불제, 온라인 구매 홈서비스, 중고차 매매 사이트, 중고차 보증"}}],fetch:{},error:c,state:{guest:{guest:{id:a,name:a,phone:a}},page:{name:b},session:{member:{membId:a,membNm:a,mbpno:a,email:a,regDttm:a},token:d},sample:{id:b,name:b},cmnCd:{cmnCd:{},other:{}},cmmCd:{cmnCd:{},other:{}},sc:{homeSvc:{formData:{}}}},serverRendered:d,routePath:"\u002Fbd\u002FNotcMatrDtl",config:{_app:{basePath:"\u002F",assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(void 0,"",null,true));</script>
	<script src="/_nuxt/dcaa410.js" defer=""></script>
	<script src="/_nuxt/d0ce771.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer=""></script>
	<script src="/_nuxt/cb4d74d.js" defer=""></script>
	<script src="/_nuxt/962afff.js" defer=""></script>



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
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
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
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	 function removeCheck(){
		 if (confirm("해당 공지를 삭제하시겠습니까?") == true){
			 $("#f").attr("action", "noticeDeleteProc");
		 }

	 }
	 
	 function listView(){
		 $("#f").attr("action", "NotcMatrList");
		 
	 }
	</script>
</body>
</html>