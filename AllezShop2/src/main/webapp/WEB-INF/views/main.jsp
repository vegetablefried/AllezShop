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
                            <a href="#" class="prd-nav-items">Ȩ</a>
                            <a href="#" class="prd-nav-items">ī�װ�</a>
                            <a href="#" class="prd-nav-items">�Ϸ���</a>
                            <a href="#" class="prd-nav-items">������</a>
                            <a href="#" class="prd-nav-items">����Ʈ</a>
                            <a href="#" class="prd-nav-items new">�Ż�<sup>5% ����</sup></a>
                            <a href="#" class="prd-nav-items">Ư��</a>
                            <a href="#" class="prd-nav-items">�����</a> 
                    </nav>
                </div>
            </div>
        </header>
        <section>
            

                <div class="slide" id="slide-stop-sec">
                    <img id="img-sizing" src="././resources/img/bannerImage_1_1640687853.jpg" alt="�����̹���">
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
                        <h2>������ �� ��ǰ ���?</h2>
                    </div>
                    <div class="prd-list">
                            <div class="product-link">
                                    <div class="prd-image">
                                        <img src="././resources/img/SB000000000041088328_1633952568_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                    </div>
                                    <div class="prd-content">
                                        <a href="" class="content-seller"><b>������</b></a>
                                        <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                        <em class="content-price">32,000</em>
                                    </div>  
                            </div>
                            <div class="product-link">
                                    <div class="prd-image">
                                        <img src="././resources/img/SB000000000029153227_1622040944_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                    </div>
                                    <div class="prd-content">
                                        <a href="" class="content-seller"><b>������</b></a>
                                        <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                        <em class="content-price">29,000</em>
                                    </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000029698818_1622599156_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                    <em class="content-price">15,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000029724816_1622616956_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                    <em class="content-price">19,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000028470547_1621527475_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                    <em class="content-price">33,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000030850597_1623709709_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                    <em class="content-price">19,400</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000041088328_1633952568_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
                                    <em class="content-price">18,000</em>
                                </div>  
                            </div>
                            <div class="product-link">
                                <div class="prd-image">
                                    <img src="././resources/img/SB000000000045208111_1637555241_image1_S.jpeg" alt="��ǰ�̹���1" id="prdIMG">
                                </div>
                                <div class="prd-content">
                                    <a href="" class="content-seller"><b>������</b></a>
                                    <p class="content-name">[�������] ������ �޲� ���ǽ�</p>
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
                            <a href="#">�̿���</a>
                            <a href="#"><b>��������ó����ħ</b></a>
                            <a href="#">���������Ȯ��</a>
                            <a href="#">����ä��</a>
                            <a href="#">��������</a>
                            <a href="#">��������</a>
                        </div>
                        <div class="link-social">
                            <div class="link-social-item">
                                <a href="#">
                                    <img src="././resources/img/ic-faq-32.svg" alt="question-rogo">
                                    <span>FAQ</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-facebook-rogo-32.svg" alt="facebook-rogo">
                                    <span>���̽���</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-kakaoplus-rogo-32.svg" alt="kakaoplus-rogo">
                                    <span>īī���÷���</span>
                                </a>
                                <a href="#">
                                    <img src="././resources/img/ic-insta-rogo-32.svg" alt="insta-rogo">
                                    <span>�ν�Ÿ�׷�</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
                <address class = "footerinfo-division-bottom">
                
                <div class="company-info">
                    <div class="company-name">(��)Allez</div>
                    <div class="bundle">
                        <span>��ǥ�̻� : ������ ,������</span>
                        <span>����ڵ�Ϲ�ȣ : 220-98-23992</span>
                        <span>����Ǹž��Ű� : 2016-���ﰭ��-00359</span>
                    </div>
                    <div class="bundle">
                        <span>ȣ���û���� : (��)Allez</span>
                        <span>�ּ� : �Ȼ�� �ܿ��� Allez (ȣ����)</span>
                    </div>
                    <div class="bundle">
                        <span>������������å���� : ȫ�浿</span>
                    </div>
                    <div class="bundle">
                        <span>Allez�� ������ ���Ե鲲 �ֻ��� ���񽺸� �����ϵ��� �ϰڽ��ϴ�.</span>
                    </div>

                </div>
                
                <div class="servicecenter">
                    <div class="center-phonenumber">
                        <b>������ 1566-7982</b>
                    </div>
                    <div class="center-info">
                        <span>�����ð�</span>
                        <time>AM 10:00</time>
                        ~
                        <time>PM 17:00</time>
                        (�ָ� �� ������ �޹�)
                    </div>
                    <div class="center-info">
                        <span>���ɽð�</span>
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