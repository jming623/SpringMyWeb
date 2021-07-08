<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	<!-- 부트스트랩 css파일참조 -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <!-- jquery라이브러리 참조 (순서중요! js보다 위에)--> 
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <!-- 부트스트랩 js참조 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath }/resources/css/creator.css" rel="stylesheet">
    <!-- 아이콘 불러오기 -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
	<section>
       
        <div class="profile-header">
            
        </div>

        <div class="profile-content">
                           
            <div class="creator-profile">
                
                <div class="creator-profile-img">
                    <form action="">
                    <img class="" src="https://d2vi0z68k5oxnr.cloudfront.net/40a3c83c-f048-44af-b9db-a65edbc519b2/original.jpeg?d=lg-logo" style="width: 128px; height: 128px;">
                    </form>
                </div>

                <div class="creator-name">jming623</div>

                <div class="creator-email">jming623@naver.com</div>

                <div class="creator-description">
                    Crypto.com is the best place to buy, sell, and pay with crypto. Crypto.com serves over 10 million customers today, with the world’s fastest growing crypto app, along with the Crypto.com Visa Card — the world’s most widely available crypto card, the Crypto.com Exchange and Crypto.com DeFi Wallet. 
                    Crypto.com NFT is the premier platform for collecting and trading NFTs, carefully curated from the worlds of art, design, entertainment and sport.
                    FAQs: help.crypto.com
                </div>

                <div class="creator-social">
                    <a href="https://www.instagram.com/"><img src="/프로젝트/img/instaLogo.png" alt=""></a>
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
                                
                                <div class="creator-content-info">
                                    <div class="creator-content-info-detail">
                                        <p>전공분야:</p>
                                        <small style="min-height: 50px;">디자인설계</small>
                                    </div>
                                    <div class="creator-content-info-detail">
                                        <p>경력사항:</p>
                                        <small>바른미술학원 2년근무</small>
                                    </div>
                                    <div class="creator-content-info-detail">
                                        <p>수상경력:</p>
                                        <small>미술경시대회 우승</small>
                                    </div>
                                </div>

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
</html>