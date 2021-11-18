<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="sales.aspx.vb" Inherits="CMBusnLocation_sales" %>

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
              <a class="nav-link " href="downline.aspx">Downline</a>
            </li>
              <li class="nav-item">
              <a class="nav-link active" href="sales.aspx">Sales</a>
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
    <div class="container my-3 my-md-5 d-lg-block">
        <div class="d-none d-lg-flex justify-content-between flex-wrap flex-md-nowrap align-items-center my-2 py-2">
            <h3>KPI</h3>
            <div class="btn-toolbar ml-auto">
                <a href="#" class="btn btn-warning">Back</a>
            </div>
        </div>
    </div>
    <div class="container my-3 my-md-5" style="padding-bottom:120px">
        <div class="card card-body mb-3 shadow rounded border-0">
            <dl class="row mb-0">
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Name</dt>
                <dd class="col-8 col-md-9 mb-md-3">D Wong</dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Phone</dt>
                <dd class="col-8 col-md-9 mb-md-3">+60123666036</dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Email</dt>
                <dd class="col-8 col-md-9 mb-md-3">kw100ml@gmail.com</dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right text-wrap">Comm. Rate</dt>
                <dd class="col-8 col-md-9 mb-md-3 text-danger">40%</dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Points</dt>
                <dd class="col-8 col-md-9 mb-md-3"><b class="text-success">0</b></dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Downlines</dt>
                <dd class="col-8 col-md-9 mb-md-3"><b class="text-success">0</b></dd>
                <dt  class="col-4 col-md-3 mb-md-3 text-md-right">Level</dt>
                <dd class="col-8 col-md-9 mb-md-3">
                    <span class="badge badge-dark badge-pill">System: 0%</span>
                </dd>
            </dl>
        </div>
        <h5>Total Monthly Points</h5>
        <nav class="nav nav-pills nav-justified mb-2 text-center rounded-pill" id="pills-tab" role="tablist"></nav>
        <h5>Total Monthly Bonus</h5>
        <nav class="nav nav-pills nav-justified mb-2 text-center rounded-pill" id="pills-tab" role="tablist"></nav>
        <div class="mb-2">
            <span class="text-muted ml-2">Estimated next month
                <b>Level: </b>
            </span>
            <b class="text-success">0%</b>
        </div>
        <ul class="list-group mb-3 rounded shadow">
            <li class="list-group-item d-flex justify-content-between">
                
                <div class="col px-1">
                    <b style="white-space:nowrap">
                        <span style="display:inline-block; font-size:16px">Date</span>
                    </b>
                </div>
                <div class="col px-1">
                    <b style="white-space:nowrap">
                        <span style="display:inline-block; font-size:16px">Sales</span>
                    </b>
                </div>
                <div class="col px-1">
                    <b style="white-space:nowrap">
                        <span style="display:inline-block; font-size:16px">Bonus</span>
                    </b>
                </div>
                <div class="col px-1">
                    <b style="white-space:nowrap">
                        <span style="display:inline-block; font-size:16px">D.line</span>
                    </b>
                </div>
                <div class="col px-1">
                    <b style="white-space:nowrap">
                        <span style="display:inline-block; font-size:16px">Yours</span>
                    </b>
                </div>
                    
            </li>
        </ul>
    </div>
</asp:Content>

