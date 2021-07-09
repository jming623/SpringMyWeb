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
    <link href="${pageContext.request.contextPath }/resources/css/mypage.css" rel="stylesheet">
<body>
	
	<section class="mypage">

    <div class="container">
        <div class="row">
            <div class="col-md-9" >
                <div class="mypage-title">
                    <span>마이페이지</span>
                </div>   

                <ul class="nav nav-tabs mypage-nav">
                    <li><a data-toggle="tab" href="#menu2">작성글</a></li>
                    <li class="active"><a data-toggle="tab" href="#menu1">내정보</a></li>
                </ul>
    
                <div class="tab-content mypage-wrap">
                    <div id="menu1" class="tab-pane fade in active mypage-info">
                        <form action="">
                            <table class="table">
                                <tbody class="m-control">
                                    <tr><td class="m-title">아이디</td></tr>
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                    <tr><td class="m-title">이름</td></tr>                              
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                    <tr><td class="m-title">이메일</td></tr>                              
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                    <tr><td class="m-title">전화번호</td></tr>                              
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>                                   
                                    <tr><td class="m-title">주소</td></tr>                              
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                                                 
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                                             
                                    <tr>
                                        <td><input class="form-control mypage-input" type="text" name="" id="" value="" readonly ></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            
                            <div>
                                <button type="submit" class="btn btn-primary btn-block">수정하기</button>    
                            </div>                           

                        </form>
    
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <div class="mypage-content">
                            <table class="mypage-content-wrap table">
                                <thead>
                                    <tr>
                                        <td>번호</td>
                                        <td>제목</td>
                                        <td>내용</td>
                                        <td>작성일</td>
                                    </tr>
                                </thead> 
                                <tbody class="mypage-content-body">
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
                                    <tr>
                                        <td>4</td>
                                        <td><a href="">네번째글</a></td>
                                        <td><a href="">네번째글은이렇게 작성하였습니다.</a></td>
                                        <td>2021/07/05</td>
                                    </tr>
                                    
                                </tbody>   
                            </table>
                            
                            <div class="text-center">
                                <ul class="mypage-content-page pagination">
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