<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="settings.aspx.vb" Inherits="CMBusnLocation_settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
       /* enable absolute positioning */
.inner-addon { 
    position: relative; 
}

/* style icon */
.inner-addon .glyphicon {
  position: absolute;
  padding: 10px;
  pointer-events: none;
}

/* align icon */
.left-addon .glyphicon  { left:  0px;}
.right-addon .glyphicon { right: 0px;}
    </style>
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
              <a class="nav-link " href="results.aspx">Result</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="downline.aspx">Downline</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="sales.aspx">Sales</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="settings.aspx">Settings</a>
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
    <!---->

    <br />
    <br />
    
    <div class="container py-2 py-md-5 vh-100">
        <div class="card border-0 bg-light">
            <div class="card-body">
                <dl class="row">
                    <dt class="col-sm-9 h3">Your Mobile No.</dt>
                    <dd class="col-sm-12 my-2">
                        <div class="d-flex justify-content-between align-items-center inner-addon right-addon">
                            <input disabled id="phoneNum" class="form-control" type="text" value="+60123666036" />
                            <i class="fas fa-check-circle glyphicon text-success"></i>
                            <%--<img class="glyphicon" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/verified-e897d7cacf0f59b072bc75bd405119f5.svg"  />--%>
                        </div>
                    </dd>
                    <dd class="col-sm-12 my-2">
                        <div class="d-flex justify-content-between align-items-center inner-addon right-addon">
                            <input id="name" class="form-control" type="text" value="D Wong" />
                            <i class="fas fa-check glyphicon text-success"></i>
                        </div>
                    </dd>
                    <dd class="col-sm-12 my-2">
                        <div class="d-flex justify-content-between align-items-center inner-addon right-addon">
                            <input disabled id="email" class="form-control" type="text" value="kw100mil@gmail.com" />
                            <i class="fas fa-plus-circle glyphicon text-success"></i>
                        </div>
                    </dd>
                    <dt class="col-sm-4">Language</dt>
                    <dd class="col-sm-12">
                        <select class="form-control" id="selectOption" onchange="fnChange()" aria-label="Default select example">
                  <option selected>Select type</option>
                  <option value="1">English en</option>
                  <option value="2">Bangla bn</option>
                  <option value="3">Indonesia id</option>
                  <option value="4">Malaysia ms</option>
                </select>
                    </dd>
                </dl>
                <div class="btn-toolbar my-3 mx-auto">
                    <button class="btn btn-lg btn-block btn-warning rounded text-white" type="button">Save</button>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
            <div class="btn-toolbar d-lg-none my-3 mx-auto">
                <a href="#" class="btn btn-warning btn-lg">Logout</a>
            </div>
        </div>
        <div class="text-center">
            <span class="text-muted">User: D Wong</span>
            <br />
            <b class="text-muted">+60123666036</b>
        </div>
        <div class="text-center mt-4">
            <small class="text-danger">W W W . A T M 8 8 . O R G</small>
        </div>
        <div class="text-center mt-4">
            <small class="text-muted">0.0.0+a8704cf9</small>
        </div>
    </div>
   
    <!--Script-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
   
</asp:Content>

