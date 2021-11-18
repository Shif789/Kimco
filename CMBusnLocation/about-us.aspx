<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="about-us.aspx.vb" Inherits="CMBusnLocation_4D" %>

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
            color: /*#c1272d*/ #003032 !important;
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
        /*input {
            border: 0;
            padding: 5px 3px;
            box-shadow: 1px 1px 3px #8080808c;
        }*/
        label {
            font-weight: 500;
        }
        /*label, input {
            display: block;
        }*/
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
            .postcontent, .postcontent.bothsidebar, .sidebar, .col_full, .col_half, .col_one_third, .col_two_third, .col_three_fourth, .col_one_fourth, .col_one_fifth, .col_two_fifth, .col_three_fifth, .col_four_fifth, .col_one_sixth, .col_five_sixth {
                width: 100%;
                margin-right: 0;
                float: none;
                margin-bottom: 50px !important;
            }
            form .col_full, form .col_half, form .col_one_third, form .col_two_third, form .col_three_fourth, form .col_one_fourth, form .col_one_fifth, form .col_two_fifth, form .col_three_fifth, form .col_four_fifth, form .col_one_sixth, form .col_five_sixth {
                margin-bottom: 25px !important;
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
            background-color: #c1272d !important;
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
            background: #c1272d;
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
        h1 > span:not(.nocolor):not(.badge), h2 > span:not(.nocolor):not(.badge), h3 > span:not(.nocolor):not(.badge), h4 > span:not(.nocolor):not(.badge), h5 > span:not(.nocolor):not(.badge), h6 > span:not(.nocolor):not(.badge) {
            color: #c1272d;
        }
        .fancy-title.title-bottom-border h1, .fancy-title.title-bottom-border h2, .fancy-title.title-bottom-border h3, .fancy-title.title-bottom-border h4, .fancy-title.title-bottom-border h5, .fancy-title.title-bottom-border h6 {
            border-bottom: 2px solid #c1272d;
        }

        /*Corporate Value*/
        #corpvalue .heading-block h4, #corpvalue h2 {
            color: #333 !important;
        }
        #corpvalue * {
            font-family: 'Raleway';
        }
        /*Play Responsibility*/
        h2, h3, h4 {
            margin: 0 !important;
        }
        .bg-verylightgray {
            background-color: #f1f2f2 !important;
        }
        .input-2.input-2--bigfont {
            font-size: 1.2rem;
        }
        .input-2 {
            padding: 0.2rem 0.6rem !important;
            font-size: 0.8rem;
            border: 1px solid gray;
            min-width: 180px;
            vertical-align: middle;
            border-radius: 0 !important;
        }
        .btn-1 {
            font-size: 0.7rem;
            border-radius: 30px;
            border: 0;
            padding: 0.3rem 1rem;
            color: white;
            background-color: gray;
            min-width: 100px;
        }
        .btn-1.btn-1-red, .btn-2.btn-2-red, .btn-3.btn-3-red {
            background-color: /*#c1272d*/#003032;
        }
        .btn-3 {
            font-size: 0.8rem;
            border: 0;
            padding: 0.25rem 0.6rem;
            color: white;
            background-color: gray;
            vertical-align: middle;
        }
        .on-hover-pointer:hover {
            cursor: pointer;
        }
        .card-2-contact {
            font-size: 0;
            border-radius: 15px;
        }
        .card-2 {
            box-shadow: 0 0 6px #00000038;
            background-color: white;
        }
        .map_cty.map_cty--id {
            top: 69%;
            left: 27%;
        }
        .map_cty {
            position: absolute;
            width: 17%;
            transition: ease .2s;
        }
        .map_cty.map_cty--my {
            top: 52%;
            left: 25%;
        }
        .map_cty.map_cty--th {
            top: 32%;
            left: 6.5%;
        }
        .map_cty.map_cty--vn {
            top: 21%;
            left: 35%;
        }
        .map_cty.map_cty--cb {
            top: 22%;
            left: 17.5%;
        }
        .map_cty.map_cty--mn {
            left: 8.5%;
            top: 11%;
        }
        .card-2-contact .c2con-img {
            width: 25%;
        }
        .card-2-contact .c2con {
            display: inline-block;
            vertical-align: middle;
            padding: 10px 15px;
        }
        .card-2-contact .c2con-text {
            width: 75%;
            font-size: 1rem;
            height: 100%;
            font-weight: bold;
        }
        .card-2-contact .c2con-img img {
            width: 100%;
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
                                    <ul class="menu-pos-invert" id="l1" style="display:none;">
                                        
                                        <li><a href="4D.aspx">KIM LOTTO 4D</a></li>
                                        <li><a href="6D.aspx">KIM LOTTO 6D</a></li>
                                        <li><a href="prize.aspx">Prize Structure</a></li>
                                        <li><a href="Machine.aspx">Machine Design &amp; Spec</a></li>
                                        <li><a href="How-to-draw.aspx">How We Draw?</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">About Us</a>
                                    <ul class="menu-pos-invert" id="l2" style="display:none;">
                                        <li><a href="about-us.aspx">About Us</a></li>
                                        <li><a href="long-long.aspx">About LONG LONG</a></li>
                                        <li><a href="about-corporate-value.aspx">Our Corporate Value</a></li>
                                        <li><a href="about-play-responsibility.aspx">Play Responsibility</a></li>
                                        <li><a href="about-protect.aspx">Protect Yourself</a></li>
                                        <li><a href="about-contact-us.aspx">Contact Us</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Results</a>
                                    <ul class="menu-pos-invert" id="l3" style="display:none;">
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
                                    <ul class="menu-pos-invert" id="14" style="display:none">
                                        <li><a href="dragonJackpot.aspx">Dragon Jackpot 6+1D</a></li>
                                        <li><a href="/jackpot/tracker">4D Jackpot Tracker</a></li>
                                        <li><a href="/jackpot/how-it-works">How It Works?</a></li>
                                        <li><a href="/jackpot/calculator">Jackpot Calculator</a></li>
                                        <li><a href="/jackpot/how-to-win">How to Win?</a></li>
                                        <li><a href="/jackpot/sharing-rules">Sharing Rules</a></li>
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
        <img src="../assets/images/KIMCO ICONS/onedollaronedream_cover.jpg" class="m-hide img-fluid" />
        <img src="../assets/images/KIMCO ICONS/onedollaronedream_cover_mobile.jpg" class="xl-hide img-fluid" />
        <%--<div class="banner-box-title v-mid">
        <div>
            <span <%--style="color:white; font-size:50px; font-weight:bold; border-bottom:2px solid white; text-shadow:3px 3px 5px #000000" class="d-inline-block text-uppercase mb-2">Contact Us</span>
        </div>
        </div>--%>
    </div>
    <div style="padding:0 0 30px 0">
       <div class="container clearfix p-3">
        <div class="row pt-3">
            <div class="col-6 offset-3 offset-md-0 col-md-3 mb-3">
                <img src="../assets/favicon.png" class="w-100">
            </div>
            <div class="col-md-9 v-mid">
                <h3 class="m-0 c-themered">About Kimco Lottery!</h3>
                <div class="text-justify">
                    Kimco Lottery, or better known as KimcoLotto, the first and biggest live 4 Digits (4D) lottery provider in Asian. Being a leader of Asian’s Lottery provider, KimcoLotto is committed to gives Cambodian the most transparent and secured live lottery game! We exist to change lives, and to give everyone a chance to release their dreams.  Our games are fun and exciting, and continuously to maintain player's welfare, high standards and honesty in our DNA.<br><br>

                    We at KimcoLotto are committed to create the best live 4D lottery product for our Asian players. To  ensure our gaming responsibilities, every single result is generated live and openly from our main casino lobby, and it's transparent to everyone who visiting our casino resort, or simply turn on your smartphone to watch our live streaming results drawing.<br><br>

                    KimcoLotto is exploring every possibilities in modernizing the convention lottery business in more innovative and creative way, as to meet the higher demand of entertainment to change their lives!
                </div>
            </div>
        </div>

        <div class="row pt-5">
            <div class="col-md-6 mb-3">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-6 offset-3 offset-md-0 col-md-3 pr-0 pl-md-2 pl-0">
                            <img src="../assets/images/KIMCO ICONS/profit.gif" class="w-100">
                        </div>
                        <div class="col-md-9 v-mid">
                            <b>Our Vision:</b>
                            <span class="c-gray">
                                A world-class Internet streaming Numbers Forecast Totalizator provider in Cambodia.
                            </span>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-md-6 mb-3">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-6 offset-3 offset-md-0 col-md-3 pr-0 pl-md-2 pl-0">
                            <img src="../assets/images/KIMCO ICONS/bulleye.gif" class="w-100">
                        </div>
                        <div class="col-md-9 v-mid">
                            <b>Our Mission:</b>
                            <span class="c-gray">
                                We’re providing safe, modern, and transparent lottery business to Cambodia.
                            </span>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="pt-4">
            <div class=" text-center">
                <h2 class="m-0 text-dark">Innovative design</h2>
                <span class="c-gray">Most creative lottery machines in the market</span>
            </div>

            <div class="row text-center">
                <div class="col-md-4  pt-2">
                    <img src="../assets/images/KIMCO ICONS/WebUIv2-48.png" class="w-100">
                    <div class="pt-2">
                        Live streaming of lottery drawing directly from our casino Kimco Resort in Cambodia
                    </div>
                </div>
                <div class="col-md-4  pt-2">
                    <img src="../assets/images/KIMCO ICONS/WebUIv2-49.png" class="w-100">
                    <div class="pt-2">
                        Granted the license to operate gaming tables, slot machines, and online gaming activates
                    </div>
                </div>
                <div class="col-md-4  pt-2">
                    <img src="../assets/images/KIMCO ICONS/WebUIv2-50.png" class="w-100">
                    <div class="pt-2">
                        Locating at the main lobby of casino, 100% transparency to the public
                    </div>
                </div>
            </div>
        </div>

        <div class="pt-5">
            <h2 class="m-0 text-dark text-center">Localization Strategy</h2>

            <div class="row pt-3">
                <div class="col-8 offset-2 offset-md-0 col-md-4 mb-3">
                    <img src="../assets/images/KIMCO ICONS/WebUIv2-51.png" class="w-100">
                </div>
                <div class="col-md-8">
                    <div class="text-justify text-md-left">
                        In order to serve our clients better, Kimco strives to build its own dedicated local business and technical team across ASIA countries. Localization of business model has always been the top priority for lottery business, hence we are providing full customization products and technical requirements that best suits your existing business!<br>
                        <br>

                        Apart from this, we also provide the most localized payment channel to facilitate your business credit and user winning payment.
                        <br>
                        <br>

                        Currently, we have established 4 local teams segregated in Malaysia, Thailand, Indonesia and Vietnam. Taking this opportunity, we thank you for showing your interest in Kimco Lottery. For further questions pertaining to our organizations and products, please don’t hesitate to contact us using the appropriate contacts information.
                    </div>
                </div>
            </div>
        </div>

    </div> 
       
    </div>

    <div style="padding:0 0 30px 0; background-color:#f1f2f2">
        <div class="container clearfix p-3 pt-5">
        <div class="row pt-3">
            <div class="col-md-4 mb-3 mb-md-0">
                <img src="../assets/images/KIMCO ICONS/WebUIv2-53.png" class="w-100">
            </div>
            <div class="col-md-8 v-mid">
                <h3 class="m-0 c-themered">Why KimcoLotto?</h3>
                <div class="text-justify text-md-left">
                    We exist to make a greater lottery game in changing the live for Asian!  Our lifetime slogan - One Dollar One Dream! Every day KimcoLotto gives everyone in Asian a chance to dream.<br><br>

                    As per today, we have handling out millions dollars of prizes to our winners, and help millions of peoples to realise their dream.  By simply playing KimcoLotto games, you help support thousands of grants for not-for-profit organisations and local government authorities, as well as health, sports and arts sectors through our statutory funding.

                </div>
            </div>
        </div>

        <div class="row pt-5 text-center">

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/certificate.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>LICENSED LOTTERY PROVIDER IN CAMBODIA!  </b><br>
                            <span class="c-gray">KimcoLotto, wholly owned by Dai Long Company Limited, a licensed casino located in Chreythom, Kandal province, Kingdom of Cambodia, and having complied with all Casino Zoning Requirements to operate lottery betting, as well as gaming tables, slot machines, online gaming and etc.</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--earth.gif--%>icons8-globe.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>THE FIRST &amp; LARGEST LIVE 4D OPERATOR IN ASEAN</b><br>
                            <span class="c-gray">Every day we help MILLIONS of people across the Asian countries to achieve their dreams! Hence, we are the largest 4D operator in term of daily active users. Of course, we are the FRIST one to digitalise the conventional way of drawing 4D games and make thousands of our audience to become the judges of our game. We broadcast and transparent everything online. </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--crowd.gif--%>icons8-people.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>BUILD THE BEST-OF-THE BEST FROM CAMBODIA!</b><br>
                            <span class="c-gray">KimcoLotto is committed to put Cambodia on the map of global lottery! We are here to make the most creative, transparent, and secured lottery game. Today, KimcoLotto has recognised as one of the most creative and innovative lottery providers in Asia. </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--uncheck.gif--%>icons8-trust.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>100% REAL TIME &amp; TRANSPARENT RESULT</b><br>
                            <span class="c-gray">Beside our games are fun and exciting, but maintaining the highest transparency and honesty is always our key to success. It's our policy to convince every online user, and to making sure our lottery result is 100% transparent and real time to our users. </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--receive.gif--%>icons8-money.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>UNIFIED PAYOUT IN ALL COUNTRIES  </b><br>
                            <span class="c-gray">To ensure the fairness to all our players in different countries with different currency, we at KimcoLotto is maintaining a fixed winning payout rate in each different country. And due to each country’s one dollar has different definition as compared to our default US dollar, and we will fix the payout for each country, and to ensure all our agents will maintain the rate for their players.  </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/group.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>CHARITY IS OUR BUSINESS TOO!</b><br>
                            <span class="c-gray">At KimcoLotto, making profit is not what we care the most, but giving back to our social is the most we care! We support thousands of grants for not-for-profit organisations and local government authorities, as well as health, sports and arts sectors through our statutory funding. </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--hacker.gif--%>icons8-phishing.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>ZERO LOTTERY SCAM</b><br>
                            <span class="c-gray">KimcoLotto is committed to conducting all of our business and drawing result with the highest level of ethics and integrity. To uphold this commitment of zero-tolerance approach to fraud, every drawing process are required adherence to our Anti-Fraud Policy. The policy is designed to aid in the prevention, detection and investigation of fraud.  </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 mb-4">
                <div class="card-2 h-100 p-3">
                    <div class="row">
                        <div class="col-12">
                            <img src="../assets/images/KIMCO ICONS/<%--eye.gif--%>icons8-password.gif" class="w-25 sm-50">
                        </div>
                        <div class="col-12">
                            <b>WE CARE ON PLAYERS PRIVACY</b><br>
                            <span class="c-gray">KimcoLotto is committed to ensure all data collected from our players are 100% in protecting mode! GDLotto shall only process our players’ personal data for the purposes of verification procedures. We will protect all personal information in accordance with best business practices and applicable to the Privacy Law of Cambodia.  </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    </div>

    <div style="padding:0 0 30px 0">
    <div class="container clearfix p-3">
        <h2 class="text-center c-themered mb-0">MARKETING MATERIALS</h2>

        <div class="row pt-3 text-center">
            <div class="col-md-4 mb-3">
                <div class="card-2  p-4 pt-5 pb-5">
                    <div class="row">
                        <div class="col-12">
                            <div style="height:250px;" class="v-mid">
                                <img src="../assets/Kimco Lotto bw-New.png" style="max-height:100%">
                            </div>
                        </div>
                    </div>
                </div>
                <h4 class="mt-2 mb-2">
                    Kimco Lotto Logo
                </h4>
                <!--<a href="http://localhost:62020/images/media%20(3).png" download >[Download]</a>-->
                <div class="on-hover btn-1 btn-1-red inline-block" <%--onclick="downloadIMG('/images/gd_lotto_logo.png')"--%>>Download</div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card-2  p-4 pt-5 pb-5">
                    <div class="row">
                        <div class="col-12">
                            <div style="height:250px;">
                                <img src="../assets/images/KIMCO ICONS/gd_lotto_fan_club.png" style="max-height:100%">
                            </div>
                        </div>
                    </div>
                </div>
                <h4 class="mt-2 mb-2">
                    Kimco Lotto Fan Club Logo
                </h4>
                <!--<a href="http://localhost:62020/images/media%20(2).png" download>[Download]</a>-->
                <div class="on-hover btn-1 btn-1-red inline-block" <%--onclick="downloadIMG('/images/gd_lotto_fan_club.png')"--%>>Download</div>
            </div>

            <div class="col-md-4 mb-3">
                <div class="card-2  p-4 pt-5 pb-5">
                    <div class="row">
                        <div class="col-12">
                            <div style="height:250px;" class="v-mid">
                                <img src="../assets/images/KIMCO ICONS/gd_point_logo.png" style="max-height:100%">
                            </div>
                        </div>
                    </div>
                </div>
                <h4 class=" mt-2 mb-2">
                    Kimco Point Logo
                </h4>
                <!--<a href="http://localhost:62020/images/media%20(3).png" download>[Download]</a>-->
                <div class="on-hover btn-1 btn-1-red inline-block" <%--onclick="downloadIMG('/images/gd_point_logo.png')"--%>>Download</div>
            </div>
        </div>
    </div>
</div>
    <!--Scripts-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script src="../Scripts/header.js"></script>
    <script>
        

    </script>
</asp:Content>

