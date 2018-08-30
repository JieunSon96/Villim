<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">	

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 결제 -->
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>




<style>
	#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;



}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
/* 	opacity: 0.8; */
}

	#wrapper{
		width:100%;
		position: absolute;
		z-index: 10;
		height:100vh;
	}
	#collapseExample{
	
		
		
	}
	div{
		
		color:blue;
	}
	#navi{
		display:inline-block;
		width:15%;
		background-color : #1b1d21;
		height:100%;
		opacity: 0.8;
		
	}
	#navi a{
	 color:white;
	 margin-left:2%;
	}
	#naviLogo{
		text-align:center;
		padding-top: 2%;
	}
	#content{
	display:inline-block;
	position:absolute;
	width:100%;
	height:100%;
	
	}
	#contentHeader{
	margin-left:0.5%;
	background-color : #1b1d21;
	opacity: 0.8;
	height:5%;
	padding-top: 0.5%;
	
	
	}

	#titleDiv{
		
		margin-left:1%;
		height:95%;
	}
	#checkDiv{
		height:160px;
		display:inline-block;
	}
	#btn{
		width:100px;
		margin-right:60%;
		margin-top:5%;
		
	}
	#title{
		color:white;
	}
	#checkDiv1{
	height:160px;
	display:inline-block;
	}
	
	#memberChkModal{
		width:100%;
		
	}
	#payChkModal{
		width:100%;
	}
	#payChkModal .modal-dialog{
		width:80%;
	}

</style>	
<script>
/* $("#slide").animate({width:'toggle'},350); */
$(document).ready(function(){
	var j = 0;
	var currentarray = [];
	var sendarray = [];
	
	 /* $("#collapseExample").animate({width:'toggle'},350); */
	$("#btn").click(function(){
		 $("#navi").animate({width:'toggle'},350);
		  /* $("#btn").animate({width:'100px'},350);  */
	})
	$("#memberCheck").click(function(){
		var	html = "";
		$("#memberChkModal").modal('show');
		$.ajax({
			url:"mainMemberInfoLoad.admin",
			type : "get",
			
			success : function(response) {
				html += "<tr>"
				html += "<td>회원번호";
				html += "<td>이메일";
				html += "<td>이름";
				html += "<td>생년월일";
				/* html += "<td>프로필"; */
				html += "<td>차단여부";
				html += "<td>가입 날짜";
				html += "<td>주소";
				html += "</tr>"
				for(var i=0; i<response.length; i++){					
				/* 	$("#table").after("<tr>"); */
/* 					$("#table1").html("<td>" + response[i].member_location);
					$("#table1").html("<td>" + response[i].member_date);
					if(response[i].member_block == 'N'){
					$("#table1").html("<td><select id="+response[i].member_seq+"><option value='N' selected='selected'>N</option><option value='Y'>Y</option></select>");
					
					}else{
					$("#table1").html("<td><select id="+response[i].member_seq+"><option value='N'>N</option><option value='Y' selected='selected'>Y</option></select>");	
					
					}
					$("#table1").html("<td>" + response[i].member_picture);
					$("#table1").html("<td>" + response[i].member_birth);
					$("#table1").html("<td>" + response[i].member_name);
					$("#table1").html("<td>" + response[i].member_email);
					$("#table1").html("<td>"+ response[i].member_seq); */
				/* 	$("#table").after("/<tr>"); */
					
						  html += "<tr>";
						  html += "<td>"+ response[i].member_seq;
						  html += "<td>" + response[i].member_email;
						  html += "<td>" + response[i].member_name;
						  html += "<td>" + response[i].member_birth;
						  /* html += "<td>" + response[i].member_picture; */
						  if(response[i].member_block == 'N'){
							    html += "<td><select id="+response[i].member_seq+"><option value='N' selected='selected'>N</option><option value='Y'>Y</option></select>";
						  }else{
							    html +=	"<td><select id="+response[i].member_seq+"><option value='N'>N</option><option value='Y' selected='selected'>Y</option></select>";
						  }
						  html += "<td>" + response[i].member_date;
					      html += "<td>" + response[i].member_location;

					   	  html += "</tr>";
					    
					    $("#memberTable").html(html);
	
				}
				
				$("select").change(function(){
					/*  alert($("#selectbox"+i+"" "option:selected").val()); */
					/* var currentid = []; */
					var currentid = $(this).attr('id');
					var currentval = $("#"+currentid+" option:selected").val();
					var current = currentid + ":" + currentval;
					
					currentarray.push({
						seq : currentid,
						val : currentval
					})
			
					alert("#"+currentid);
					alert(current);
					alert($(this).val());
					alert(currentarray);				
				
				
				})
			}

		});
	})			
	
	$("#save").click(function(){
		alert(currentarray);
		var jsonData = JSON.stringify(currentarray);
		jQuery.ajaxSettings.traditional = true;
		$.ajax({
			url:"mainMemberBlock.admin",
			dataType: 'json',
			type : "post",
			data : {						
				
				currentarray : jsonData
				
			}, 
			success : function(response) {
				
				alert(response);
				currentarray.splice(0, currentarray.length);
			}
				
	})
	})
	
	$("#payCheck").click(function(){
		var	html = "";
		$("#payChkModal").modal('show');
		alert("asdasd");
		$.ajax({
			
			url:"mainPayCheck.admin",
			type : "post",
			
			success : function(response) {
				alert(response);
					html += "<tr>"
					html += "<td>예약번호";
					html += "<td>예약자이메일";
					html += "<td>예약자명";
					html += "<td>호스트이메일";
					html += "<td>호스트명";
					html += "<td>체크인";
					html += "<td>체크아웃";
					html += "<td>결제금액";
					html += "<td>결제날짜";
					html += "<td>이체상태";
					html += "</tr>"
					for(var i=0; i<response.length; i++){
						
						  html += "<tr>";
						  html += "<td>"+ response[i].reservation_seq;
						  html += "<td>" + response[i].r_member_email;
						  html += "<td>" + response[i].r_member_name;
						  html += "<td>" + response[i].h_member_email;
						  html += "<td>" + response[i].h_member_name;
						  html += "<td>" + response[i].check_in;
						  html += "<td>" + response[i].check_out;
						  html += "<td>" + response[i].payment_amount;
						  html += "<td>" + response[i].payment_date;
						  
						  if(response[i].home_state == '0'){
							    html += "<td id='sendtd'><button id=sendMoney"+response[i].reservation_seq+">이체하기</button>";
						  }else{
							    html +=	"<td>이체완료";
						  }
					   	  html += "</tr>";
					    
					   	 $("#sendMoney"+response[i].reservation_seq+"").html(html);
						
					}
					
					$("#sendMoney"+response[i].reservation_seq+"").click(function(){
						alert("asads");
						var IMP = window.IMP; // 생략가능
						IMP.init('imp31935218');
						alert("asads1");
						IMP.request_pay({
						    pg : 'inicis', // version 1.1.0부터 지원.
						    pay_method : 'card',
						    merchant_uid : 'merchant_' + new Date().getTime(),
						    name : 'villim',
						    amount : 1000,
						    /* amount : ${reservationDTO.totalAmount}, */
						    buyer_email : '${memberDTO.member_email}',
						    buyer_name : '${memberDTO.member_name}',
						    buyer_tel : '${memberDTO.member_phone}',
						    buyer_addr : '${memberDTO.member_location}',
						}, function(rsp) {
						    if ( rsp.success ) {
						        var msg = '결제가 완료되었습니다.';
						        msg += '고유ID : ' + rsp.imp_uid;
						        msg += '상점 거래ID : ' + rsp.merchant_uid;
						        msg += '결제 금액 : ' + rsp.paid_amount;
						        msg += '카드 승인번호 : ' + rsp.apply_num;
						        
						        /* $(location).attr('href','payment.re?seq='+${reservationDTO.reservation_seq}); */
						        $("#sendtd").html("이체완료");
						        
						        var sendid = $(this).attr('id');
						        
								var sendval = $("#sendtd").html();
								var send = sendid + ":" + sendval;
								alert(send);
								
								sendarray.push({
									rseq : sendid,
									sendvalval : sendval
								})
								
						var jsonData1 = JSON.stringify(sendarray);
						jQuery.ajaxSettings.traditional = true;
						$.ajax({
							url:"mainSendUpdate.admin",
							dataType: 'json',
							type : "post",
							data : {						
				
								sendarray : jsonData1
					
							}, 
							success : function(response) {
				
							alert(response);
							currentarray.splice(0, currentarray.length);
							}
				
						})
								
								
						    } else {
						        var msg = '결제에 실패하였습니다.';
						        msg += '에러내용 : ' + rsp.error_msg;
						    }
						    alert(msg);
						});
						
						
					})
			}
		
		})
		

	})
	

	
/* 	(function poll() {
	    $.ajax({
	        url: 'mainTest.admin',
	        type: 'GET',
	        dataType: 'json',
	        success: function(response) {
	           
	        },
	        timeout: 3000,
	        complete: setTimeout(function() { poll(); }, 6000)
	    })
	})(); */
				

	 
})

</script>


</head>
<body>
<script>
	$.ajax({
		url:"mainMemberCountLoad.admin",
		type : "get",
		success : function(response) {
			
			$("#memberCount").html("<strong>"+response+"</strong>");
			$("#memberCount1").html("<strong>"+response+"</strong>");
		}
			
	})
</script>	

<div id="bg">
		<img src="./resources/images/17.jpg" alt="">
</div>
<div id="wrapper">


<div id="navi">
<ul class="nav nav-pills nav-stacked" id="collapseExample">
<li role="presentation" id="naviLogo"><img src="../resources/img/logo2.png" style="height:30%;"></li>
<li role="presentation"><a href="#"><h4><strong>admin 계정 정보</strong></h4></a></li>
 <li role="presentation"><a href="#"><h4><strong>Home</strong></h4></a></li>
  <li role="presentation"><a href="#"><h4><strong>Profile</strong></h4></a></li>
  <li role="presentation"><a href="#"><h4><strong>Messages</strong></h4></a></li>
</ul>
</div>

<div id="content">
	<div id="contentHeader">
		<a id="btn"><i class="fas fa-align-justify fa-2x"></i></a>
		<a href="#">
 		 <i class="fas fa-envelope fa-2x"></i> <span class="badge" style="wi">4</span>
		</a>		
	</div>
	<div id="titleDiv"><h2 id="title">Dashboard</h2>
	
	<div style="background-color:#47639b; width:15%;" id="checkDiv">
		<h1 id="memberCount" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">전체 회원수</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20;"></i>
		<a href="#" style="display:block; background-color:#152f59; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="memberCheck">More Info</a>
	</div>
	
	<div style="background-color:#47639b; width:15%;" id="checkDiv1">
		<h1 id="memberCount1" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">당일 결제건</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20;"></i>
		<a href="#" style="display:block; background-color:#152f59; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="payCheck">More Info</a>
	</div>
</div>


<script>

$(function() {
	
	Highcharts.chart('container', {
		  chart: {
		    type: 'column'
		  },
		  title: {
		    text: 'Worlds largest cities per 2017'
		  },
		  subtitle: {
		    text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
		  },
		  xAxis: {
		    type: 'category',
		    labels: {
		      rotation: -45,
		      style: {
		        fontSize: '13px',
		        fontFamily: 'Verdana, sans-serif'
		      }
		    }
		  },
		  yAxis: {
		    min: 0,
		    title: {
		      text: 'Population (millions)'
		    }
		  },
		  legend: {
		    enabled: false
		  },
		  tooltip: {
		    pointFormat: 'Population in 2017: <b>{point.y:.1f} millions</b>'
		  },
		  series: [{
		    name: 'Population',
		    data: [
		      ['Shanghai', 24.2],
		      ['Beijing', 20.8],
		      ['Karachi', 14.9],
		      ['Shenzhen', 13.7],
		      ['Guangzhou', 13.1],
		      ['Istanbul', 12.7],
		      ['Mumbai', 12.4],
		      ['Moscow', 12.2],
		      ['São Paulo', 12.0],
		      ['Delhi', 11.7],
		      ['Kinshasa', 11.5],
		      ['Tianjin', 11.2],
		      ['Lahore', 11.1],
		      ['Jakarta', 10.6],
		      ['Dongguan', 10.6],
		      ['Lagos', 10.6],
		      ['Bengaluru', 10.3],
		      ['Seoul', 9.8],
		      ['Foshan', 9.3],
		      ['Tokyo', 9.3]
		    ],
		    dataLabels: {
		      enabled: true,
		      rotation: -90,
		      color: '#FFFFFF',
		      align: 'right',
		      format: '{point.y:.1f}', // one decimal
		      y: 10, // 10 pixels down from the top
		      style: {
		        fontSize: '13px',
		        fontFamily: 'Verdana, sans-serif'
		      }
		    }
		  }]
		});
  
 });

</script>

</div>



</div>




</div>


<div>
<div id="container" style="min-width: 300px; height: 400px; margin: 0 auto; position:absolute; z-index: 100"></div>
</div>

<div class="modal fade" id="memberChkModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
 		<table class="table table-striped" id="memberTable">
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="save">Save changes</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="payChkModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
 		<table class="table table-striped" id="payTable">
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="save1">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>