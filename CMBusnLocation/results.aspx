<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="results.aspx.vb" Inherits="CMBusnLocation_results" %>

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
              <a class="nav-link active" href="results.aspx">Result</a>
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
    <!---->
    <br />
    <br />
    <div class="container">
        <div class="my-2 text-center">
            <div class="row">
                <div class="col-4 px-0 text-right">
                    <button class="btn" type="button">
                        <i class="fas fa-chevron-left"></i>Prev
                    </button>
                </div>
                <div class="col-4 px-0">
                    <input class="form-control form-control-sm px-0 text-center" type="date" placeholder="date" readonly="readonly"/>
                </div>
                <div class="col-4 px-0 text-left">
                    <button class="btn" type="button">
                        Next
                        <i class="fas fa-chevron-right"></i>
                    </button>
                </div>
            </div>
            <!---->
            <div class="btn-group-toggle row mx-n1 mb-3">
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0 btn-warning">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/F-c5a0d596a145287b92296b4720db52af.png" class="img-fluid" />F
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/M-b368f658a16fc3b83e0f7b49e0396c21.png" class="img-fluid" />M
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/P-bd7370f1c77804d3e7c96dca8b968dfb.png" class="img-fluid" />P
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/T-79bf48dd9910a97458ff72d477b25b1a.png" class="img-fluid" />T
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/S-1780a55f473aecda25e8990612a7e006.png" class="img-fluid" />S
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/B-e963002030ef6046887437b35612c462.png" class="img-fluid" />B
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/K-fe60800dda833ecefa219385630735f0.png" class="img-fluid" />K
                    </label>
                </div>
                <div class="col px-1">
                    <label class="btn btn-sm m-0 p-1 border-0">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/W-f401992cba0965d407ed7ff97edc05c6.png" class="img-fluid" />W
                    </label>
                </div>
            </div>
        </div>
    </div>
    <!---->
    <div class="container mb-5" style="padding-bottom:120px">
        <div class="card card-body mt-4 mb-3 p-2" style="background:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center; ">
            <div class="text-center">
                <p class="mb-0" style="color:/*#E7C56C*/ white">
                    <b>Jackpot Pool</b>
                </p>
                <div style="white-space:nowrap">
                    <b style="font-size:24px; color:/*#E7C56C*/ white">
                        <span style="display:inline-block; font-size:24px">USD2,214,764.07</span>
                    </b>
                </div>
            </div>
        </div>

        <div class="row border bg-light text-nowrap py-1">
        <div class="col-4">
            <div><b></b></div>
        </div>
        <div class="col-8 text-right text-danger">
            <a href="#" target="_blank" class="text-danger">
                <i class="fas fa-circle"></i>
                <span>Watch Live Results &nbsp</span>
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-7 border py-1 bg-light text-center" style="font-size:30px">1ST Prize</div>
        <div class="col border py-1">
            <h1 class="mb-0 py-1">
                <sup>
                    <b style="font-size:12px; color:red">D</b>
                </sup>
                8440
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-7 border py-1 bg-light text-center" style="font-size:30px">2ND Prize</div>
        <div class="col border py-1">
            <h1 class="mb-0 py-1">
                <sup>
                    <b style="font-size:12px; color:red">B</b>
                </sup>
                3382
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-7 border py-1 bg-light text-center" style="font-size:30px">3RD Prize</div>
        <div class="col border py-1">
            <h1 class="mb-0 py-1">
                <sup>
                    <b style="font-size:12px; color:red">E</b>
                </sup>
                7495
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col border py-1 bg-light text-center" style="font-size:30px">Special</div>
    </div>
    <div class="row">
        <div class="col border py-1 px-1 text-center">
            <sup>
                <b style="font-size:12px; color:red">A</b>
            </sup>
            <b>9414</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">B</b>
            </sup>
            <b>- - - -</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">C</b>
            </sup>
            <b>4430</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">D</b>
            </sup>
            <b>- - - -</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">E</b>
            </sup>
            <b>- - - -</b>
        </div>
    </div>
    <div class="row">
        <div class="col border py-1 px-1 text-center">
            <sup>
                <b style="font-size:12px; color:red">F</b>
            </sup>
            <b>2606</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">G</b>
            </sup>
            <b>9719</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">H</b>
            </sup>
            <b>8366</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">I</b>
            </sup>
            <b>1748</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">J</b>
            </sup>
            <b>2069</b>
        </div>
    </div>
    <div class="row">
        <div class="col border py-1 px-1 text-center">
            
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">K</b>
            </sup>
            <b>9483</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">L</b>
            </sup>
            <b>1080</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">M</b>
            </sup>
            <b>8088</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             
        </div>
    </div>
    <div class="row">
        <div class="col border py-1 bg-light text-center" style="font-size:30px">Consolation</div>
    </div>
    <div class="row">
        <div class="col border py-1 px-1 text-center">
            <sup>
                <b style="font-size:12px; color:red">N</b>
            </sup>
            <b>9899</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">O</b>
            </sup>
            <b>1943</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">P</b>
            </sup>
            <b>2124</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">Q</b>
            </sup>
            <b>3050</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">R</b>
            </sup>
            <b>2130</b>
        </div>
    </div>
    <div class="row">
        <div class="col border py-1 px-1 text-center">
            <sup>
                <b style="font-size:12px; color:red">S</b>
            </sup>
            <b>3628</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">T</b>
            </sup>
            <b>8234</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">U</b>
            </sup>
            <b>7884</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">V</b>
            </sup>
            <b>5966</b>
        </div>
        <div class="col border py-1 px-1 text-center">
             <sup>
                <b style="font-size:12px; color:red">W</b>
            </sup>
            <b>3483</b>
        </div>
    </div>
    <div class="text-center mt-2">
        <button class="btn btn-link text-danger" type="button">
            <i class="fas fa-sync-alt"></i>
            <div><small>Refresh</small></div>
        </button>
    </div>
    <div class="row mt-3">
        <table class="table table-bordered">
            <thead>
                <tr class="bg-light">
                    <th scope="col" colspan="6" class="text-center py-1" style="font-size:30px">5D / 6D/ 7D</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">7D</td>
                    <td colspan="4" class="text-center py-1" style="font-size:20px"><b>9749651</b></td>
                </tr>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">6D</td>
                    <td colspan="2" class="text-left py-1" style="font-size:20px"><b>974965</b></td>
                    <td colspan="1" class="text-center py-1 bg-light" style="font-size:20px">or</td>
                    <td colspan="2" class="text-right py-1" style="font-size:20px"><b>749651</b></td>
                </tr>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">5D</td>
                    <td colspan="2" class="text-left py-1" style="font-size:20px"><b>97496</b></td>
                    <td colspan="1" class="text-center py-1 bg-light" style="font-size:20px">or</td>
                    <td colspan="2" class="text-right py-1" style="font-size:20px"><b>49651</b></td>
                </tr>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">4TH</td>
                    <td colspan="2" class="text-left py-1" style="font-size:20px"><b>9749</b></td>
                    <td colspan="1" class="text-center py-1 bg-light" style="font-size:20px">or</td>
                    <td colspan="2" class="text-right py-1" style="font-size:20px"><b>9651</b></td>
                </tr>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">5TH</td>
                    <td colspan="2" class="text-left py-1" style="font-size:20px"><b>974</b></td>
                    <td colspan="1" class="text-center py-1 bg-light" style="font-size:20px">or</td>
                    <td colspan="2" class="text-right py-1" style="font-size:20px"><b>651</b></td>
                </tr>
                <tr>
                    <td colspan="1" class="text-center py-1 bg-light text-danger" style="font-size:20px">6TH</td>
                    <td colspan="2" class="text-left py-1" style="font-size:20px"><b>97</b></td>
                    <td colspan="1" class="text-center py-1 bg-light" style="font-size:20px">or</td>
                    <td colspan="2" class="text-right py-1" style="font-size:20px"><b>51</b></td>
                </tr>
            </tbody>
        </table>
    </div>
    </div>
    <!---->
    
    <!--Script-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

