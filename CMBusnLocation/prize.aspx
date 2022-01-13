<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="prize.aspx.vb" Inherits="CMBusnLocation_4D" %>

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
            border-color: #c1272d;
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
        .f-0 {
            font-size: 0;
        }
        img{
            max-width:100%;
        }
        .imagetab.nav-tabs .nav-link img {
            width: 62px;
        }
        .w-20 {
            width: 20%;
        }
        .bg-themered {
            background-color: /*#c1272d*/#003032 !important;
        }
        .txt36 {
            font-size: 36px;
        }
        .txt12 {
            font-size: 12px;
        }
        .inline-block {
            float: none !important;
            display: inline-block !important;
        }
        .m-auto-hori {
            margin: 0 auto;
        }
        /*.slide-tab {
            position: relative;
        }
        .slide-tab .slide-tab--ul {
            list-style: none;
            margin: 0;
            display: flex;
            text-align: center;
            border: 2px solid gray;
            border-radius: 5rem;
        }
        .slide-tab .slide-tab--ul li {
    flex-grow: 1;
    flex-basis: 0;
    overflow: hidden;
    text-overflow: ellipsis;
    padding: 5px;
    white-space: nowrap;
    color: gray;
        }
        .slide-tab .slide-tab--bg {
    position: absolute;
    width: calc(100%/4); 
    height: 100%;
    background: #c1272d;
    top: 0;
    left: 0;
    border-radius: 5rem;
    transition: left 0.35s cubic-bezier(0, 0.81, 0.25, 1.22);
    color: white;
    font-weight: 700;
    padding: 5px;
    cursor: default;
        }*/
        .slide-tab {
            position: relative;
        }

        .slide-tab .slide-tab--ul {
                list-style: none;
                margin: 0;
                display: flex;
                text-align: center;
                border: 2px solid gray;
                border-radius: 5rem;
        }

        .slide-tab .slide-tab--ul li {
            flex-grow: 1;
            flex-basis: 0;
            overflow: hidden;
            text-overflow: ellipsis;
            padding: 5px;
            white-space: nowrap;
            color: gray;
        }

        .slide-tab .slide-tab--ul li a {
                color: gray;
                font-weight: 600;
        }

        .slide-tab .slide-tab--ul li.ui-tabs-active {
            color: white;
        }

    
        .slide-tab .slide-tab--bg {
            position: absolute;
            /* width: calc(100%/4); */
            height: 100%;
            background: /*#c1272d*/#003032;
            top: 0;
            left: 0;
            border-radius: 5rem;
            transition: left 0.35s cubic-bezier(0, 0.81, 0.25, 1.22);
            color: white;
            font-weight: 700;
            padding: 5px;
            cursor: default;
        }

        .slide-tab .slide-tab--bg .slide-tab--bgspn1 {
            display: table;
            table-layout: fixed;
            height: 100%;
            width: 100%;
        }

        .slide-tab .slide-tab--bg .slide-tab--bgspn1 .slide-tab--bgspn2 {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                text-align: center;
                display: table-cell;
                vertical-align: middle;
        }

        .slide-tab-dark .slide-tab .slide-tab--ul {
            border: 2px solid #fff;
        }

        .slide-tab-dark .slide-tab .slide-tab--ul li, .slide-tab-dark .slide-tab .slide-tab--ul li a {
            color: white;
        }

        .slide-tab-dark .slide-tab .slide-tab--bg {
            background: #ae0001;
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
<%--                            <iframe src="kimcoMenu.html" onload="this.before((this.contentDocument.body||this.contentDocument).children[0]);this.remove()"></iframe>--%>
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
            <span class="d-inline-block text-uppercase mb-2">OUR GAMES</span>
        </div>
        </div>
    </div>
    &#xFEFF;
    <div style="padding:0 0 30px 0" id="lotterygame-section">
        <div class="container clearfix p-3">
        <h1 class="m-0 c-themered text-center">PRIZE STRUCTURE</h1>

        <div class="tabs clearfix mt-3" id="tab-9">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="slide-tab mt-3">
                        <ul class="slide-tab--ul clearfix" role="tablist">
                            <li role="tab" tabindex="0" class="ui-tabs-tab  ui-tabs-active" aria-controls="4d-prize" aria-labelledby="ui-id-1" aria-selected="true" aria-expanded="true"><a href="#" role="presentation" tabindex="-1" class="ui-tabs-anchor" id="ui-id-1">4D</a></li>
                            <li role="tab" tabindex="-1" class="ui-tabs-tab" aria-controls="6d-prize" aria-labelledby="ui-id-2" aria-selected="false" aria-expanded="false"><a href="#" role="presentation" tabindex="-1" class="ui-tabs-anchor" id="ui-id-2">6D</a></li>
                        </ul>
                        <div class="slide-tab--bg" style="width: calc(50%); left: 0%;">
                            <span class="slide-tab--bgspn1">
                                <span class="slide-tab--bgspn2">4D</span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab-container text-justify">
                <div class="tab-content clearfix" id="d-prize" aria-labelledby="ui-id-1" role="tabpanel" aria-hidden="false" style="">
                    <div class="f-0 text-center mt-3">
                        <div class="sm-100 w-20 f-sm inline-block pr-1 v-top mb-2">
                            <div class="p-1 bg-themered text-white">
                                <span class="font-weight-bold inline-block txt36 mr-1">4D</span><span class="inline-block txt12">
                                    <br>
                                    BIG
                                </span>
                            </div>
                            <div class="p-2">
                                BIG Package will match the winning 4D number with all 23 winning results, Prize rate for each category is different.
                            </div>
                        </div>
                        <div class="sm-100 w-20 f-sm inline-block pr-1 v-top mb-2">
                            <div class="p-1 bg-themered text-white">
                                <span class="font-weight-bold inline-block txt36 mr-1">4D</span><span class="inline-block txt12">
                                    <br>
                                    SMALL
                                </span>
                            </div>
                            <div class="p-2 c-gray">
                                SMALL Package will only match the winning 4D number with 1st, 2nd, and 3rd Prize numbers. Of course, the winning prize rate will be higher than BIG Package.
                            </div>
                        </div>
                        <div class="sm-100 w-20 f-sm inline-block pr-1 v-top mb-2">
                            <div class="p-1 bg-themered text-white">
                                <span class="font-weight-bold inline-block txt36 mr-1">4D</span><span class="inline-block txt12">
                                    <br>
                                    SINGLE A
                                </span>
                            </div>
                            <div class="p-2">
                                4D A or 4A Package will match all 4 digits of First Prize only.
                            </div>
                        </div>
                        <div class="sm-100 w-20 f-sm inline-block pr-1 v-top mb-2">
                            <div class="p-1 bg-themered text-white">
                                <span class="font-weight-bold inline-block txt36 mr-1">3D</span><span class="inline-block txt12">ABC</span>
                            </div>
                            <div class="p-2 c-gray">
                                3D ABC Package will match the last 3 digits against the 1st, 2nd and 3rd 4D prize number.
                            </div>
                        </div>
                        <div class="sm-100 w-20 f-sm inline-block pr-1 v-top mb-2">
                            <div class="p-1 bg-themered text-white">
                                <span class="font-weight-bold inline-block txt36 mr-1">3D</span><span class="inline-block txt12">A</span>
                            </div>
                            <div class="p-2">
                                3D A Package will match the last 3 digits against the 1st 4D prize number.
                            </div>
                        </div>
                    </div>

                    <div class="mt-3">
                        <span>Choose your currency : </span>
                        <select <%--onchange="replaceCurrency(this.options[this.selectedIndex].text)"--%> class="select-center">
                            <option>USD</option>
                            <option>MYR</option>
                            <option>THB</option>
                            <option>IDR</option>
                            <option>RMB</option>
                            <option>SGD</option>
                        </select>
                    </div>

                    <div class="text-center w-100 overflow-auto mt-3" <%--id="pzstr--%>">
                        <table class="tbl-1">
                            <thead>
                                <tr>
                                    <th>Prize Category</th>
                                    <th>Every <span class="s-cur">USD</span>1 on 4D <br>(BIG)</th>
                                    <th>Every <span class="s-cur">USD</span>1 on 4D <br>(SMALL)</th>
                                    <th>Every <span class="s-cur">USD</span>1 on 4D A <br>(4A)</th>
                                    <th>Every <span class="s-cur">USD</span>1 on 3D <br>(ABC)</th>
                                    <th>Every <span class="s-cur">USD</span>1 on 3D <br>(A)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1st Prize</td>
                                    <td><span class="s-cur">USD</span> 2,500.00</td>
                                    <td><span class="s-cur">USD</span> 3,500.00</td>
                                    <td><span class="s-cur">USD</span> 6,000.00</td>
                                    <td><span class="s-cur">USD</span> 250.00</td>
                                    <td><span class="s-cur">USD</span> 660.00</td>
                                </tr>

                                <tr>
                                    <td>2nd Prize</td>
                                    <td><span class="s-cur">USD</span> 1,000.00</td>
                                    <td><span class="s-cur">USD</span> 2,000.00</td>
                                    <td></td>
                                    <td><span class="s-cur">USD</span> 210.00</td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td>3rd Prize</td>
                                    <td><span class="s-cur">USD</span> 500.00</td>
                                    <td><span class="s-cur">USD</span> 1,000.00</td>
                                    <td></td>
                                    <td><span class="s-cur">USD</span> 150.00</td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td>Starter Prize</td>
                                    <td><span class="s-cur">USD</span> 200.00</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td>Consolation Prize</td>
                                    <td><span class="s-cur">USD</span> 60.00</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-content clearfix d-none" id="s-prize" aria-labelledby="ui-id-2" role="tabpanel" aria-hidden="true">
                    <div class="w-50 sm-100 m-auto-hori">
                        <div class="f-0 text-center mt-3">
                            <div class="w-100 f-sm inline-block pr-1 v-top mb-2">
                                <div class="p-1 bg-themered text-white">
                                    <span class="font-weight-bold inline-block txt36 mr-1">6D</span><span class="inline-block txt12">
                                    </span>
                                </div>
                                <div class="p-2">
                                    To win the First prize of our 6D game, you will have to match the six-digit number for the respective drawing.
                                </div>
                            </div>
                        </div>

                        <div class="mt-3">
                            <span>Choose your currency : </span>
                            <select <%--onchange="replaceCurrency(this.options[this.selectedIndex].text)"--%> class="select-center">
                                <option>USD</option>
                                <option>MYR</option>
                                <option>THB</option>
                                <option>IDR</option>
                                <option>RMB</option>
                                <option>SGD</option>
                            </select>
                        </div>

                        <div class="text-center w-100 overflow-auto mt-3" <%--id="pzstr"--%>>
                            <table class="tbl-1" style="min-width:0;">
                                <thead>
                                    <tr>
                                        <th>Prize Tier</th>
                                        <th>Every <span class="s-cur">USD</span>1 on 6D</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1st Prize</td>
                                        <td><span class="s-cur">USD</span> 150,000</td>
                                    </tr>

                                    <tr>
                                        <td>2nd Prize</td>
                                        <td><span class="s-cur">USD</span> 5,000</td>
                                    </tr>

                                    <tr>
                                        <td>3rd Prize</td>
                                        <td><span class="s-cur">USD</span> 500</td>
                                    </tr>

                                    <tr>
                                        <td>4th Prize</td>
                                        <td><span class="s-cur">USD</span> 50</td>
                                    </tr>

                                    <tr>
                                        <td>5th Prize</td>
                                        <td><span class="s-cur">USD</span> 5</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
       
    </div>
    <!--Scripts-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script src="../Scripts/header.js"></script>
    <script>
        $(document).ready(function () {
            var childs = $(".slide-tab .slide-tab--ul").children().length;
            $(".slide-tab--bg").css("width", "calc(100%/" + childs + ")");

            $(".slide-tab .slide-tab--ul li a").on("click", function () {

                var index = ($(this).parent().index());
                var selectedText = $(this).text();
                //var selectedText = $(this).data("slide-tab-text");

                //alert(childs + "!" + index + "!" + selectedText);
                var leftval = ((1 / childs) * index) * 100;

                $(".slide-tab--bg").css("left", leftval + "%");
                $(".slide-tab--bgspn2").text(selectedText);
            });
        });
        let nav1 = document.querySelectorAll(".ui-tabs-anchor")[0];
        let nav2 = document.querySelectorAll(".ui-tabs-anchor")[1];

        let div1 = document.querySelector("#d-prize");
        let div2 = document.querySelector("#s-prize");

        nav1.addEventListener("click", function () {
            div2.classList.add("d-none");
            
            div1.classList.remove("d-none");
        });
         nav2.addEventListener("click", function () {
            div1.classList.add("d-none");
            
            div2.classList.remove("d-none");
        });

    </script>
</asp:Content>

