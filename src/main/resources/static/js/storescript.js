var req;
function select(selection) {

   var sel = document.getElementById('sel1');
   sel.value = selection.innerText;
   document.getElementById('dropdown-menu').className = "dropup";

   req = new XMLHttpRequest();
   req.onreadystatechange = textChange;
   req.open('post', '/db/drCntr');
   req.send(sel.value);

}
function dropdown() {
   document.getElementById('dropdown-menu').className = "el-select-dropdown";
}

function textChange() {
   if (req.readyState == 4 && req.status == 200) {
      var data;
      var jsonData = JSON.parse(req.responseText); //String 데이터를 JSON 자료형으로 변환

      data = "<ul class='centerLists'>";
      data += "<li><a href='/db/detail?st_name=${sessionScope.st_name}'><div class='centerVisual'> <span class='centerNameTag' id='tagname'>${sessionScope.st_name}</span> <img"
      data += " src='${sessionScope.st_photo}' id='tagimg' style='cursor: pointer;'> </div></a>"
      data += "<div class='centerInfo'> <p id='tagaddr''></p> <p class='centerTel' id='tagtel'></p>"
      data += "<div class=''mt32'> <button type='button' class='el-button el-button--button' onclick=\"mapstartsearch()\";> <span> 찾아오시는 길 </span> </button>"
      data += "<button id='bubb' type='button' class='el-button el-button--button' value='${sessionScope.st_name}' onclick='kakaotalk(this)'> <span> 주소문자받기 </span> </button> </div> </div></li>"
      data += "</ul> "

      console.log(data);
      document.getElementById('inner').innerHTML = data;
      document.getElementById('tagname').innerHTML = jsonData.st_name;

      document.getElementById('tagtel').innerHTML = jsonData.st_tel;
      document.getElementById('tagimg').src = jsonData.st_photo;
      document.getElementById('tagaddr').innerHTML = jsonData.st_addr;
      document.getElementById('bubb').value = jsonData.st_name;
   }
}

var req2
function mapstart(name) {
   req2 = new XMLHttpRequest();
   req2.onreadystatechange = mapopen;
   req2.open('post', '/mapopen');
   req2.send(name);

   document.getElementById('modalbox').className = 'modalopen';
   document.getElementById('mappop').style.display = 'block';
}
function mapstartsearch() {
   var name = document.getElementById('tagname').innerHTML;
   mapstart(name);
}

function mapopen() {
   if (req2.readyState == 4 && req2.status == 200) {
      var jsonData = JSON.parse(req2.responseText);
      const st_addr = jsonData.st_addr;
      const st_name = jsonData.st_name;
      document.getElementById('address').innerHTML = st_addr;
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
         mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3
            // 지도의 확대 레벨(숫자낮을수록 확대)
         };

      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption);

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 주소로 좌표를 검색합니다
      geocoder
         .addressSearch(
            st_addr,
            function(result, status) {

               // 정상적으로 검색이 완료됐으면 
               if (status === kakao.maps.services.Status.OK) {

                  var coords = new kakao.maps.LatLng(result[0].y,
                     result[0].x);

                  // 결과값으로 받은 위치를 마커로 표시합니다
                  var marker = new kakao.maps.Marker({
                     map: map,
                     position: coords
                  });

                  // 인포윈도우로 장소에 대한 설명을 표시합니다
                  var infowindow = new kakao.maps.InfoWindow(
                     {
                        content: '<div style="width:150px;text-align:center;padding:6px 0;">' + st_name + '</div>'
                     });
                  infowindow.open(map, marker);

                  // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                  map.setCenter(coords);
               }
            });
   }
}
function mapclose() {
   document.getElementById('mappop').style.display = 'none';
   document.getElementById('modalbox').className = 'normal';
}