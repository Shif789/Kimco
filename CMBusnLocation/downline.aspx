<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="downline.aspx.vb" Inherits="CMBusnLocation_downline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
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
              <a class="nav-link active" href="downline.aspx">Downline</a>
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
    <!---->
    <br />
    <br />
    <div class="container my-4 my-md-5">
        <div class="d-none d-lg-flex justify-content-between flex-wrap flex-md-nowrap align-items-center my-2 py-2">
            <h3>Downlines</h3>
            <div class="btn-toolbar ml-auto">
                <a href="#" class="btn btn-warning">Back</a>
            </div>
        </div>
        <form method="post">
            <div class="input-group mb-3">
                <input class="form-control rounded shadow" placeholder="Alias / Name / Nobile No." type="text" />
                <div class="input-group-append">
                    <button type="submit" class="btn btn-sm btn-outline-secondary btn-block  rounded-right shadow">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
        <div class="row mb-3">
            <div class="col-5 pr-1">
                <div class="card card-body text-white shadow rounded p-3" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center">
                    <div class="row">
                        <div class="col">
                            <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/group-82a95fc950593ab22a316c97fb3a726b.svg" class="img-fluid" style="width:30px" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <span class="text-nowrap" style="font-size:52px">
                                <b style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:52px">0</span>
                                </b>
                            </span>
                            <div>Direct</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-right mt-4">Downline</div>
                    </div>
                </div>
            </div>
            <div class="col-7 pl-1">
                <div class="card card-body text-white shadow rounded p-3" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center">
                    <div class="row">
                        <div class="col">
                            <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/profile-4d22ea64ad7e1e32b24349cb415e6f5f.svg" class="img-fluid" style="width:30px" />
                            <small>
                                <b>+60123666036</b>
                            </small>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <span class="text-nowrap" style="font-size:42px">
                                <b style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:42px">0</span>
                                </b>
                            </span>
                            <div>Total</div>
                        </div>
                        <div class="col text-center">
                            <span class="text-nowrap" style="font-size:42px">
                                <b style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:42px">0</span>
                                </b>
                            </span>
                            <div>Level</div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card card-body text-white shadow rounded py-2 px-2 mt-2" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center">
                            <div class="text-center">
                                <small>
                                    <b>0 new member</b>
                                    today
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h5>Downlines</h5>
        <div class="shadow mt-3">
            <div class="list-group list-group-flush rounded">
                <div class="list-group-item">
                    You have no downlines yet? Ask friend to scan your QRCode to join,
                    <a href="#">back to home</a>
                </div>
            </div>
        </div>
        <div class="text-muted text-center p-3">
            <i class="fas fa-spinner"></i>
        </div>
    </div>
    <!--Scripts-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

