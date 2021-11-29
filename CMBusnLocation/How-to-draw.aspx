<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="How-to-draw.aspx.vb" Inherits="CMBusnLocation_4D" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Header4.css" rel="stylesheet">
    <link href="../Css/Header3.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
        
        @media (min-width: 991px) {
            .xl-hide {
                display: none;
            }
        }
        @media (max-width: 991px){
            .m-hide {
                display: none;
            }
        }
        .banner-box .banner-box-title span {
            color: white;
            font-size: 50px;
            font-weight: bold;
            border-bottom: 2px solid white;
            text-shadow: 3px 3px 5px #000000c4;
        }
        @media (max-width: 767px){
            .banner-box .banner-box-title span {
                font-size: 9vw;
                border-bottom: 1.5px solid white;
            }
            .sm-100 {
                width: 100% !important;
            }
            h3 {
                font-size: 20px;
            }
        }
        .c-themered {
            color: /*#c1272d*/#003032 !important;
        }
        .banner-box {
            position: relative;
        }
        .banner-box .banner-box-title {
            position: absolute;
            height: 100%;
            width: 100%;
            text-align: center;
            top: 0;
        }
        .v-mid {
            display: flex;
            justify-content: center;
            align-content: center;
            flex-direction: column;
        }
        .round-solid-border{
            border:1px solid #d3d3d3;
            border-radius:20px;
        }
        .tbl-5{
            width:100%;
            margin-bottom:0;
            text-align:left;
            min-width:450px;
            font-size:0.8rem;
        }
        .tbl-5 td {
           padding: 10px 0;
        }
        .round-span-themered {
            color: white;
            background: /*#c1272d*/#003032;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .round-span-black {
            color: white;
            background: #323232;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .tbl-6 {
            width: 100%;
            text-align: left;
            margin: 0;
        }
        .tbl-6 td {
            padding: 2%;
        }
        .tbl-6 td:not(:last-child) {
            border-right: 1px solid lightgray;
        }
        .gd-list {
            list-style: none;
            counter-reset: my-awesome-counter;
            padding: 0;
        }
        .gd-list li::before {
            content: "0" counter(my-awesome-counter); 
            content: counter(my-awesome-counter);
            color: white;
            font-weight: bold;
            background-color: #c1272d;
            border-radius: 100px;
            padding: 1px 10px;
            text-align: center;
            display: inline-block;
            margin: 4px;
            margin-right: 10px;
            position: absolute;
        }
        .gd-list li {
            counter-increment: my-awesome-counter;
        }
        .gd-list li {
            padding-left: 0.5rem;
            line-height: 1.8;
            margin-bottom: 1rem;
        }
        .gd-list * {
            font-size: 0.9rem;
        }
        .round-dotted-border {
            border: 1px dashed lightgray;
            border-radius: 20px;
        }
        .tbl-1 {
            min-width: 900px;
            border-collapse: unset;
            border-spacing: 2px;
            width: 100%;
        }
        #lotterygame-section .tbl-1 {
            min-width: 500px;
        }
        .tbl-1 tr:nth-child(odd) {
            background-color: #e6e6e6;
        }
        #lotterygame-section .tbl-1 th:nth-child(1), #lotterygame-section .tbl-1 td:nth-child(1) {
            text-align: left;
        }
        .tbl-1 th {
            background-color: #c1272d;
            color: white;
            font-weight: bold;
            width: calc(100%/6);
            padding: 5px 10px;
            font-size: 15px;
        }
        .tbl-1 td {
            padding: 5px 10px;
        }
        .tbl-1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .gd-list li:last-child {
            margin-bottom: 0;
        }

        .round-span-redborder {
            color: #c1272d;
            background: #fff;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
            border: 1px solid #c1272d;
        }
        .f-sm {
            font-size: 0.8rem;
        }
        .round-span-black {
            color: white;
            background: #323232;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .v-top {
            vertical-align: top;
        }
        #win {
            text-align:left
        }
        .win .win-head {
            background-color: #c1272d;
            color: white;
        }
        .win .win-body {
            font-size: 0;
            display: flex;
        }
        .win .win-left {
            background-color: #ececec;
        }
        .win .win-content {
            flex: 0.5;
            display: inline-block;
            font-size: 13px;
            vertical-align: top;
        }
        .win-type.selected, .win-cur.selected {
            background-color: #c1272d;
            color: white;
        }
        .win-type, .win-cur {
            cursor: default;
            display: inline-block;
            background-color: #fff;
            width: 49%;
            padding: 5px;
            text-align: center;
            margin-bottom: 3px;
            font-weight: 500;
            box-shadow: 1px 1px 3px #8080808c;
        }
        .win-cur {
            width: 24% !important;
        }
        input {
            border: 0;
            padding: 5px 3px;
            box-shadow: 1px 1px 3px #8080808c;
        }
        label {
            font-weight: 500;
        }
        label, input {
            display: block;
        }
        .btn-calc {
            width: 50%;
            display: inline-block;
            background-color: #c1272d;
            color: white;
            font-weight: 600;
            border: 0;
            border-radius: 30px;
            font-size: 15px;
        }
        .win .win-right {
            background-color: #262626;
            color: white;
        }
        .win-title {
            color: #f4d240;
            font-weight: 600;
            font-size: 20px;
        }
        .win-tbl1, .win-tbl2 {
            color: white;
            width: 100%;
        }
        .win-sub {
            color: white;
        }
        .win-tbl2 tr td:nth-child(2) {
            color: #f4d240;
            font-size: 22px;
            font-weight: bold;
        }
        .win-tbl2 tr td {
            vertical-align: top;
            padding: 5px;
        }
        .win-tbl2 tr td:nth-child(3) {
            font-size: 12px;
            padding-bottom: 10px;
            color: greenyellow;
        }
        @media (max-width: 768px){
            .win .win-content, .win .win-body {
                display: block;
            }
            input {
                width: 100%;
            }
            .btn-calc {
                width: 100%;
            }
            .win-tbl2 td {
                display: block;
                box-sizing: border-box;
                clear: both;
            }
            
            /*#cur_selection{
                text-align:left !important;
            }*/
        }

        .box-6d-rounded {
            max-width: 150px;
            width: 100%;
            margin: auto;
            border: 1px solid #cdcdcd;
            border-radius: 30px;
            padding: 5px;
            line-height: 1;
        }
        .box-6d-rounded .tbl-box-6d {
            width: 100%;
            table-layout: fixed;
            text-align: center;
            margin: 0;
        }
        .box-6d-rounded .tbl-box-6d td {
            padding: 0 !important;
            font-weight: bold;
        }
        .clean-tbl, .clean-tbl tr, .clean-tbl td {
            margin: auto;
            padding: 0 !important;
            line-height: 1;
        }
        .box-6d-rounded .tbl-box-6d td.clr {
            background-color: lightgray;
        }
        .or-mid {
            padding: 5px 8px;
            margin: 0 2px;
            background-color: #585858;
            color: white;
            border-radius: 20px;
        }
        .mod-6d-long {
            font-size: 1.1rem;
            min-width: 715px;
        }

        .txt20 {
            font-size: 20px;
        }
        .txt14 {
            font-size: 14px;
        }
        .c-gray {
            color: gray;
        }
        h1, h2, h3, h4, h5, h6 {
            color: #313131 !important;
            font-family: Lato;
        }
        .tabs {
            position: relative;
            margin: 0 0 30px 0;
        }
        .imagetab {
            border: 0;
        }

        .imagetab li {
            flex-grow: 1;
            flex-basis: 0;
            border-radius: 0;
            border-bottom: 0;
        }
        .imagetab.nav-tabs .nav-link.active, .imagetab.nav-tabs .nav-item.show .nav-link {
            border-color: /*#c1272d*/#003032;
        }
        .imagetab.nav-tabs .nav-link {
            border: 1px solid transparent;
            border-radius: 0;
            border-bottom: 6px solid #dee2e6;
        }
        .tab-container {
            position: relative;
            padding: 20px 0 0;
        }
        .fluid-width-video-wrapper {
            width: 100%;
            position: relative;
            padding: 0;
        }
        .v-bottom {
            display: flex;
            justify-content: flex-end;
            align-content: center;
            flex-direction: column;
        }
        h3 {
            font-size: 24px;
        }
        img{
            max-width:100%;
        }
        .imagetab.nav-tabs .nav-link img {
            width: 62px;
        }

    </style>

    <!--Start Header-->
    <header id="header" class="full-header">
                
                <%--<div id="login-wrap">
                    <div class="login-wrap-user">
                        <input placeholder="Phone Number" name="UN" id="txtLoginUsername" class="input-1">
                        <input placeholder="Password" name="PW" id="txtLoginPass" class="input-1" type="password">
                        <div id="btnLogin" class="inline-block btn-1 btn-1-red text-center" onclick="GDP_LOGIN()">LOGIN</div>
                        <a class="btn-1 inline-block text-center" id="btnSignUp" href="/member/signup.aspx">SIGN UP</a>

                        <div class="login-wrap-user-fp">
                            <a href="/member/forgotpw.aspx">forgot password?</a>
                        </div>
                    </div>
                    <div class="login-wrap-flag">
                        LOGIN
                    </div>
                </div>--%>
                
                <div id="header-wrap" class="">
                    <div class="container clearfix">
                        <div class="cornered"></div>
                        <div id="primary-menu-trigger"><%--<i class="icon-reorder"></i>--%><i class="fas fa-bars text-danger"></i></div>

                        <!-- Logo
					============================================= -->
                        <div id="logo">
                            <a href="/" class="standard-logo">
                                <img src="../assets/images/KIMCO ICONS/logo.png" alt="kimlotto"></a>
                            <a href="/" class="retina-logo">
                                <img src="../assets/images/KIMCO ICONS/logo@2x.png" alt="kimlotto"></a>
                        </div>
                        <!-- #logo end -->

                        <!-- Primary Navigation
					============================================= -->
                        <nav id="primary-menu">
                            <ul class="sf-js-enabled d-block" style="touch-action: pan-y;">
                                <li><a href="home.aspx">Home</a></li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Our Games</a>
                                    <ul class="menu-pos-invert" id="L1" style="display:none;">
                                        
                                        <li><a href="4D.aspx">KIM LOTTO 4D</a></li>
                                        <li><a href="6D.aspx">KIM LOTTO 6D</a></li>
                                        <li><a href="prize.aspx">Prize Structure</a></li>
                                        <li><a href="Machine.aspx">Machine Design &amp; Spec</a></li>
                                        <li><a href="How-to-draw.aspx">How We Draw?</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">About Us</a>
                                    <ul class="menu-pos-invert" id="L2" style="display:none;">
                                        <li><a href="about-us.aspx">About Us</a></li>
                                        <li><a href="long-long.aspx">About LONG LONG</a></li>
                                        <li><a href="about-corporate-value.aspx">Our Corporate Value</a></li>
                                        <li><a href="about-play-responsibility.aspx">Play Responsibility</a></li>
                                        <li><a href="about-protect.aspx">Protect Yourself</a></li>
                                        <li><a href="about-contact-us.aspx">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Results</a>
                                    <ul class="menu-pos-invert" id="L3" style="display: none;">
                                        <li><a href="resultToday.aspx">Today Result</a></li>
                                        <li><a href="resultPast.aspx">Past Results</a></li>
                                        <li><a href="resultJackpotWinner.aspx">6+1D Jackpot Winner</a></li>
                                        <li><a href="resultDidIWin.aspx">Did I win?</a></li>
                                        <li><a href="resultPrizeCal.aspx">Prize Calculator</a></li>
                                        <li><a href="resultStatistics.aspx">Statistics</a></li>
                                        <li><a href="resultWatchLiveApp.aspx">Watch Live in GDApp</a></li>
                                        <li><a href="resultWatchLiveFB.aspx">Watch Live in FB</a></li>
                                        <li><a href="resultWatchLiveWeb.aspx">Watch Live in Web</a></li>
                                        <li><a href="resultWatchLiveWechat.aspx">Watch Live in WeChat</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Jackpot</a>
                                    <ul class="menu-pos-invert" id="L4" style="display: none;">
                                        <li><a href="dragonJackpot.aspx">Dragon Jackpot 6+1D</a></li>
                                        <li><a href="jackpot4D.aspx">4D Jackpot Tracker</a></li>
                                        <li><a href="jackpotHowItWorks.aspx">How It Works?</a></li>
                                        <li><a href="jackpotCalculator.aspx">Jackpot Calculator</a></li>
                                        <li><a href="jackpotHowToWin.aspx">How to Win?</a></li>
                                        <li><a href="jackpotSharingRules.aspx">Sharing Rules</a></li>
                                    </ul>
                                </li>
                                <%--<li class="sub-menu"><a href="#" class="sf-with-ul">The Community</a>
                                    <ul style="display: none;">
                                        <li><a href="/community">Connect Us</a></li>
                                        <li><a href="/community/longlong">Long Long Dream Number</a></li>
                                        <li><a href="/community/partner">Partner Program</a></li>
                                        <li><a href="/community/our-videos">Our Videos</a></li>
                                        <li><a href="http://blog.gdlotto.com/" target="_blank">Blog</a></li>
                                    </ul>
                                </li>--%>
                                
                                <%--<li class="sub-menu"><a href="#" class="sf-with-ul">GDPOINTS
                                    </a>
                                    <ul class="menu-pos-invert" style="display: none;">
                                        <li><a href="/gdpoints">GDPOINTS.COM</a></li>
                                        
                                        <li><a href="/member/login.aspx">Login</a></li>
                                        <li><a href="/member/signup.aspx">Sign Up</a></li>
                                        
                                    </ul>
                                </li>

                                <li class="sub-menu"><a href="#" class="sf-with-ul">ENG ▼</a>
                                    
                                    <ul class="menu-pos-invert" style="display: none;">
                                        <li onclick="doLangChg('en')"><a href="javascript:void(0)">ENGLISH</a></li>
                                        <li onclick="doLangChg('cn')"><a href="javascript:void(0)">中文</a></li>
                                        <li onclick="doLangChg('kh')"><a href="javascript:void(0)">KHMER</a></li>
                                    </ul>
                                </li>--%>
                            </ul>

                        </nav>
                        <!-- #primary-menu end -->

                    </div>

                </div>

            </header>
    <!-- END HEADER -->
    <div class="banner-box">
        <img src="../assets/images/KIMCO ICONS/web.jpg" class="m-hide img-fluid" />
        <img src="../assets/images/KIMCO ICONS/mobile.jpg" class="xl-hide img-fluid" />
        <div class="banner-box-title v-mid" style="background-color:#000000a6">
        <div>
            <span  class="d-inline-block text-uppercase mb-2">OUR GAMES</span>
        </div>
        </div>
    </div>
    &#xFEFF;
    <div style="padding:0 0 30px 0" id="lotterygame-section">
        <div class="container clearfix p-3">
        <div class="row">
            <div class="col-xl-8 offset-xl-2">
                <h2 class="m-0 c-themered text-center">HOW DO WE DRAW</h2>
                <h3 class="c-gray mt-3">KimLotto Draw Introduction:</h3>
                <div class="pt-3 pb-3 text-justify c-gray">
                    All our 4D and 6D games draws are conducted in daily basic or seven (7) times a week, and held at our own licensed casino, Kimco Casino lobby togethers with the public audiences.  It will commence at 6.10pm (Cambodia Time zone at GMT+7) and is conducted in full view of the public.<br><br>

                    The entire draws are viewable and transparent to everyone in our casino lobby. Everyone in casino, and everyone who watching online are responsible for witnessing and verifying the winning numbers drawn for the respective games. This is to ensures all our draws are conducted in a fair and transparent manner.
                </div>
                <div class="tabs clearfix mt-3" id="tab-9">
                    <div class="row">
                        <div class="text-center w-100">
                            <ul class="nav nav-tabs imagetab" id="howwedraw-tab" role="tablist">
                                <li class="nav-item" role="tab" tabindex="0" aria-labelledby="4d-prize-tab" aria-selected="true" aria-expanded="true">
                                    <a class="nav-link active show" id="4d-prize-tab" data-toggle="tab" href="#4d-prize" role="presentation" aria-controls="4d-prize" aria-selected="true" tabindex="-1"><h3 class="m-0 text-center"><img src="../assets/images/KIMCO ICONS/4d_icon.png">&nbsp; LOTTERY GAME</h3></a>
                                </li>
                                <li class="nav-item" role="tab" tabindex="-1" aria-labelledby="6d-prize-tab" aria-selected="false" aria-expanded="false">
                                    <a class="nav-link" id="6d-prize-tab" data-toggle="tab" href="#6d-prize" role="presentation" aria-controls="6d-prize" aria-selected="true" tabindex="-1"><h3 class="m-0 text-center"><img src="../assets/images/KIMCO ICONS/6d_icon.png">&nbsp; LOTTERY GAME</h3></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="tab-container text-justify p-lg-3">
                        <div class="tab-content clearfix" id="d-prize">
                            <div class="mt-3">

                                <div class="pb-3 text-justify c-gray">
                                    <%--<div class="mt-4 mb-4">
                                        <div class="w-100">
                                            <div class="fluid-width-video-wrapper" style="padding-top: 56.25%;">
                                                <iframe id="frameYoutube" width="1280" height="720" src="https://www.youtube.com/embed/aVS9oc7eAxE?rel=0&amp;vq=large" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
                                            </div>
                                        </div>
                                    </div>--%>

                                    All KimLotto's 4D draws are generating via our pneumatic draw machines which have transparent tubes, chambers and acrylic plastic body that allowing full transparent view of the entire balls loading, mixing and selection process.<br><br>

                                    KimLotto draw commences with our most popular 4-digit game, Kimco4D and followed by the 6-digit game, Kimco6D. The entire draw process is broadcasting live from casino to all official channels including our official website, mobile app, Facebook, WeChat groups, and all partnered 4D results platform. When our machines not in use, all machines, equipment, balls and paraphernalia are kept in a secured and restricted area that has 24 hours physical and technical surveillance.<br><br>

                                    All our draws are conducted in full view and observed by the public. The objective is to making sure that all KimLotto draws conducted with the highest standards of transparency and integrity without any compromise in security. Our practices and procedures are also regularly reviewed by internal and external parties to ensure compliance with the industry's best practices and control requirements.

                                </div>
                            </div>

                            <div class="mt-3">
                                <div class="row">
                                    <div class="col-md-8">
                                        <img src="../assets/images/KIMCO ICONS/dp1_en-us.png" class="w-100">
                                    </div>
                                    <div class="col-md-4 v-bottom mt-2">
                                        <div class="c-themered txt20 font-weight-bold">FIRST STEP : </div>
                                        <div>
                                            A ball with an alphabet from A to W are drawn out, to decide the postion of upcoming number to be.
                                        </div>
                                        <div class="c-gray txt14">
                                            For example, if B is drawn, which means the upcoming number set is for position B
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5">
                                <div class="row">
                                    <div class="col-md-8">
                                        <img src="../assets/images/KIMCO ICONS/dp2_en-us.png" class="w-100">
                                    </div>
                                    <div class="col-md-4 v-bottom mt-2">
                                        <div class="c-themered txt20 font-weight-bold">SECOND STEP : </div>
                                        <div>
                                            A ball with a number is drawn from each D2, D3, D4, D5 machines subsequently, to form a number combination.
                                        </div>
                                        <div class="c-gray txt14">
                                            For example, if D2 drawn 8, D3 drawn 8, D4 drawn 8, D5 drawn 8, so the number combination is 8888.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5">
                                <div class="row">
                                    <div class="col-md-8">
                                        <img src="../assets/images/KIMCO ICONS/dp3_en-us.png" class="w-100">
                                    </div>
                                    <div class="col-md-4 v-bottom mt-2">
                                        <div class="c-themered txt20 font-weight-bold">THIRD STEP : </div>
                                        <div>
                                            3 balls out of 13 balls with alphabet of A to M will be drawn out, to decide the 3rd, 2nd, and 1st prize
                                        </div>
                                        <div class="c-gray txt14">
                                            For example, if G is drawn for the first ball in Machine D6, the number combination of G will be the 3rd Prize.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content clearfix d-none" id="s-prize">
                            <div class="mt-3">
                                <div class="pb-3 text-justify c-gray">
                                    Similar to KimcoLotto4D, our 6D is also a daily draw game and scheduled to draw a few minutes before we starting the KimcoLotto 4D at 6 p.m.
                                    (Cambodia time +7GMT). The six-digit number will be drawn from our existing 5 machines, from D1 to D5. To create more excitement for the
                                    game, we have specially designed the first 2 digit to be drawing at larger pneumatic draw machines - the D1 machine. We will have 20 balls to
                                    be filled into the D1, while other 4 smaller pneumatic draw machines of D2, D3, D4 &amp; D5 will be filled with 10 balls each.

                                    <div class="mt-4">
                                        <img src="../assets/images/KIMCO ICONS/6d-how-we-draw_en-us.png" class="w-100">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
    <!--Scripts-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script>
        let nav1 = document.querySelectorAll(".nav-link")[0];
        let nav2 = document.querySelectorAll(".nav-link")[1];

        let div1 = document.querySelector("#d-prize");
        let div2 = document.querySelector("#s-prize");

        nav1.addEventListener("click", function () {
            
            nav2.classList.remove("active");
            nav2.classList.remove("show");
            
            div2.classList.add("d-none");

            nav1.classList.add("active");
            nav1.classList.add("show");
            div1.classList.remove("d-none");
        });
         nav2.addEventListener("click", function () {
            nav1.classList.remove("active");
            nav1.classList.remove("show");
            
            div1.classList.add("d-none");

            nav2.classList.add("active");
            nav2.classList.add("show");
            div2.classList.remove("d-none");
        });

    </script>
</asp:Content>

