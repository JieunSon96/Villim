<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header css -->
<link href="<c:url value="/resources/css/main/header.css?var=2" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main/demo.css?var=3" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=1" />"
	rel="stylesheet" />

<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>


<!-- 재호  -->
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->

<script>
	$(document).ready(function(){
		$(document).click(function(event) {
			  if(
			    $('.toggle > input').is(':checked') &&
			    !$(event.target).parents('.toggle').is('.toggle')
			  ) {
			    $('.toggle > input').prop('checked', false);
			  }
		});
		
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
		
		
	})
</script>


    <div id="header">
      <div id="header-logo">
         <img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
      </div>
      <div id="header-search" class="form-search form-inline">
         <img src="<c:url value='/resources/img/search.png'/>">
         <input type="text" class="search-query form-control" placeholder="모든 위치·숙소" />
      </div>
      <div id="header-menu" class="headerContainer" >
         <section class="color-5">
            <nav class="cl-effect-5">
            	<div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="profileEditView.mo" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
               			<span data-hover="숙소추가" style="color:black;">숙소추가</span>
               			<ul>
        					<li><a href="home_info.do?seq=5">Item</a></li>
        					<li><a href="#" >Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="호스트" style="color:black;">호스트</span>
               			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%; color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="저장목록" style="color:black;">저장목록</span>
               			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="여행" style="color:black;">여행</span>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="메세지" style="color:black;">메세지</span>
               			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="도움말" style="color:black;">도움말</span>
               			
               		</a>
               </div>
               				<div id="header-menu-div" class="dropdown hover headerDR">
					<a data-toggle="modal" href="#myModal"
						style="width: 100%; color: black; overflow: hidden; margin: 0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
						<span data-hover="회원가입" style="color:black;">회원가입</span>

					</a>
				
				</div>
				<div id="header-menu-div" class="dropdown hover headerDR">
					<a data-toggle="modal" href="#myModal1"
						 style="width: 100%; color: black; overflow: hidden; margin: 0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
						<span data-hover="로그인" style="color:black;">로그인</span>
					</a>
				</div>
            </nav>
         </section>
      </div>
      <div id="header-pic">
         <img src="<c:url value='/resources/img/1.jpg'/>">
      </div>
   </div>

	<%@ include file="modal_signup/indexSignup.jsp"%>