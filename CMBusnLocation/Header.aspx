<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="Header.aspx.vb" Inherits="CMBusnLocation_Header" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Header.css" rel="stylesheet">
    <link href="../Css/Header2.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
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
                                <li><a href="#">Home</a></li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Our Games</a>
                                    <ul id="l1" style="display:none;">
                                        
                                        <li><a href="/our-games/4d-lottery-game">KIM LOTTO 4D</a></li>
                                        <li><a href="/our-games/6d-lottery-game">KIM LOTTO 6D</a></li>
                                        <li><a href="/our-games/prize-structure">Prize Structure</a></li>
                                        <li><a href="/our-games/machine-design">Machine Design &amp; Spec</a></li>
                                        <li><a href="/our-games/how-we-draw">How We Draw?</a></li>
                                    </ul>
                                </li>
                                <%--<li class="sub-menu"><a href="#" class="sf-with-ul">Results</a>
                                    <ul style="display: none;">
                                        <li><a href="/results/today">Today Result</a></li>
                                        <li><a href="/results/past">Past Results</a></li>
                                        <li><a href="/results/dragon-jackpot-winner">6+1D Jackpot Winner</a></li>
                                        <li><a href="/results/did-i-win">Did I win?</a></li>
                                        <li><a href="/results/prize-calculator">Prize Calculator</a></li>
                                        <li><a href="/results/statistics">Statistics</a></li>
                                        <li><a href="/results/watchlive/app">Watch Live in GDApp</a></li>
                                        <li><a href="/results/watchlive/fb">Watch Live in FB</a></li>
                                        <li><a href="/results/watchlive/web">Watch Live in Web</a></li>
                                        <li><a href="/results/watchlive/wechat">Watch Live in WeChat</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">Jackpot</a>
                                    <ul style="display: none;">
                                        <li><a href="/jackpot/dragon-jackpot">Dragon Jackpot 6+1D</a></li>
                                        <li><a href="/jackpot/tracker">4D Jackpot Tracker</a></li>
                                        <li><a href="/jackpot/how-it-works">How It Works?</a></li>
                                        <li><a href="/jackpot/calculator">Jackpot Calculator</a></li>
                                        <li><a href="/jackpot/how-to-win">How to Win?</a></li>
                                        <li><a href="/jackpot/sharing-rules">Sharing Rules</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">The Community</a>
                                    <ul style="display: none;">
                                        <li><a href="/community">Connect Us</a></li>
                                        <li><a href="/community/longlong">Long Long Dream Number</a></li>
                                        <li><a href="/community/partner">Partner Program</a></li>
                                        <li><a href="/community/our-videos">Our Videos</a></li>
                                        <li><a href="http://blog.gdlotto.com/" target="_blank">Blog</a></li>
                                    </ul>
                                </li>--%>
                                <li class="sub-menu"><a href="#" class="sf-with-ul">About Us</a>
                                    <ul id="l2" style="display:none;">
                                        <li><a href="/aboutus">About Us</a></li>
                                        <li><a href="/aboutus/long-long">About LONG LONG</a></li>
                                        <li><a href="/aboutus/corporate-value">Our Corporate Value</a></li>
                                        <li><a href="/aboutus/play-responsibility">Play Responsibility</a></li>
                                        <li><a href="/aboutus/protect-yourself">Protect Yourself</a></li>
                                        <li><a href="/aboutus/contact-us">Contact Us</a></li>
                                    </ul>
                                </li>
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
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script src="../Scripts/header.js"></script>

</asp:Content>

