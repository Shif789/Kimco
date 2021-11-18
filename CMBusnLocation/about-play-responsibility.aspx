<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="about-play-responsibility.aspx.vb" Inherits="CMBusnLocation_4D" %>

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
                                    <ul class="menu-pos-invert" id="l3" style="display: none;">
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
                                    <ul class="menu-pos-invert" id="l4" style="display: none;">
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
        <img src="../assets/images/KIMCO ICONS/about-us-web.jpg" class="m-hide img-fluid" />
        <img src="../assets/images/KIMCO ICONS/about-us-mobile.jpg" class="xl-hide img-fluid" />
        <div class="banner-box-title v-mid">
        <div>
            <span <%--style="color:white; font-size:50px; font-weight:bold; border-bottom:2px solid white; text-shadow:3px 3px 5px #000000"--%> class="d-inline-block text-uppercase mb-2">About Us</span>
        </div>
        </div>
    </div>
    &#xFEFF;
    <div style="padding:0 0 30px 0" id="playresponsibly">
        <div class="container clearfix p-3">
        <h2 class="text-center c-themered mb-0">PLAY RESPONSIBILITY</h2>

        <div class="pt-2">
            <div class="pt-3">
                <h3>Be Responsible!</h3>
                <div>
                    Playing games of chance should be fun! It offers the excitement of taking a risk in order to win. A responsible gamer understands the risk associated with playing games of chance; the risk of losing. To be a responsible gamer, it is essential to set limits for your losses. Playing games of chance is an entertainment cost and should be part of your disposable income. When your “fun” money is exhausted, it’s time to stop playing.
                </div>
            </div>

            <div class="pt-3">
                <h3>Know When Not to Gamble</h3>
                <div>
                    Sometimes it’s just not a good idea to gamble.
                    <br>
                    If you find yourself in the following situations or experiencing these emotions, don’t do it.
                    <ul class="pl-4">
                        <li>When in recovery from compulsive/pathological gambling, or from other addictions such as chemical or alcohol dependency.</li>
                        <li>When gambling is going to interfere with your work or personal responsibilities.</li>
                        <li>When the form of gambling is illegal.</li>
                        <li>When trying to make a “quick buck” or to make up for gambling loss.</li>
                        <li>When feeling lonely, angry, depressed or under stress.</li>
                        <li>When coping with the death or the loss of a loved one.</li>
                        <li>When trying to solve personal or family problems.</li>
                    </ul>
                </div>
            </div>

            <div class="pt-3">
                <h3>Know When There’s a Problem</h3>
                <div>
                    Problem gambling, also known as compulsive or pathological gambling, is recognized as a disease and a sickness. The American Psychiatric Association defines pathological gambling as “an impulse control disorder that is a chronic and progressive mental illness.” The Diagnostic and Statistical Manual of Mental Disorders offers some clues to help ascertain whether or not a person may have a problem with gambling. If a person has experienced at least five of the following criteria, he or she should consider seeking professional mental health services.

                    <ul class="pl-4 pt-3">
                        <li>Preoccupation: When a person has consistent or frequent thoughts about the act of gambling.</li>
                        <li>Tolerance: Similar to drug tolerance, the person requires larger or more frequent wagers to experience a “rush.”</li>
                        <li>Withdrawal: When a person makes attempts to cease or reduce gambling that typically results in restlessness or irritability.</li>
                        <li>Escape: When only gambling improves a person’s mood, and helps him/her escape from their problems.</li>
                        <li>Chasing: When a person tries to “chase” winnings in order to pay off gambling losses.</li>
                        <li>Lying: When a person hides the extent of his or her gambling by lying to family, friends and therapists.</li>
                        <li>Stealing: When a person steals in order to feed the gambling addiction.</li>
                        <li>Loss of Control: When a person is unable to control, reduce or stop gambling.</li>
                        <li>Illegal Acts: When a person engages in activities such as theft, embezzlement, fraud, forgery or writing bad checks in order to get gambling money or to recover from gaming losses.</li>
                        <li>Risking Relationships: When a person disregards relationships with significant others, employment, and other associations in favor of gambling.</li>
                        <li>Bailout: When a person looks to others for financial assistance to bail them out of their gaming losses.</li>
                    </ul>
                </div>
            </div>

            <div class="pt-3">
                <h3>Know Our Commitment</h3>
                <div>
                    We know that gaming is detrimental and unhealthy for some people and we’re committed to promoting responsible gaming. The Kimco Lottery and its employees pledge to make responsible gaming practices an integral part of how we conduct our business.
                </div>
                <div class="pt-3">
                    • <b>Problem Gambling Coalition of Kimco:</b> We provide funding support for the Problem Gambling Coalition of Kimco’s website. The Coalition has a 24-hour hotline that allows callers to speak to live, trained counselors. We are active participants on the Board and meet monthly to promote problem gambling resources, host educational sessions and provide funds to increase program awareness.
                </div>
                <div class="pt-3">
                    • <b>Lottery Advertising and Marketing:</b> As part of our commitment, all Lottery products include a “Play Responsibly” message along with a 24-hour hotline telephone number. This information is included on our point-of-sale materials and in our advertising messages. Our advertising is never placed in media outlets that are specifically oriented towards minors and we never feature anyone who is or appears to be below the legal age to participate in Lottery games.
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
        

    </script>
</asp:Content>

