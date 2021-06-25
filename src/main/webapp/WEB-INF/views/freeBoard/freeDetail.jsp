﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-9 write-wrap">
                        <div class="titlebox">
                            <p>상세보기</p>
                        </div>
                        
                        <form action="freeModify" method="post">
                            <div>
                                <label>DATE</label>
                                <p>
                                <fmt:formatDate value="${boardVO.regdate }" pattern="yyyy년 MM월 dd일"/>
                                </p>
                            </div>   
                            <div class="form-group">
                                <label>번호</label>
                                <input class="form-control" name='bno' value="${boardVO.bno }" readonly>
                            </div>
                            <div class="form-group">
                                <label>작성자</label>
                                <input class="form-control" name='writer' value="${boardVO.writer }" readonly>
                            </div>    
                            <div class="form-group">
                                <label>제목</label>
                                <input class="form-control" name='title' value="${boardVO.title }" readonly>
                            </div>

                            <div class="form-group">
                                <label>내용</label>
                                <textarea class="form-control" rows="10" name='content' readonly>${boardVO.content }</textarea>
                            </div>

                            <button type="submit" class="btn btn-primary">변경</button>
                            <button type="button" class="btn btn-dark" onclick="location.href='freeList'">목록</button>
                    </form>
                </div>
            </div>
        </div>
        </section>
        
        <section style="margin-top: 80px;">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-9 write-wrap">
                        <form class="reply-wrap">
                            <div class="reply-image">
                                <img src="../resources/img/profile.png">
                            </div>
                            <!--form-control은 부트스트랩의 클래스입니다-->
	                    <div class="reply-content">
	                        <textarea class="form-control" rows="3" name="reply" id="reply"></textarea>
	                        <div class="reply-group">
	                              <div class="reply-input">
	                              <input type="text" class="form-control" placeholder="이름" name="replyId" id="replyId">
	                              <input type="password" class="form-control" placeholder="비밀번호" name="replyPw" id="replyPw">
	                              </div>
	                              
	                              <button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>
	                        </div>
	
	                    </div>
                        </form>

                        <!--여기에접근 반복-->
                        <div id="replyList">
                        <div class='reply-wrap'>
                            <div class='reply-image'>
                                <img src='../resources/img/profile.png'>
                            </div>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                                <p class='clearfix'>여기는 댓글영역</p>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
	<!-- 모달 -->
	<div class="modal fade" id="replyModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
					<h4 class="modal-title">댓글수정</h4>
				</div>
				<div class="modal-body">
					<!-- 수정폼 id값을 확인하세요-->
					<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
						    <input type="hidden" id="modalRno">
							<input type="password" class="form-control" placeholder="비밀번호" id="modalPw">
						</div>
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
					</div>
					<!-- 수정폼끝 -->
				</div>
			</div>
		</div>
	</div>
	
	<script>
		
		$(document).ready(function(){
			//등록이벤트
			$("#replyRegist").click(function(){
				
				var bno = "${boardVO.bno }";//글번호
				var reply = $("#reply").val();
				var replyId = $("#replyId").val();
				var replyPw = $("#replyPw").val();
				
				if(reply=='' ||replyId=='' ||replyPw==''){
					alert("이름,비밀번호,내용은 필수입니다.");
					return;
				}
				
			$.ajax({
				type: "post",
				url: "../reply/replyRegist", //같은 서버기때문에 상대경로로 주어도o 현재경로가 /myweb/freeBoard까지 들어가있는상태니까 contextpath까지 가려면 상위경로로 한번 올라와야한다. 
				dataType: "json",//생략가능
				contentType: "application/json; charset=UTF-8",//charset은 생략가능
				data: JSON.stringify({"bno":bno,"reply":reply,"replyId":replyId,"replyPw":replyPw}),//키가 VO의 멤버변수명과 같아야 매핑이되어 들어갑니다.
				success: function(data){
					if(data == 1){//등록 성공
						$("#reply").val("");
						$("#replyId").val("");
						$("#replyPw").val("");
						getList(); //데이터가 등록된이후에 데이터 조회
					}else{//등록 실패
						alert("등록에 실패했습니다. 다시 시도하세요");
					}
				},//data값으로는 controller에 replyRegist의 return값이 돌아옴
				error: function(status,error){console.log(status,error);}				
			});
				
			})
			getList(); //데이터조회 메서드 호출 클릭이 일어나기전부터 실행됨.
			
			//데이터조회
			function getList(){
				
				var bno = "${boardVO.bno}";
				var pageNum = 1;
				
				$.getJSON("../reply/getList/"+bno+"/"+pageNum,function(data){ //(요청주소,콜백함수) //get방식의 페스베리어블 방식으로 주소에 값을 담아 넘겨준다.
					
					console.log(data);				
				}) 
			}
			
		});//end ready
	
	</script>
