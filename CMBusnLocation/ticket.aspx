<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="ticket.aspx.vb" Inherits="CMBusnLocation_ticket" %>

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
              <a class="nav-link" href="pointsTransfer.aspx">Transfer Points</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cashWithdraw.aspx">Cash Withdraw</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="enterGames.aspx">Enter Games</a>
            </li>
              <li class="nav-item">
              <a class="nav-link active" href="ticket.aspx">Ticket</a>
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
            <!---->
        <div class="text-center text-muted p-3">
            <div><i class="far fa-hand-peace"></i></div>
        </div>
        </div>
        
      
    </form>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

