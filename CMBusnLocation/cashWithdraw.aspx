<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="cashWithdraw.aspx.vb" Inherits="CMBusnLocation_cash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
        .tab{
            display:none;
        }
    </style>

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
              <a class="nav-link active" href="cashWithdraw.aspx">Cash Withdraw</a>
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
                <h3>Amount Transfer</h3>
                <div class="btn-toolbar ml-auto">
                    <a href="#" class="btn btn-warning mr-2">Transfer</a>
                    <a href="#" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
        <!---->
        <%--<div class="container my-3 my-md-5">
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
                    <button class="btn btn-sm btn-success rounded" type="submit">Save</button>
                </div>
            </div>
          </div>
        </div>--%>
        <!---->
        <div class="row">
            <div class="col-12 pr-1">
                <div class="card card-body mt-0 mb-4 mb-md-3 rounded shadow" style="background-image:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center; height:120px">
                    <small class="text-white">Cash</small>
                    <div class="d-flex justify-content-start flex-wrap flex-md-nowrap align-items-center text-white">
                        <span class="display-4">
                            <b>
                                <span style="display:inline-block; font-size:46px">0.00</span>
                            </b>
                        </span>
                        &nbsp;&nbsp;
                        <b>MYR</b>
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
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><b>Transfer to</b></label>
            <div class="col-sm-9 text-dark">
                <select class="form-control" id="selectOption" onchange="fnChange()" aria-label="Default select example">
                  <option selected>Select type</option>
                  <option value="1">Upline</option>
                  <option value="2">Downline</option>
                  <option value="3">Bank</option>
                  <option value="4">Convert to Points</option>
                </select>
            </div>
        </div>
        <!---->
        
        <div id="changeDl" class="form-group row tab">
            <label class="col-sm-3 col-form-label"><b>Your Downline</b></label>
            <div class="col-sm-9">
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action d-flex justify-content-between align-baseline align-items-center">
                        <span>Choose downline</span>
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/contact-7a3b1a2f4a2e9fa36dcb2b15b9644f99.svg" width="25px"/>
                    </a>
                </div>
            </div>
        </div>
        <div id="changeAmt" class="form-group row tab">
            <label class="col-sm-3 col-form-label"><b>Amount</b> RM</label>
            <div class="col-sm-9 text-dark">
                <input min="1" placeholder="MYR" class="form-control border" type="number" />
            </div>
        </div>
        <div id="changeHeart" class="row text-nowrap mb-3 tab">
            <div class="col">Min MYR60</div>
            <div class="col text-right">
                <i class="fas fa-heart"></i>X0
            </div>
        </div>
        <div id="changeBnk" class="form-group row tab">
            <label class="col-sm-3 col-form-label"><b>Transfer to</b></label>
            <div class="col-sm-9 text-dark">
                <select class="form-control" id="selectBank" aria-label="Default select example">
                  <option selected>Please choose bank name</option>
                  <option value="1">CIMB</option>
                  <option value="2">Affin</option>
                  <option value="3">MayBank</option>
                  <option value="4">HSBC</option>
                </select>
            </div>
        </div>

        
        <button class="btn btn-lg btn-warning d-lg-none btn-block mt-2 my-2 rounded text-white shadow fixed-bottom" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">CONFIRM</button>
        
      
    </form>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
    <script>
        let selectOp = document.querySelector("#selectOption");
        let optAmt = document.querySelector("#changeAmt");
        let optDl = document.querySelector("#changeDl");
        let optHeart = document.querySelector("#changeHeart");
        let optBnk = document.querySelector("#changeBnk");

        function fnChange() {
            if (selectOp.selectedIndex === 1 || selectOp.selectedIndex === 4) {
                optAmt.classList.remove("tab");

                optDl.classList.add("tab");
                optHeart.classList.add("tab");
                optBnk.classList.add("tab");
            }
            else if (selectOp.selectedIndex === 2) {
                optDl.classList.remove("tab");
                optAmt.classList.remove("tab");

                optHeart.classList.add("tab");
                optBnk.classList.add("tab");
            }
            else if (selectOp.selectedIndex === 3) {

                optAmt.classList.remove("tab");
                optHeart.classList.remove("tab");
                optBnk.classList.remove("tab");

                optDl.classList.add("tab");
            }
            else {
                optAmt.classList.add("tab");
                optDl.classList.add("tab");
                optHeart.classList.add("tab");
                optBnk.classList.add("tab");
            }
        }

    </script>
</asp:Content>

