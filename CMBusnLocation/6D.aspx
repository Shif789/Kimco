<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="6D.aspx.vb" Inherits="CMBusnLocation_4D" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Header4.css" rel="stylesheet">
    <link href="../Css/Header3.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
        @media (max-width: 767px){
            .sm-100 {
                width: 100% !important;
            }
        }
        
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
        }
        .c-themered {
            color: #c1272d !important;
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
        .tbl-5 td:nth-child(1) {
            text-align: center;
            padding-right: 20px;
        }
        .round-span-themered {
            color: white;
            background: #c1272d;
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
        .round-span-themered {
            color: white;
            background: /*#c1272d*/ #003032;
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
<%--                         <iframe src="kimcoMenu.html" onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()"></iframe>--%>
                        <nav id="primary-menu">
                            <%--<ul class="sf-js-enabled d-block" style="touch-action: pan-y;">
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
                                </li>
                            </ul>--%>

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
    <div style="padding:0 0 30px 0" id="prizestructure-section">
        <div class="container clearfix p-2 p-lg-3">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h2 style="color:#c1272d" class="m-0 text-center mb-4">
                        <img src="../assets/images/KIMCO ICONS/6d_icon.png" />
                        &nbsp; LOTTERY GAME
                    </h2>
                    <div class="mt-3">
                        <div class="card card-body" style="border-radius:15px">
                        <ul class="nav nav-pills nav-fill m-0 p-0">
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="#">What is 6D Lottery Game?</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">How to Play?</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">How to Win?</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">How Much to Win?</a>
                            </li>
                        </ul>
                        </div>
                        <div class="tab-container text-justify p-lg-3">
                            
                            <div class="tab-content clearfix" id="what-is-lottery">
                            <h3 class="mb-3">What is 6D Lottery Game?</h3>
                            <div>
                                Everyone know our slogan is One Dollar One Dream! Hence, we at KimcoLotto are always committed to maximise your one dollar in hand with
                                biggest return to realise your dream. <br><br>
                                
                                If you don’t find our 4D game is exciting enough to realise your dream, then KimcoLotto's 6D will definitely tickle your fancy. Let's play KimcoLotto 6D &amp; stand a chance to become a millionaire! Win RM150,000 for every RM1 if you hit our 6D 1st prize, and won RM1.5 million if you purchased RM10!
                            </div>

                            <div class="mt-3 mb-3">
                                <div class="round-solid-border p-3 sm-100 w-75 m-auto">
                                    <div class="overflow-auto">
                                        <table class="tbl-5">
                                            <tbody><tr>
                                                <td style="width:40%"><span class="round-span-themered p-1 w-100">1st Prize</span></td>
                                                <td>
                                                    <div class="box-6d-rounded ">
                                                        <table class="tbl-box-6d">
                                                            <tbody><tr class="c-themered">
                                                                <td>3</td>
                                                                <td>0</td>
                                                                <td>1</td>
                                                                <td>8</td>
                                                                <td>4</td>
                                                                <td>4</td>
                                                            </tr>
                                                        </tbody></table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="round-span-themered p-1 w-100">2nd Prize</span></td>
                                                <td>
                                                    <table class="clean-tbl">
                                                        <tbody><tr>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td>3</td>
                                                                            <td>0</td>
                                                                            <td>1</td>
                                                                            <td>8</td>
                                                                            <td>4</td>
                                                                            <td class="clr"></td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                            <td><div class="or-mid">or</div></td>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td class="clr"></td>
                                                                            <td>0</td>
                                                                            <td>1</td>
                                                                            <td>8</td>
                                                                            <td>4</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="round-span-themered p-1 w-100">3rd Prize</span></td>
                                                <td>
                                                    <table class="clean-tbl">
                                                        <tbody><tr>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td>3</td>
                                                                            <td>0</td>
                                                                            <td>1</td>
                                                                            <td>8</td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                            <td><div class="or-mid">or</div></td>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td>1</td>
                                                                            <td>8</td>
                                                                            <td>4</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="round-span-themered p-1 w-100">4th Prize</span></td>
                                                <td>
                                                    <table class="clean-tbl">
                                                        <tbody><tr>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td>3</td>
                                                                            <td>0</td>
                                                                            <td>1</td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                            <td><div class="or-mid">or</div></td>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td>8</td>
                                                                            <td>4</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><span class="round-span-themered p-1 w-100">5th Prize</span></td>
                                                <td>
                                                    <table class="clean-tbl">
                                                        <tbody><tr>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td>3</td>
                                                                            <td>0</td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                            <td><div class="or-mid">or</div></td>
                                                            <td>
                                                                <div class="box-6d-rounded inline-block">
                                                                    <table class="tbl-box-6d">
                                                                        <tbody><tr>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td class="clr"></td>
                                                                            <td>4</td>
                                                                            <td>4</td>
                                                                        </tr>
                                                                    </tbody></table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody></table>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </div>

                                </div>
                            </div>
                        </div>
                            <!-- How to play-->
                           
                            <div class="tab-content clearfix d-none" id="how-to-play">
                            <h3 class="mb-3">How to Play?</h3>
                            
                            <p>
                                6D is a numerical game that players can choosing any 6-digit number from 000,000 to 999,999. The minimum bet is USD1 / RM1 / IDR1000 / THB10, and it's depending on the local country currency supported by KimcoLotto. KimcoLotto 6D is a daily draw and scheduled to draw a few minutes before our KimcoLotto 4D at 6 p.m. (Cambodia time +7GMT). As usual, our users can watch it live from our website, mobile app, as well as in our Facebook channel.
                            </p>
                            <div class="mt-3 mb-3">
                                <div class="sm-100 w-75 m-auto">
                                    <img src="../assets/images/KIMCO ICONS/6d-how-to-play_en-us.png" class="w-100">
                                </div>
                            </div>
                        </div>
                            <!-- How to win-->
                            
                            <div class="tab-content clearfix d-none" id="how-to-win">
                            <h3 class="mb-3">How to Win?</h3>
                            <p>
                                To win the First prize of our 6D game, you will have to match the six-digit number for the respective drawing. Players who match the six-digit number drawn in the respective day will be entitled to the biggest 6D prize.
                            </p>
                            <div class="mt-3 mb-3">
                                <div class="w-100">
                                    <img src="../assets/images/KIMCO ICONS/6d-how-to-win_en-us.png" class="w-100">
                                </div>
                            </div>
                        </div>
                        <!--how-much-to-win-->
                            
                            <div class="tab-content clearfix d-none" id="how-much-to-win">
                            <h3 class="mb-3">How Much to Win?</h3>
                            <p>
                                If you missed the 1st prize, you can still win if your six digits match with the 'First or Last' 5, 4, 3 or 2 digits of the first prize. Below are the prize tiers of our KimcoLotto 6D game:
                            </p>
                            <div class="mt-3 mb-3">
                                <div class="w-100">
                                    <div class="mt-3 mb-3">
                                        <div class="round-solid-border p-3 w-100">
                                            <div class="overflow-auto">
                                                <table class="tbl-5 text-center mod-6d-long">
                                                    <tbody><tr class="header-6d">
                                                        <td style="width:25%"><span>Prize Tier</span></td>
                                                        <td style="width:*"><span>6D Result</span></td>
                                                        <td style="width:25%"><span>Prize</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="round-span-themered p-1 w-100">1st Prize</span></td>
                                                        <td>
                                                            <div class="box-6d-rounded ">
                                                                <table class="tbl-box-6d">
                                                                    <tbody><tr class="c-themered">
                                                                        <td>3</td>
                                                                        <td>0</td>
                                                                        <td>1</td>
                                                                        <td>8</td>
                                                                        <td>4</td>
                                                                        <td>4</td>
                                                                    </tr>
                                                                </tbody></table>
                                                            </div>
                                                        </td>
                                                        <td><b>RM 150,000</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="round-span-themered p-1 w-100">2nd Prize</span></td>
                                                        <td>
                                                            <table class="clean-tbl">
                                                                <tbody><tr>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td>3</td>
                                                                                    <td>0</td>
                                                                                    <td>1</td>
                                                                                    <td>8</td>
                                                                                    <td>4</td>
                                                                                    <td class="clr"></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                    <td><div class="or-mid">or</div></td>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td class="clr"></td>
                                                                                    <td>0</td>
                                                                                    <td>1</td>
                                                                                    <td>8</td>
                                                                                    <td>4</td>
                                                                                    <td>4</td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody></table>
                                                        </td>
                                                        <td><b>RM 5,000</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="round-span-themered p-1 w-100">3rd Prize</span></td>
                                                        <td>
                                                            <table class="clean-tbl">
                                                                <tbody><tr>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td>3</td>
                                                                                    <td>0</td>
                                                                                    <td>1</td>
                                                                                    <td>8</td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                    <td><div class="or-mid">or</div></td>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td>1</td>
                                                                                    <td>8</td>
                                                                                    <td>4</td>
                                                                                    <td>4</td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody></table>
                                                        </td>
                                                        <td><b>RM 500</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="round-span-themered p-1 w-100">4th Prize</span></td>
                                                        <td>
                                                            <table class="clean-tbl">
                                                                <tbody><tr>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td>3</td>
                                                                                    <td>0</td>
                                                                                    <td>1</td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                    <td><div class="or-mid">or</div></td>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td>8</td>
                                                                                    <td>4</td>
                                                                                    <td>4</td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody></table>
                                                        </td>
                                                        <td><b>RM 50</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td><span class="round-span-themered p-1 w-100">5th Prize</span></td>
                                                        <td>
                                                            <table class="clean-tbl">
                                                                <tbody><tr>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td>3</td>
                                                                                    <td>0</td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                    <td><div class="or-mid">or</div></td>
                                                                    <td>
                                                                        <div class="box-6d-rounded inline-block">
                                                                            <table class="tbl-box-6d">
                                                                                <tbody><tr>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td class="clr"></td>
                                                                                    <td>4</td>
                                                                                    <td>4</td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody></table>
                                                        </td>
                                                        <td><b>RM 5</b></td>
                                                    </tr>
                                                </tbody></table>
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
        </div>
    </div>
    <!--Scripts-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
<%--    <script src="../Scripts/header.js"></script>--%>
    <script>
        let nav1 = document.querySelectorAll(".nav-link")[0];
        let nav2 = document.querySelectorAll(".nav-link")[1];
        let nav3 = document.querySelectorAll(".nav-link")[2];
        let nav4 = document.querySelectorAll(".nav-link")[3];
        let div1 = document.querySelector("#what-is-lottery");
        let div2 = document.querySelector("#how-to-play");
        let div3 = document.querySelector("#how-to-win");
        let div4 = document.querySelector("#how-much-to-win");
        nav1.addEventListener("click", function () {
            nav1.classList.remove("active");
            nav2.classList.remove("active");
            nav3.classList.remove("active");
            nav4.classList.remove("active");
            div2.classList.add("d-none");
            div3.classList.add("d-none");
            div4.classList.add("d-none");

            nav1.classList.add("active");
            div1.classList.remove("d-none");
        });
         nav2.addEventListener("click", function () {
            nav1.classList.remove("active");
            nav2.classList.remove("active");
            nav3.classList.remove("active");
             nav4.classList.remove("active");
             div1.classList.add("d-none");
             div3.classList.add("d-none");
             div4.classList.add("d-none");

             nav2.classList.add("active");
             div2.classList.remove("d-none");
        });
         nav3.addEventListener("click", function () {
            nav1.classList.remove("active");
            nav2.classList.remove("active");
            nav3.classList.remove("active");
             nav4.classList.remove("active");
             div1.classList.add("d-none");
             div2.classList.add("d-none");
             div4.classList.add("d-none");

             nav3.classList.add("active");
             div3.classList.remove("d-none");
        });
         nav4.addEventListener("click", function () {
            nav1.classList.remove("active");
            nav2.classList.remove("active");
            nav3.classList.remove("active");
             nav4.classList.remove("active");
             div1.classList.add("d-none");
             div2.classList.add("d-none");
             div3.classList.add("d-none");

             nav4.classList.add("active");
             div4.classList.remove("d-none");
        });
    </script>
</asp:Content>

