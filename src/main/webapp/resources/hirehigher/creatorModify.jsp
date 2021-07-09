<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<!-- 부트스트랩 css파일참조 -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <!-- jquery라이브러리 참조 (순서중요! js보다 위에)--> 
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <!-- 부트스트랩 js참조 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath }/resources/css/creator.css" rel="stylesheet">
    <!-- jcrop 이미지 편집기(사용고려)-->
    <link rel="stylesheet" href="https://unpkg.com/jcrop/dist/jcrop.css">
    <script src="https://unpkg.com/jcrop"></script>
    <!-- 아이콘 불러오기 -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<body>
	<section>
        <div class="row">
        <div class="profile-header col-lg-12">
            <div class="profile-header-inner">
                <div class="creator-profile-header-modify">
                    <a href=""><i><input type="file" class="creator-profile-img-input" name="profile-file" id="profile-file"></i></a>
                </div>
            </div>
        </div>
        </div>
        <div class="profile-content">
                           
            <div class="creator-profile">
                
                <div class="creator-profile-img">
                    <form action="">
                        <img class="" id="creator-profile-img-target" src="https://d2vi0z68k5oxnr.cloudfront.net/40a3c83c-f048-44af-b9db-a65edbc519b2/original.jpeg?d=lg-logo" style="width: 128px; height: 128px;">

                        <div class="creator-profile-img-modify">
                            <a href=""><i><input type="file" class="creator-profile-img-input" name="profile-file" id="profile-file"></i></a>
                        </div>
                    </form>
                </div>

                <div class="creator-name">jming623</div>

                <div class="creator-email">
                    jming623@naver.com
                </div>

                <div class="creator-description">
                    <form action="" >
                        
                    <div class="creator-description-content" id="creator-description-content">
                        Crypto.com is the best place to buy, sell, and pay with crypto. Crypto.com serves over 10 million customers today, with the world’s fastest growing crypto app, along with the Crypto.com Visa Card — the world’s most widely available crypto card, the Crypto.com Exchange and Crypto.com DeFi Wallet.Crypto.com NFT is the premier platform for collecting and trading NFTs, carefully curated from the worlds of art, design, entertainment and sport.FAQs: help.crypto.com
                    </div>

                    <div class="creator-description-textarea" id="creator-description-textarea" style="display: none;"> 
                        <textarea name="" id="" cols="33" rows="14">Crypto.com is the best place to buy, sell, and pay with crypto. Crypto.com serves over 10 million customers today, with the world’s fastest growing crypto app, along with the Crypto.com Visa Card — the world’s most widely available crypto card, the Crypto.com Exchange and Crypto.com DeFi Wallet.Crypto.com NFT is the premier platform for collecting and trading NFTs, carefully curated from the worlds of art, design, entertainment and sport.FAQs: help.crypto.com</textarea>
                    </div>
                    
                    <div id="creator-descrption-btn-wrap">
                        <div id="creator-descrption-btn-inner1">
                            <button type="button" id="creator-descrption-btn1" class=" btn btn-default btn-xs">
                                <span class="glyphicon glyphicon-edit"></span> Edit
                            </button>
                        </div>
                        <div id="creator-descrption-btn-inner2" style="display: none;">
                            <button type="button" id="creator-descrption-btn2" class="btn btn-default btn-xs" onclick="location.reload()">수정</button>
                            <button type="button" id="creator-descrption-btn3" class="btn btn-default btn-xs" onclick="location.reload()">취소</button>
                        </div>
                    </div>
                    </form>
                </div>

                <div class="creator-social">
                    <a href="https://www.instagram.com/"><img src="${pageContext.request.contextPath }/resources/img/instaLogo.png" alt=""></a>
                </div>
                 
            </div>
            
            <div class="row">
                <div class="creator-content col-lg-8 col-md-7 col-sm-6 col-xs-12">
                                    
                        <ul class="creator-content-nav nav nav-tabs ">
                            <li class='active'><a data-toggle="tab" href="#menu1">제작자정보</a></li>
                            <li><a data-toggle="tab" href="#menu2">작성글</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="menu1" class="tab-pane fade in active">
                                <form action="">
                                    <div class="creator-content-info">
                                        <p>전공분야:</p>
                                        
                                        <div class="creator-content-info-detail">
                                            <small style="min-height: 50px;">디자인설계</small>
                                        </div>

                                        <div class="creator-content-info-textarea" style="display: none;">
                                            <textarea name="" id="">디자인설계</textarea>
                                        </div>

                                        <p>경력사항:</p>

                                        <div class="creator-content-info-detail">
                                            <small>바른미술학원 2년근무</small>
                                        </div>

                                        <div class="creator-content-info-textarea" style="display: none;">
                                            <textarea name="" id="" >바른미술학원 2년근무</textarea>
                                        </div>

                                        <p>수상경력:</p>

                                        <div class="creator-content-info-detail">
                                            <small>미술경시대회 우승</small>
                                        </div>

                                        <div class="creator-content-info-textarea" style="display: none;">
                                            <textarea name="" id="">미술경시대회 우승</textarea>
                                        </div>    
                                           
                                        <div class="creator-content-info-edit1">
                                            <button type="button" id="creator-content-info-editBtn">
                                                <span class="glyphicon glyphicon-pencil"></span>
                                            </button>                                            
                                        </div>
                                            
                                        <div class="creator-content-info-edit2" style="display: none;">
                                            <button type="button" class="btn btn-default" onclick="location.reload()">수정</button>
                                            <button type="button" class="btn btn-default" onclick="location.reload()">취소</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div id="menu2" class="tab-pane fade">
                                
                                <div class="creator-content-writing">
                                    <table class="creator-content-writing-table table">
                                        <thead>
                                            <tr>
                                                <td>번호</td>
                                                <td>제목</td>
                                                <td>내용</td>
                                                <td>작성일</td>
                                            </tr>
                                        </thead> 
                                        <tbody class="creator-content-writing-tbody">
                                            <tr>
                                                <td>1</td>
                                                <td><a href="">첫글</a></td>
                                                <td><a href="">첫글은이렇게 작성하였습니다.</a></td>
                                                <td>2021/07/05</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td><a href="">두번째글</a></td>
                                                <td><a href="">두번째글은이렇게 작성하였습니다.</a></td>
                                                <td>2021/07/05</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td><a href="">세번째글</a></td>
                                                <td><a href="">세번째글은이렇게 작성하였습니다.</a></td>
                                                <td>2021/07/05</td>
                                            </tr>
                                            
                                        </tbody>   
                                    </table>
                                    
                                    <div class="text-center">
                                        <ul class="creator-content-writing-page pagination">
                                            <li><a href="#menu2">이전</a></li>
                                            <li><a href="#menu2">1</a></li>
                                            <li><a href="#menu2">2</a></li>
                                            <li><a href="#menu2">3</a></li>
                                            <li><a href="#menu2">다음</a></li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                </div>                 
            </div>


        </div>
            
    </section>	
</body>
	<script>
    
    //프로필 수정
    $("#creator-descrption-btn1").click(function(){
        
        //텍스트 교체
       console.log("1");

       $("#creator-description-content").css("display","none");
       $("#creator-description-textarea").css("display","inline-block");

        //버튼 교체
        
        $("#creator-descrption-btn-inner1").css("display","none");
        $("#creator-descrption-btn-inner2").css("display","inline-block");
    })

    //제작자정보 수정
    $("#creator-content-info-editBtn").click(function(){

        //텍스트 교체
        $(".creator-content-info-detail").css("display","none");
        $(".creator-content-info-textarea").css("display","block");

        //버튼교체
        $(".creator-content-info-edit2").css("display","block");
        $(".creator-content-info-edit1").css("display","none");

    })

	</script>
</html>