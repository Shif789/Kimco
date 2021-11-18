<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="cash.aspx.vb" Inherits="CMBusnLocation_cash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
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
              <a class="nav-link active" href="cash.aspx">Cash</a>
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
        <!-- Point Page-->
        <br />
        <br />
        
    
        <div class="container my-3 my-md-5 d-none d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <h3>Cash Balance</h3>
                <div class="btn-toolbar ml-auto">
                    <a href="#" class="btn btn-warning mr-2">Transfer</a>
                    <a href="#" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
        <!---->
        <div class="container my-3 my-md-5">
          <div class="my-2">
            <div class="form-inline mb-1">
                <div class="form-group mb-1 col-4 px-0">
                    <asp:TextBox ID="dateFrom" runat="server" TextMode="Date" CssClass="form-control form-control-sm text-center" placeholder="Date (from)"></asp:TextBox>
                </div>
                <div class="form-group mb-1 col-1 px-0 text-center">To</div>
                <div class="form-group mb-1 col-4 px-0">
                    <asp:TextBox ID="dateBefore" runat="server" TextMode="Date" CssClass="form-control form-control-sm text-center" placeholder="Date (before)"></asp:TextBox>
                </div>
                <div class="mb-1 col-3">
                    <button class="btn btn-sm btn-warning rounded" type="submit">Submit</button>
                </div>
            </div>
          </div>
        </div>
        <!---->
        <div class="row">
            <div class="col-12 pr-1">
                <div class="card card-body mt-0 mb-4 mb-md-3 rounded shadow" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center;  height:120px">
                    <small class="text-white">Current Balance</small>
                    <div class="d-flex justify-content-start flex-wrap flex-md-nowrap align-items-center text-white">
                        <b>RM</b>
                        &nbsp;&nbsp;
                        <span class="display-4">
                            <b>
                                <span style="display:inline-block; font-size:46px">0.00</span>
                            </b>
                        </span>
                    </div>
                </div>
            </div>
            <%--<div class="col-4 pl-1">
                <div class="card card-body bg-success mb-2 rounded shadow p-2" style="background-color:green; height:56px">
                    <a href="#" class="text-decoration-none">
                        <div class="row text-center text-white">
                            <div class="col-12 mb-1">
                                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/fpx-logo-4d415539be3cba3a0a3e19336cad482c.png" class="img-fluid" style="max-width:70px" />
                            </div>
                            <div class="col-12 mt-n2">
                                <span style="font-size:12px">24 hours</span>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="card card-body bg-success rounded shadow p-2" style="background-color:green; height:56px">
                    <a href="#" class="text-decoration-none mt-1">
                        <div class="row text-center text-white">
                            <div class="col-12">
                                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/online-atm-8f641d66458f58b347b8a10d00983a80.svg" class="img-fluid" />
                            </div>
                        </div>
                    </a>
                </div>
            </div>--%>
        </div>
        <!---->
        <div class="card">
            <ul class="list-group list-group-flush"></ul>
        </div>
        <div class="text-center text-muted p-3">
            <div><i class="far fa-hand-peace"></i></div>
        </div>
      
    <%--</form>--%>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

