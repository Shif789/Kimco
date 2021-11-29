<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="4D.aspx.vb" Inherits="CMBusnLocation_4D" %>

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
            background-color: /*#c1272d*/#003032;
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
            background-color: /*#c1272d*/#003032;
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
            background: #003032;
            border-radius: 30px;
            font-weight: bold;
            display: inline-block;
        }
        .round-span-golden {
            color: white;
            background: #ffd700;
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
            background-color: /*#c1272d*/#003032;
            color: white !important;
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
            background-color: /*#c1272d*/#003032;
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
            background-color: /*#c1272d*/#003032;
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
            <span class="d-inline-block text-uppercase mb-2">OUR GAMES</span>
        </div>
        </div>
    </div>
    &#xFEFF;
    <div style="padding:0 0 30px 0" id="lotterygame-section">
        <div class="container clearfix p-2 p-lg-3">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h2 style="color:#003032" class="m-0 text-center mb-4">
                        <img src="../assets/images/KIMCO ICONS/4d_icon.png" />
                        &nbsp; LOTTERY GAME
                    </h2>
                    <div class="mt-3">
                        <div class="card card-body" style="border-radius:15px">
                        <ul class="nav nav-pills nav-fill m-0 p-0">
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="#">What is 4D Lottery Game?</a>
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
                                <h3 class="mb-3">What is 4D Lottery Game?</h3>
                                <div>
                                4-Digits (abbreviation: 4D) is a popular lottery game in many Asia countries. Players are choosing
                                    <b>any 4-digit number from 0000 to 9999,</b> and we will have total twenty-three (23) set of 4-digit number in the end of the game.
                                    These 23 sets of 4- digit winning numbers are drawn to determine the winners in each draw and if your selected number matches any of 
                                    the winning numbers drawn, a prize is won. KimcoLotto is daily lottery, draw start everyday 6pm at Cambodia time (GMT +7).
                                </div>
                               <hr class="mt-4 mb-4">
                                <b>We have <span class="text-danger">5 different type of prizes to divide all 23 set of 4-digit number,</span> and below is segmentation:</b>
                                <div class="mt-3 mb-3">
                                <div class="round-solid-border p-3 sm-100 w-75 m-auto">
                                    <div class="overflow-auto">
                                        <table class="tbl-5">
                                            <tbody>
                                            <tr style="border-bottom:1px solid #d3d3d3">
                                                <td style="width:40%; text-align:center; padding-right:20px"><span class="round-span-themered p-1 w-100">1st Prize</span></td>
                                                <td>One (1) set number for First Prize</td>
                                            </tr>
                                            <tr style="border-bottom:1px solid #d3d3d3">
                                                <td style="width:40%; text-align:center; padding-right:20px"><span class="round-span-themered p-1 w-100">2nd Prize</span></td>
                                                <td>One (1) set number for Second Prize</td>
                                            </tr>
                                            <tr style="border-bottom:1px solid #d3d3d3">
                                                <td style="width:40%; text-align:center; padding-right:20px"><span class="round-span-themered p-1 w-100">3rd Prize</span></td>
                                                <td>One (1) set number for Third Prize</td>
                                            </tr>
                                            <tr style="border-bottom:1px solid #d3d3d3">
                                                <td style="width:40%; text-align:center; padding-right:20px"><span class="round-span-golden p-1 w-100">Special Prize</span></td>
                                                <td>Ten (10) set number for Special Prizes</td>
                                            </tr>
                                            <tr>
                                                <td style="width:40%; text-align:center; padding-right:20px"><span class="round-span-golden p-1 w-100">Consolation Prize</span></td>
                                                <td>Lastly ten (10) set number for Consolation Prizes</td>
                                            </tr>
                                        </tbody></table>
                                    </div>

                                </div>
                              </div>
                                <hr class="mt-4 mb-4">
                                <b>To make the game more excited, players can choose whether to play the <b class="text-danger">BIG FORECAST</b> or the <b class="text-danger">SMALL FORECAST</b> or both.</b>
                                <div class="row">
                                <div class="col-lg-8 offset-lg-2">
                                    <div class="row text-center">
                                        <div class="col-md-6 mt-3">
                                            <span class="round-span-themered p-1 w-100">BIG FORECAST</span>
                                        </div>
                                        <div class="col-md-6 mt-3">
                                            <span class="round-span-themered p-1 w-100">SMALL FORECAST</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <!-- How to play-->
                            <div class="tab-content clearfix d-none" id="how-to-play">
                            <h3 class="mb-3">How to Play?</h3>
                            There are various ways of playing the 4D Game. But they all involve the following 3 steps:
                            <div class="mt-3 mb-3">
                                <div class="round-solid-border p-3 inline-block">
                                    <table class="tbl-6 w-100 m-hide">
                                        <tbody><tr>
                                            <td>1. Pick a 4D Number or let our computer randomly pick one for you.</td>
                                            <td>2. Decide on whether to play the Big Forecast or Small Forecast or both.</td>
                                            <td>3. Decide on the bet amount for each Forecast chosen.</td>
                                        </tr>

                                        <tr class="text-center">
                                            <td><img class="img-fluid" src="../assets/images/KIMCO ICONS/hp1.png"></td>
                                            <td><img class="img-fluid" src="../assets/images/KIMCO ICONS/hp2.png"></td>
                                            <td><img class="img-fluid" src="../assets/images/KIMCO ICONS/hp3.png"></td>
                                        </tr>
                                    </tbody></table>

                                    <table class="tbl-6 w-100 xl-hide">
                                        <tbody><tr>
                                            <td>
                                                1. Pick a 4D Number or let our computer randomly pick one for you.
                                                <div class="mt-2 mb-2">
                                                    <img class="img-fluid" src="../assets/images/KIMCO ICONS/hp1.png">
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                2. Decide on whether to play the Big Forecast or Small Forecast or both.
                                                <div class="mt-2 mb-2">
                                                    <img class="img-fluid" src="../assets/images/KIMCO ICONS/hp2.png">
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                3. Decide on the bet amount for each Forecast chosen.
                                                <div class="mt-2 mb-2">
                                                    <img class="img-fluid" src="../assets/images/KIMCO ICONS/hp3.png">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody></table>
                                </div>
                            </div>
                            Below are 4 different ways of playing the 4D game.
                            <ol class="gd-list mt-3">
                                <li>
                                    <div class="pl-5">
                                        <b>STRAIGHT BET</b><br>

                                        If you have your own favorite 4D Numbers that are special to you, you should play Straight Bet. Just select your favourite 4D Numbers and decide whether you want to play the Big Forecast or Small Forecast or both and, for each of the Forecast chosen, decide on the bet amount.
                                    </div>
                                    <hr>
                                </li>

                                <li>
                                    <div class="pl-5">
                                        <b>IBOX BET - PERMUTATION BET</b><br>
                                        <div>
                                            When you pick a 4D Number and play iBox Bet or Permutation Bet, you cover all possible permutations of the 4D Number you picked.
                                        </div>

                                        <div class="mt-3 mb-3 round-dotted-border p-4">
                                            <div class="row">
                                                <div class="col-md-6 v-mid mb-2">
                                                    <span class="c-themered">
                                                        <b>For example,</b> if you play Permutation Bet on 1133, you cover 1133, 1313, 1331, 3131, 3311, and 3113. Total permutation is <b>6 times, or 6 division.</b>
                                                    </span>
                                                </div>
                                                <div class="col-md-6">
                                                    <img src="../assets/images/KIMCO ICONS/1133_red_full.png" class="w-100">
                                                </div>
                                            </div>

                                        </div>

                                        <div>
                                            The number of possible permutations for a given 4D Number depends on the number of unique digits in the 4D Number as shown in the table below.
                                        </div>
                                        <div class="w-100 overflow-auto mt-2 font-weight-normal">
                                            <table class="tbl-1 text-center mb-0">
                                                <thead>
                                                    <tr>
                                                        <th style="width:40%">NUMBER OF UNIQUE DIGITS IN THE 4D </th>
                                                        <th>NO. OF PERMUTATIONS</th>
                                                        <th>MINIMUM INVESTMENT</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Where all 4 digits are unique e.g. 1234</td>
                                                        <td>24</td>
                                                        <td>USD24</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Where 2 of the 4 digits are the same e.g. 1123</td>
                                                        <td>12</td>
                                                        <td>USD12</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Where there are 2 unique pairs of digits e.g. 2727</td>
                                                        <td>6</td>
                                                        <td>USD6</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Where 3 of the 4 digits are the same e.g. 3331</td>
                                                        <td>4</td>
                                                        <td>USD4</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <hr>
                                </li>
                                <li>
                                    <div class="pl-5">
                                        <b>ROLL BET</b><br>
                                        <span>Rolling the front or the 1st digit of your 4D Number to generate a set of ten different 4D Numbers that are different only by the 1st digit.</span>

                                        <div class="mt-3 mb-3 round-dotted-border p-4">
                                            <div class="row">
                                                <div class="col-md-6 v-mid mb-2">
                                                    <span class="c-themered">
                                                        For example, <b class="hlight">Roll-Front of R123</b> will generate 0123, 1123, 2123, 3123, 4123, 5123, 6123, 7123, 8123 and 9123. Below is an example of the 2 tickets generated from a Roll-Front Bet.
                                                    </span>
                                                </div>
                                                <div class="col-md-6">
                                                    <img src="../assets/images/KIMCO ICONS/r123_red_full.png" class="w-100">
                                                </div>
                                            </div>

                                        </div>

                                        <span>
                                            Rolling the back or the 4th digit of your 4D Number will also generate a set of ten different 4D Numbers that are different only by the 4th digit.
                                        </span>

                                        <div class="mt-3 mb-3 round-dotted-border p-4">
                                            <div class="row">
                                                <div class="col-md-6 v-mid mb-2">
                                                    <span class="c-themered">
                                                        For example, <b class="hlight">Roll-Back of 123R</b> will generate 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238 and 1239.
                                                    </span>
                                                </div>
                                                <div class="col-md-6">
                                                    <img src="../assets/images/KIMCO ICONS/123r_red_full.png" class="w-100">
                                                </div>
                                            </div>
                                        </div>

                                        <span>
                                            The <b class="hlight">minimum investment for a Roll Bet is RM10</b> as it is equivalent to 10 individual bets.
                                        </span>
                                    </div>
                                    <hr>
                                </li>
                                <li>
                                    <div class="pl-5">
                                        <b>LUCKY PICK BET</b><br>
                                        <span>
                                            If you do not have any personal favourite numbers, you can select to play on our Lucky Pick bet which allows our system to randomly generate 4D Numbers for you. You never know! They may just be your lucky numbers! On the right is an example of a Lucky Pick Bet ticket.
                                        </span>
                                        <br><br>
                                        <span>
                                            When playing the 4D game, whether you are playing the Big Forecast or Small Forecast, you may try the following ways to cover more 4D Numbers to give you a better chance of winning.
                                        </span>
                                    </div>
                                </li>
                            </ol>
                        </div>
                            <!-- How to win-->
                            <div class="tab-content clearfix d-none" id="how-to-win">
                            <h3 class="mb-3">How to Win?</h3>
                            To make our game more excited, there are 2 types of 4D forecast method when playing our 4D game, you can choose to play the <b>Big Forecast (BIG)</b> or the <b>Small Forecast (SMALL).</b>
                            <div class="round-solid-border p-4 mt-3 text-center">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div>
                                            <span class="round-span-redborder w-75 sm-100 p-2">BIG Forecast</span>
                                        </div>
                                        <div class="mt-3 f-sm">
                                            Big Forecast – This is the most demanding and safest forecast method in 4D, as your forecast is <b>applicable to all total of 23 winning numbers across all 5 different prize categories</b> <br>
                                            (1st Prize, 2nd Prize, 3rd Prize, Special Prize, and Consolation Prize).
                                        </div>

                                        <div class="row f-sm mt-3">
                                            <div class="col-md-12 mb-3">
                                                <span class="round-span-themered w-50 sm-100 p-1">1st Prize</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-themered w-100 p-1">2nd Prize</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-themered w-100 p-1">3rd Prize</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-golden w-100 p-1">Special Prizes</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-golden w-100 p-1">Consolation Prizes</span>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div>
                                            <span class="round-span-redborder w-75 sm-100 p-2">SMALL Forecast</span>
                                        </div>
                                        <div class="mt-3 f-sm">
                                            Small Forecast – This forecast method is designed to aim the smaller <b>coverage over the last 3 biggest prizes – the 1st, 2nd and 3rd prize only.</b> Of course, you will win more and get much higher prize as compared to Big Forecast.
                                        </div>

                                        <div class="row f-sm mt-3">
                                            <div class="col-md-12 mb-3">
                                                <span class="round-span-themered w-50 sm-100 p-1">1st Prize</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-themered w-100 p-1">2nd Prize</span>
                                            </div>

                                            <div class="col-md-6 mb-3 pr-md-0">
                                                <span class="round-span-themered w-100 p-1">3rd Prize</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--how-much-to-win-->
                            <div class="tab-content clearfix d-none" id="how-much-to-win" style="">
                            <h3 class="mb-3">How Much to Win?</h3>
                            <b>4D Games Packages:</b>
                            <div class="mt-2">
                                Under 4D game, we have 4 different betting packages, and we have divided the package into BIG, SMALL and 3D packages:
                            </div>
                            <div class="mt-3 mb-3">
                                <div class="round-solid-border p-3 inline-block w-100 text-center">
                                    <table class="tbl-6 w-100 m-hide f-sm">
                                        <tbody><tr class="text-center">
                                            <td style="width:25%"><span class="round-span-redborder w-75 sm-100 p-1">BIG Package</span></td>
                                            <td style="width:25%"><span class="round-span-redborder w-75 sm-100 p-1">SMALL Package</span></td>
                                            <td style="width:25%"><span class="round-span-redborder w-75 sm-100 p-1">3D Package</span></td>
                                            <!--<td width="25%"><span class="round-span-redborder w-75 sm-100 p-1">2D Package</span></td>-->
                                        </tr>

                                        <tr class="text-center">
                                            <td class="v-top"><b>BIG Package</b> will match the winning 4D number with all 23 winning results, Prize rate for each category is different.</td>
                                            <td class="v-top"><b>SMALL Package</b> will only match the winning 4D number with 1st, 2nd, and 3rd Prize numbers.  Of course, the winning prize rate will be higher than BIG Package.</td>
                                            <td class="v-top"><b>3D Package</b> will match the last 3 digits against the 1st 4D prize number.</td>
                                            <!--<td class="v-top"><b>2D Package</b> will match the last 2 digits against the 1st 4D prize number.</td>-->
                                        </tr>
                                    </tbody></table>

                                    <div class="xl-hide">
                                        <div>
                                            <div><span class="round-span-redborder sm-100 w-75 p-1">BIG Package</span></div>
                                            <div class="mt-3"><b>BIG Package</b> will match the winning 4D number with all 23 winning results, Prize rate for each category is different.</div>
                                            <hr>
                                        </div>

                                        <div>
                                            <div><span class="round-span-redborder sm-100 w-75 p-1">SMALL Package</span></div>
                                            <div class="mt-3"><b>SMALL Package</b> will only match the winning 4D number with 1st, 2nd, and 3rd Prize numbers.  Of course, the winning prize rate will be higher than BIG Package.</div>
                                            <hr>
                                        </div>

                                        <div>
                                            <div><span class="round-span-redborder sm-100 w-75 p-1">3D Package</span></div>
                                            <div class="mt-3"><b>3D Package</b> will match the last 3 digits against the 1st 4D prize number.</div>
                                        </div>

                                        <!--<div>
                    <div><span class="round-span-redborder sm-100 w-75 p-1">2D Package</span></div>
                    <div class="mt-3"><b>2D Package</b> will match the last 2 digits against the 1st 4D prize number.</div>
                </div>-->
                                    </div>

                                </div>
                            </div>
                            <div>
                                Learn more about our <a href="#" style="color:#bc1020; text-decoration:none"><b>Prize Structure</b></a>.
                            </div>
                            <div>
                                <%--<iframe src="/content/games/howmuchtowin" class="w-100 mt-3" onload="resizeIframe(this)" scrolling="no" id="hmtwin" style="height: 1375px;"></iframe>--%>
                                <div class="win" id="win">
        <div class="text-center win-head p-3">
            <h4 class="text-white">How much can I win?</h4>
        </div>
        <div class="win-body">
            <div class="win-content win-left p-3">
                Get a quick estimate of your investments and winnings when you play 4D Classic!<br>
                <br>

                <div class="mb-2">
                    <label>4D Number</label>
                    <input id="number" pattern="\d*" required="" maxlength="4" minlength="4">
                </div>

                <div class="mb-2">
                    <label>Currency</label>
                    <div id="cur_selection">
                        <div class="win-cur selected" data-currency="1">USD</div>
                        <div class="win-cur" data-currency="4">MYR</div>
                        <div class="win-cur" data-currency="30">THB</div>
                        <div class="win-cur" data-currency="14000">IDR</div>
                        <div class="win-cur" data-currency="7">RMB</div>
                    </div>
                </div>

                <div class="mb-2">
                    <label>Play Type</label>
                    <div id="type_selection">
                        <div class="win-type selected" data-typeval="str" data-totalnum="1">Straight</div>
                        <div class="win-type" data-typeval="perm" data-totalnum="perm">Permutation</div>
                        <div class="win-type" data-typeval="roll" data-totalnum="10">Roll</div>
                        <div class="win-type" data-typeval="ibox" data-totalnum="perm">I-Box</div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6 mb-2 ">
                        <label>Big</label>
                        <input id="big" type="number" step="0.01" required="" max="100" value="1">
                    </div>
                    <div class="col-6 mb-3 pl-0">
                        <label>Small</label>
                        <input id="small" type="number" step="0.01" required="" max="100" value="1">
                    </div>
                </div>

                <div class="text-center mt-2 mb-2">
                    <button type="submit" class="btn-calc p-2">Calculate</button>
                </div>
            </div>
            <div class="win-content win-right p-3">
                <div class="win-title">
                    Results
                </div>
                <div class="mb-3">
                    <table class="win-tbl1">
                        <tbody><tr>
                            <td style="width:70%">Total No. of 4D Numbers</td>
                            <th id="totalnum">1</th>
                        </tr>
                        <tr>
                            <td>Total Cost</td>
                            <th id="totalcost">USD0</th>
                        </tr>
                    </tbody></table>
                </div>
                <div class="win-title">
                    How much can you win?
                </div>
                <div class="win-sub">
                    These are your potential winnings, based on your play amount and the prize that your number wins.
                </div>
                <div class="mt-2" style="overflow-x: auto;">
                    <table class="win-tbl2">
                        <tbody><tr>
                            <td>1st Prize</td>
                            <td id="totalfirst">USD0</td>
                            <td id="firstbigsmall">BIG USD0<br>
                                SMALL USD0
                            </td>
                        </tr>

                        <tr>
                            <td>2nd Prize</td>
                            <td id="totalsecond">USD0</td>
                            <td id="secondbigsmall">BIG USD0<br>
                                SMALL USD0
                            </td>
                        </tr>

                        <tr>
                            <td>3rd Prize</td>
                            <td id="totalthird">USD0</td>
                            <td id="thirdbigsmall">BIG USD0<br>
                                SMALL USD0
                            </td>
                        </tr>

                        <tr>
                            <td>Special Prize</td>
                            <td id="totalspe">USD0</td>
                            <td></td>
                        </tr>

                        <tr>
                            <td>Consolation Prize</td>
                            <td id="totalcon">USD0</td>
                            <td></td>
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
    <script src="../Scripts/header.js"></script>
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

