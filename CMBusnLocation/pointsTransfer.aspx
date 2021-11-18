<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="pointsTransfer.aspx.vb" Inherits="CMBusnLocation_pointsTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>
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
              <a class="nav-link active" href="pointsTransfer.aspx">Transfer Points</a>
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
                <h3>Point Transfer</h3>
                <div class="btn-toolbar ml-auto">
                    <a href="#" class="btn btn-warning mr-2">Transfer</a>
                    <a href="#" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
        <!---->
        <!---->
        <section>
        <div class="row">
            <div class="col-8 pr-1">
                <div class="card card-body mb-4 mb-md-3 rounded shadow" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center; height:120px">
                    <small class="text-white">Current Point Balance</small>
                    <div class="text-white my-auto">
                        <span class="display-4">
                            <b>
                                <span style="display:inline-block; font-size:46px">0</span>
                            </b>
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-4 pl-1">
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
                    <a href="cashReload.aspx" class="text-decoration-none mt-1">
                        <div class="row text-center text-white">
                            <div class="col-12">
                                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/online-atm-8f641d66458f58b347b8a10d00983a80.svg" class="img-fluid" />
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><b>Transfer To</b></label>
            <div class="col-sm-9">
                <div class="list-group">
                    <a href="selectUser.aspx" class="list-group-item list-group-item-action d-flex justify-content-between align-baseline align-items-center">
                        <span>Choose downline</span>
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/contact-7a3b1a2f4a2e9fa36dcb2b15b9644f99.svg" width="25px"/>
                    </a>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><b>Commission Rate</b>(%)</label>
            <div class="col-sm-9">
                <input type="number" step="1" min="0" max="40" value="0" placeholder="Input rate" disabled class="form-control text-center"/>
                <div class="d-flex justify-content-center">
                    <button class="btn btn-outline-secondary mr-2 mt-1" id="btn-addon1" type="button">
                        <i class="fas fa-minus"></i>
                    </button>
                    <div class="w-100">
                        <input type="range" min="0" max="40" class="form-control-range w-100 mt-3" />
                    </div>
                    <button class="btn btn-outline-secondary ml-2 mt-1" id="btn-addon2" type="button">
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><b>Amount</b>RM</label>
            <div class="col-sm-9 text-dark">
                <input class="form-control border" type="text" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><b>Point Total</b></label>
            <div class="col-sm-9 text-dark">
                <input class="form-control" type="number" disabled />
            </div>
        </div>
       </section>
        <!---->
        <button class="btn btn-lg d-lg-none btn-warning btn-block mt-2 my-2 rounded text-white shadow fixed-bottom" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">TRANSFER</button>
        
      
    </form>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

