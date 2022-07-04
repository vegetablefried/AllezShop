<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="././resources/css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <script src="././resources/js/main.js" defer></script>
    <script src="././resources/js/prd_scale.js" defer></script>
    <script src="././resources/js/slide.js" defer></script>
    <script src="././resources/js/address.js" defer></script>
    <script src="https://kit.fontawesome.com/5309915bbd.js" crossorigin="anonymous" defer></script>
    <title>Allez</title>
</head>
<body>
    <div class="wrap">
        <div class="back"></div>
        <header class="whole-header">
                <div class="top-header-fix">
                    <div class="top-header">
                        <div class="top-header-wrap">
                        <h1 class="logo">
                            <a href="main" class="site-link"></a>
                        </h1> 
                        <form class="form-search" action="">
                            <div class="search-wrap">
                            <input class="search" type="text">
                            <div class="search-icon" id="insert-search" onclick="searchform()"></div>
                            </div>
                        </form>
                        <nav class="user-nav">
                            <a href="/LoginPage" class="btn-cart"></a>
                            <a href="/LoginPage" class="btn-fav"></a>    
                            <a href="/LoginPage" class="btn-mypage"></a>
                        </nav>
                        </div>
                    </div>
                </div>

            <div class="bottom-header">
                <div class="bottom-inner">
                    <nav class="prd-nav">
                            <a href="#" class="prd-nav-items">홈</a>
                            <a href="#" class="prd-nav-items">카테고리</a>
                            <a href="#" class="prd-nav-items">하루배송</a>
                            <a href="#" class="prd-nav-items">혜택존</a>
                            <a href="#" class="prd-nav-items">베스트</a>
                            <a href="#" class="prd-nav-items new">신상<sup>5% 할인</sup></a>
                            <a href="#" class="prd-nav-items">특가</a>
                            <a href="#" class="prd-nav-items">스토어</a> 
                    </nav>
                </div>
            </div>
        </header>
        <section>
            

                <div class="slide" id="slide-stop-sec">
                    <img id="img-sizing" src="././resources/img/bannerImage_1_1640687853.jpg" alt="기준이미지">
                    <ul class="slide-wrap" id="slide-container">
                        <li><img class="slide-image-size" id="slide_heightvalue" src="././resources/img/bannerImage_1_1640687853.jpg" alt="bannerimage"></img></li>
                        <li><img class="slide-image-size"  src="././resources/img/bannerImage_5_1640687854.jpg" alt="bannerimage"></img></li>
                        <li><img class="slide-image-size"  src="././resources/img/bannerImage_8_1640687854.jpg" alt="bannerimage"></img></li>
                        <li><img class="slide-image-size"  src="././resources/img/bannerImage_9_1640687854.jpg" alt="bannerimage"></img></li>
                        <li><img class="slide-image-size"  src="././resources/img/bannerImage_621012_1640758302.jpg" alt="bannerimage"></img></li>
                    </ul>
                
                    <button id="slide-btn-prev"><img src="././resources/img/ic-square-arrow-2-l-n@3x.png" alt=""></button>
                    <button id="slide-btn-next"><img src="././resources/img/ic-square-arrow-2-l-n@3x.png" alt=""></button>
                    
                </div>
            
        </section>
        
        <main>
            <div class="prd-main-wrap">
                <div class="prd-main">
                    <div class="prd-main-title">
                        <h2>오늘은 이 상품 어때요?</h2>
                    </div>
                    <div class="prd-list">
                            <div class="product-link">
                                    <div class="prd-image">
                                        <img src="././resources/img/SB000000000041088328_1633952568_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                    </div>
                                    <div class="prd-content">
                                        <a href="" class="content-seller"><b>리셀드</b></a>
                                        <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                        <em class="content-price">32,000</em>
                                    </div>  
                            </div>
                            <div class="product-link">
                                    <div class="prd-image">
                                        <img src="././resources/img/SB000000000029153227_1622040944_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                    </div>
                                    <div class="prd-content">
                                        <a href="" class="content-seller"><b>리셀드</b></a>
                                        <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                        <em class="content-price">29,000</em>
                                    </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000029698818_1622599156_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">15,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000029724816_1622616956_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">19,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000028470547_1621527475_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">33,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000030850597_1623709709_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">19,400</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000041088328_1633952568_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">18,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000045208111_1637555241_image1_S.jpeg" alt="상품이미지1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>리셀드</b></a>
                                    <p class="content-name">[당일출고] 잼잼이 뒷끈 원피스</p>
                                    <em class="content-price">13,000</em>
                                </div>  
                            </div>
                            

                            
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <div class="foot-sector">
                <div class="footer-underline">
                <nav class="footerinfo-division-top">
                    <div class="inner">
                        <div class="link-about">
                            <a href="#">이용약관</a>
                            <a href="#"><b>개인정보처리방침</b></a>
                            <a href="#">사업자정보확인</a>
                            <a href="#">인재채용</a>
                            <a href="#">입점문의</a>
                            <a href="#">샐러어드민</a>
                        </div>
                        <div class="link-social">
                            <div class="link-social-item">
                                <a href="#">
                                    <img src="././resources/img/ic-faq-32.svg" alt="question-rogo">
                                    <span>FAQ</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-facebook-rogo-32.svg" alt="facebook-rogo">
                                    <span>페이스북</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-kakaoplus-rogo-32.svg" alt="kakaoplus-rogo">
                                    <span>카카오플러스</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-insta-rogo-32.svg" alt="insta-rogo">
                                    <span>인스타그램</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
                <address class = "footerinfo-division-bottom">
                
                <div class="company-info">
                    <div class="company-name">(주)Allez</div>
                    <div class="bundle">
                        <span>대표이사 : 조성진 ,주은상</span>
                        <span>사업자등록번호 : 220-98-23992</span>
                        <span>통신판매업신고 : 2016-서울강남-00359</span>
                    </div>
                    <div class="bundle">
                        <span>호스팅사업자 : (주)Allez</span>
                        <span>주소 : 안산시 단원구 Allez (호수동)</span>
                    </div>
                    <div class="bundle">
                        <span>개인정보관리책임자 : 홍길동</span>
                    </div>
                    <div class="bundle">
                        <span>Allez는 언제나 고객님들께 최상의 서비스를 제공하도록 하겠습니다.</span>
                    </div>

                </div>
                
                <div class="servicecenter">
                    <div class="center-phonenumber">
                        <b>고객센터 1566-7982</b>
                    </div>
                    <div class="center-info">
                        <span>영업시간</span>
                        <time>AM 10:00</time>
                        ~
                        <time>PM 17:00</time>
                        (주말 및 공휴일 휴무)
                    </div>
                    <div class="center-info">
                        <span>점심시간</span>
                        <time>PM 12:30</time>
                        ~
                        <time>PM 13:30</time>
                    </div>

                </div>

                </address>

                <div class="safety"></div>
            </div>
        </footer>

    </div>
</body>
</html>