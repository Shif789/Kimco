<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="points.aspx.vb" Inherits="CMBusnLocation_points" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>
        <nav class="navbar navbar-light bg-light navbar-expand-md navbar-expand-lg fixed-top">
      <div class="container">
        <a href="HomePageNew.aspx" class="navbar-brand active">Home</a>
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
              <a class="nav-link active" href="points.aspx">Points</a>
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
        <!-- Point Page-->
        <br />
        <br />
        
    
        <div class="container my-3 my-md-5 d-none d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <h3>Point Statements</h3>
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
                    <button class="btn btn-sm btn-warning rounded" type="submit">Save</button>
                </div>
            </div>
          </div>
        </div>
        <!---->
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
        <!---->
        <div class="card">
            <ul class="list-group list-group-flush"></ul>
        </div>
        <div class="text-center text-muted p-3">
            <div><i class="fas fa-spinner"></i></div>
        </div>

        <!-- reload-->
        <%--<div class="container my-3 my-md-5 d-none d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <h3>Cash Reload</h3>
                <div class="btn-toolbar ml-auto">
                    <a href="#" class="btn btn-warning mr-2">Transfer</a>
                    <a href="#" class="btn btn-warning">Back</a>
                </div>
            </div>
        </div>
        <div class="container my-3 my-md-5" style="padding-bottom:120px">
            <div class="form-group row mt-4">
                <label class="col-sm-3 col-form-label">
                    <b>Bank</b>
                </label>
                <div class="col-sm-9">
                    <select class="form-control">
                        <option selected>Please select a bank</option>
                        <option value="1">MBSB Bank</option>
                        <option value="2">AM Bank</option>
                        <option value="3">Affin Bank</option>
                        <option value="4">MayBank</option>
                   </select>
                </div>
            </div>
            <div>
                <div class="my-3">
                    Notice:
                    <br />
                    Our system may change the account anytime. 
                </div>
                <div>
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamations-20px-72969855a91a003d9d321b935b2e575b.svg" class="img-fluid pb-1" style="width:20px" />
                    Please confirm and follow the account information given before transfer.
                </div>
                <div class="my-3">
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/customer-service-20px-106e9c41fa0e4818970ea783a533d643.svg" class="img-fluid pb-1" style="width:20px" />
                    Our customer service will process within 30 minutes.
                </div>
                <div>
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamation-triangle-20px-cf8e2e25856f561a21fca872625890d5.svg" class="img-fluid pb-1" style="width:20px" />
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamation-triangle-20px-cf8e2e25856f561a21fca872625890d5.svg" class="img-fluid pb-1" style="width:20px" />
                    Please put your phone last 4 digit number as bank reference (e.g. 010-1234567  REF:4567).
                </div>
                <br />
                <div>
                    Our company will not be responsible for any loss and related liabilties caused by this.
                </div>
                <input type="checkbox" class="mt-3 pb-5" />
                I have read and agreed
            </div>

        </div>--%>
      
    </form>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

