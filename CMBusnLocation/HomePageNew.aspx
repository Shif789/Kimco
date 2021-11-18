<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="HomePageNew.aspx.vb" Inherits="CMBusnLocation_HomePageNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="Server">
    
    <%--<form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>--%>
        <nav class="navbar navbar-light bg-light navbar-expand-md navbar-expand-lg fixed-top">
      <div class="container">
        <a href="HomePageNew.aspx" class="navbar-brand">Home</a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="points.aspx">Points</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cash.aspx">Cash</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pointsTransfer.aspx">Transfer Points</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cashWithdraw.aspx">Cash Withdraw</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="enterGames.aspx">Enter Games</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="ticket.aspx">Ticket</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="package.aspx">Package</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="results.aspx">Result</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="downline.aspx">Downline</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="sales.aspx">Sales</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="settings.aspx">Settings</a>
            </li>
            
          </ul>
          <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                 D Wong
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Logout</a></li>
             </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
        <!-- Home Section -->
        <br />
        <br />
        
          <div class="container my-3 my-md-5">
              <div class="d-flex justify-content-start flex-nowrap flex-md-nowrap align-items-center">
                 <%-- <div class="card card-body shadow px-1 py-2 border-0 mr-1" style="height:55px; border-radius:15px">
                      <a href="#" class="text-reset text-truncate">
                          <div class="d-flex justify-content-start flex-nowrap flex-md-nowrap align-items-center">
                              <i class="far fa-bell text-danger"></i>
                                    <small><b>News & Bonus</b>
                                        <br />
                                        FMCO Announcer
                                    </small>
                          </div>
                      </a>
                  </div>
                  <div class="card card-body shadow p-2 py-2 border-0 ml-1 bg-dark" style="height:55px; border-radius:15px">
                      <a href="#" class="mx-auto my-auto">
                          <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/android-download-white-c64fcaefbdc8a5e537c19c754aaa352a.svg" class="img-fluid" />
                      </a>
                  </div>--%>
                  <div class="mr-auto">
                   <a href="#" class=""><i class="fas fa-comment-dots text-danger fa-2x"></i>
                       <%--<img src="../assets/images/KIMCO ICONS/ChatIcon.png" class="rounded mx-auto mt-auto img-fluid" style="width:50px"/>--%></a>
               </div>
                  <div class="ml-auto">
                   <a href="news.aspx" class=""><i class="fas fa-bell text-danger fa-2x"></i>
                       <%--<img src="../assets/images/KIMCO ICONS/NotificationIcon.png" class="rounded mx-auto mt-auto img-fluid" style="width:50px"/>--%></a>
               </div>
              </div>
         </div>
            <!-- KPI SECTION -->
         <div class="container my-3">
             <div class="card shadow border-0 p-2" style="border-radius:15px">
                 <a href="#" class="text-reset">
                     <div class="d-flex justify-content-between align-items-center">
                         <div class="px-1">
                             <small>
                                 <span class="d-block"><strong>KPI</strong></span>
                                 <span class="d-block">APR</span>
                             </small>
                         </div>
                         <div class="px-2 border-left">
                             <small>
                                 <span class="d-block">Sales:</span>
                                 <span class="d-inline-block" style="font-size:13px"><strong>0</strong></span>
                             </small>
                         </div>
                         <div class="px-2 border-left">
                             <small>
                                 <span class="d-block">Bonus:</span>
                                 <span class="d-inline-block" style="font-size:13px"><strong>0.00</strong></span>
                             </small>
                         </div>
                         <div class="px-2 border-left">
                             <small>
                                 <span class="d-block">Comission</span>
                                 <span class="d-inline-block" style="font-size:13px"><strong>0 pts</strong></span>
                             </small>
                         </div>
                         <div class="px-1">
                             <small><i class="fas fa-chevron-right"></i></small>
                         </div>
                      </div>
                 </a>
             </div>
         </div>
            <!-- Profile Part -->
            <div class="container mt-3">
                <div class="card shadow text-white pb-2" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png');background-repeat:no-repeat; background-size:100% 100%; border-radius:45px; position:relative">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <div class="row">
                                    <%--<div class="col-4 col-md-1 pl-1 pr-0 text-center">
                                        <button class="btn btn-link" type="button">
                                            <img src="../assets/images/refresh-button.png" class="img-fluid" style="width:48px" />
                                        </button>
                                    </div>--%>
                                    <div class="col-12 col-md-6 ml-n3 mt-1 pl-1 text-center">
                                        <span class="text-nowrap" style="font-size:24px">
                                            <b>
                                                <span style="display:inline-block; font-size:24px">D Wong</span>
                                            </b>
                                        </span>
                                        <span class="text-nowrap d-block">+60123666036</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4 col-sm-2 text-right ml-auto mt-3">
                                <a href="qr.aspx">
                                    <div class="rounded p-1 bg-white d-inline-block mt-2">
                                        <div>
                                            <img src="../assets/images/qr-code.jpg" class="img-fluid" style="height:60px; width:60px" />
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-6 col-md-6 col-sm-6">
                                <span class="text-nowrap">
                                    <i class="fas fa-dollar-sign"></i>
                                    &nbsp POINTS
                                </span>
                                <a href="#" class="text-reset">
                                    <div class="row mt-2">
                                        <div class="col-8 col-md-9">
                                            <span class="text-nowrap" style="font-size:28px">
                                                <b>
                                                    <span class="d-inline-block" style="font-size:28px">0.00</span>
                                                </b>
                                            </span>
                                        </div>
                                        <div class="col-1 col-md-1 ml-n3 ml-md-5 mt-2 pl-1">
                                            <span><i class="fas fa-chevron-right"></i></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-6 col-md-6 col-sm-6">
                                <a href="#" class="text-reset ml-n5 mr-2">
                                    <i class="fas fa-random"></i>
                                </a>
                                <span class="text-nowrap">
                                    <i class="fas fa-money-bill"></i>
                                    &nbsp CASH
                                </span>
                                <a href="#" class="text-reset d-block">
                                    <div class="row mt-2">
                                        <div class="col-3 col-md-1 col-sm-1">
                                            <sup class="text-nowrap" style="top:0.25em">MYR</sup>
                                        </div>
                                        <div class="col-8 col-md-8 pl-1">
                                            <span class="text-nowrap" style="font-size:28px">
                                                <b>
                                                   
                                                    <span style="font-size:28px; display:inline-block">0.00</span>
                                                </b>
                                            </span>
                                        </div>
                                        <div class="col-1 col-md-1 col-sm-1 ml-n3 ml-md-5 mt-2 pl-1">
                                            <span><i class="fas fa-chevron-right"></i></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <button class="btn btn-link" type="button">
                                            <img src="../assets/images/KIMCO ICONS/TransferIcon.png" class="img-fluid" style="width:30px; position:absolute" />
                                        </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Part Second last -->
            <div class="container mt-5 mt-md-5">
                <div class="card card-body shadow border-0" style="border-radius:40px">
                    <div class="row">
                        <div class="col-3 col-sm-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/TopupIcon.png" />
                                <small>Top-up Points</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/WithdrawIcon.png" />
                                <small>Cash Withdraw</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/GamesIcon.png" />
                                <small>Enter Games</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/TicketIcon.png" />
                                <small>Ticket</small>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- Part last -->
                <div class="card card-body border-0 pt-0 mt-5 bg-transparent">
                    <div class="row">
                        <div class="col-3 col-sm-3 mb-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/PackageIcon.png" />
                                <small>Package</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 mb-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/ResultIcon.png" />
                                <small>Result</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 mb-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/DownlineIcon.png" />
                                <small>Downline</small>
                            </a>
                        </div>
                        <div class="col-3 col-sm-3 mb-3 text-center p-1">
                            <a href="#" class="text-reset">
                                <img class="rounded mx-auto mt-auto d-block img-fluid" style="width:55%" src="../assets/images/KIMCO ICONS/SettingIcon.png" />
                                <small>Settings</small>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        
    <%--</form>--%>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>


