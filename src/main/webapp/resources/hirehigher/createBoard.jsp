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
    <link href="${pageContext.request.contextPath }/resources/css/createBoard.css" rel="stylesheet">
    <!-- Masonry -->
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script> 
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.js"></script>
    
</head>
<body>
	<section>
        <div class="container">           
            
            <div class="creation-list-btn" id="creation-list-btn">
                <button type="button" class="creation-list-active">2D Art</button>
                <button type="button" class="">3D Art</button>
                <button type="button" class="">Video/Firm</button>
                <button type="button" class="">Interior</button>
                <button type="button" class="">Architecture</button>
            </div>

            <div class="row">
                <!-- 사진1 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                                <a href=""><img src="${pageContext.request.contextPath }/resources/img/car3.jpg" art=""></a>
                            </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진2 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img01.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진3 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img04.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진4 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/car9.png" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진5 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img03.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- 추가 -->
                 <!-- 사진1 -->
                 <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/car3.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진2 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img01.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진3 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img03.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진4 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/car9.png" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 사진5 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img04.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 추가 -->
                 <!-- 사진1 -->
                 <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/car3.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진2 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img01.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진3 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img03.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 사진4 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/car9.png" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->    
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 사진5 -->
                <div class="creation-list-wrap col-md-3 col-xs-4">
                    <div class="creation-list">
                        <div class="prod-img"> <!-- 이미지영역 -->
                            <a href=""><img src="${pageContext.request.contextPath }/resources/img/img04.jpg" art=""></a>
                        </div>
                        <div class="prod-profile"> <!-- 제작자프로필영역 -->
                            <div class="prod-profile-img"> <!-- 왼쪽 -->
                                <a href="">
                                    <img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">
                                    <strong>제작자1</strong>
                                </a>
                            </div>
                            <div class="prod-profile-star"> <!-- 오른쪽 -->
                                <ul>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star"></i></li>
                                    <li><i class="glyphicon glyphicon-star-empty"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</body>
<script>
    $(function () {
        
        masonry();
    });

    //핀터레스트 게시판 적용
    function masonry(){   
             
        $(".row").imagesLoaded().done(function (instance) {//imagesLoaded().done -> 이미지 로드가 끝난뒤에 실행 imagesLoaded().progress -> 이미지로드가 될때마다 실행
            console.log("로드");
            console.log(instance);//없어도 무관 이미지로드에대한 정보

            $(".row").masonry({ //.row를 큰틀로잡고, .creation-list-wrap를 세부항목으로 잡음
            columnWidth: 2, // 
            itemSelector: '.creation-list-wrap',
        
            });

            $(".row").masonry('reloadItems'); //모든 항목 요소를 다시 수집
            $(".row").masonry('layout'); //모든 항목 요소를 배치
            
    }); 
        
    }
    
    //카테고리 버튼 

    $("#creation-list-btn").on("click","button", function(){
            
        if( $(this).attr("class") == "creation-list-active"){
            return;
        }else if($(this).attr("class") == ""){
            
            var btnCheck = $("#creation-list-btn").children();
            
            for(var i = 0; i < btnCheck.length; i++){               
                if(btnCheck[i].className == "creation-list-active"){
                    btnCheck[i].classList.remove("creation-list-active");
                }               
            }
             $(this).addClass("creation-list-active");
        }
    })
   

    //인피니트 스크롤
    window.onscroll = function(){
        if((window.innerHeight + window.scrollY) >= document.body.offsetHeight+100 ){ 
            //  console.log(window.innerHeight);//보이는 화면높이
            //  console.log(window.scrollY);//스크롤Y축(세로)이동
            //  console.log((window.innerHeight + window.scrollY));
            //  console.log(document.body.offsetHeight);//문서의 전체길이
            
            console.log("if문이실행됨");
            

            for(var i = 1; i <= 20; i++){
                
                var toAdd = document.createElement("div");
                strAdd = '';
                
                strAdd += '<div class="creation-list">';
                strAdd += '<div class="prod-img">';
                strAdd += '<a href=""><img src="${pageContext.request.contextPath }/resources/img/img'+i+'.jpg" art=""></a>';
                strAdd += '</div>';
                strAdd += '<div class="prod-profile">';
                strAdd += '<div class="prod-profile-img">'; 
                strAdd += '<a href="">';
                strAdd += '<img src="${pageContext.request.contextPath }/resources/img/profile.png" alt="">';
                strAdd += '<strong>제작자'+i+'</strong>';
                strAdd += '</a>';
                strAdd += '</div>';
                strAdd += '<div class="prod-profile-star">';
                strAdd += '<ul>';
                strAdd += '<li><i class="glyphicon glyphicon-star"></i></li>';
                strAdd += '<li><i class="glyphicon glyphicon-star"></i></li>';
                strAdd += '<li><i class="glyphicon glyphicon-star"></i></li>';
                strAdd += '<li><i class="glyphicon glyphicon-star"></i></li>';
                strAdd += '<li><i class="glyphicon glyphicon-star-empty"></i></li>';
                strAdd += '</ul>';
                strAdd += '</div>';
                strAdd += '</div>';
                strAdd += '</div>';
                strAdd += '</div>';

               
                $(toAdd).addClass("creation-list-wrap");
                $(toAdd).addClass("col-md-3");
                $(toAdd).addClass("col-xs-4");
                    
                $(toAdd).html(strAdd);
    
                $(".row").append(toAdd);

            }
            masonry();        
        }
        
    }

</script>
</html>


	