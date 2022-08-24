function getNoticeList(){
			$.ajax({
		          url : 'GetNotcMatrList',
		          type : 'POST',
		          data : $("#notice_form").serialize(),
		          success : function(obj) {
			          var htmlString = "";
			          for ( var i = 0; i < 4; i++) { 
			        	  htmlString += "<p class='notiTxt'>";
			        	  htmlString += "	<a href='noticeViewProc?no=" + obj.noticeList[i].n_no + "'>" + obj.noticeList[i].n_title + "</a>";
						  htmlString += "</p>";
			          }
			          
			          $("#pane-notice").html(htmlString);
		          },
		           error : function(e) {
		         	 console.log(e);
		          }
		        });
		}
		
		function getEventList(){
			$.ajax({
		          url : 'GetEvent',
		          type : 'POST',
		          data : $("#event_form").serialize(),
		          success : function(obj) {
			          var htmlString = "";
			          for ( var i = 0; i < 4; i++) { 
			        	  htmlString += "<p class='notiTxt'>";
			        	  htmlString += "	<a href='eventViewProc?no=" + obj.eventList[i].e_no + "'>" + obj.eventList[i].e_title + "</a>";
						  htmlString += "</p>";
			          }
			          
			          $("#pane-event").html(htmlString);
		          },
		           error : function(e) {
		         	 console.log(e);
		          }
		        });
		}
		
			$("#tab-notice").click(function() {
				$("#tab-notice").addClass(' is-active');
				$("#tab-event").removeClass('is-active');
				$("#pane-notice").show();
				$("#pane-event").hide();
				$("#listViewno").val("notice");
				getNoticeList();
			});
			
			$("#tab-event").click(function() {
				$("#tab-event").addClass(' is-active');
				$("#tab-notice").removeClass('is-active');
				$("#pane-event").show();
				$("#pane-notice").hide();
				$("#listViewno").val("event");
				getEventList();
			});
			
		$("document").ready(function(){
			getNoticeList();
			
			
			
			$("#noticeEvent").click(function(){
					$("#form").submit();
				
			});
		});