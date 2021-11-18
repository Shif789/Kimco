<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="enterGames.aspx.vb" Inherits="CMBusnLocation_enterGames" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <style>
        .hide{
            display:none
        }
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
              <a class="nav-link active"  href="enterGames.aspx">Enter Games</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="ticket.aspx" >Ticket</a>
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

    <div class="container my-3 my-md-3 d-none d-lg-block">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
            <h3>Bet</h3>
            <div class="ml-auto">
                <a href="#" class="nav-link active">
                    <i class="far fa-keyboard text-danger fa-2x"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="my-2 my-md-5">
        <div class="pb-2">
            <div class="row">
                <div class="col-7 col-sm-6 col-md-6">
                    <div class="btn-group btn-group-toggle ml-2">
                        <div class="row">
                            <div class="col-sm-12 col-md-10 pr-0">
                                <label id="myr" class="btn btn-sm rounded-pill border bg-warning">
                                    <input  aria-checked="true" type="radio" value="MYR" class="d-none"/>
                                    <img class="img-fluid" width="26" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/malaysia-0628e5564d6d3d6dd52d105f921fcb41.svg"/>
                                    <span class="text-white">
                                        &nbsp
                                        <small><b>MYR</b></small>
                                    </span>
                                </label>
                                <label id="sgd" class="btn btn-sm rounded-pill border">
                                    <input  aria-checked="false" type="radio" class="d-none" value="SGD"/>
                                    <img class="img-fluid" width="26" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/singapore-efe2a242067ad257a366b0933d437bb2.svg"/>
                                    <span>
                                        &nbsp
                                        <small><b>SGD</b></small>
                                        <small class="text-muted">* 3.08</small>
                                    </span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-5 col-sm-6 col-md-6 text-right mt-1 pl-0">
                    <span class="mr-3 text-nowrap">
                        <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/point-balance-red-fff01642af38e72382d5cc5383bbf2eb.svg" class="img-fluid mb-1" style="height:25px" />
                        &nbsp
                        <b>0.00 pts</b>
                    </span>
                </div>
            </div>
            <div class="card card-body rounded py-1 mb-2 shadow text-white" style="background:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center">
                <div class="row">
                    <div class="col-3 col-sm-2 col-md-4 text-center d-flex flex-wrap flex-md-nowrap align-items-center">Total Point</div>
                    <div class="col-6 col-md-6 col-sm-6">
                        <div class="text-nowrap text-center">
                            <div class="text-white display-1" style="white-space:nowrap">
                                <span style="display:inline-block; font-size:77px">0</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="sgdV" class="text-center text-nowrap hide" style="color:lightgrey">
                    @3.08
                </div>
            </div>
            <div class="card card-body border-0 bg-transparent pt-1 pb-2">
                <div class="row">
                    <div class="col-6 col-md-6 col-sm-6">
                        <div class="d-flex justify-content-start align-items-center">
                            <span class="text-muted">Bet Price</span>
                            &nbsp&nbsp
                            <h2 class="text-muted mt-2">
                                <span>+</span>
                                0%
                            </h2>
                        </div>
                    </div>
                    <div class="col-6 col-md-6 col-sm-6 text-right pr-1">
                        <button class="btn bg-warning text-white rounded-pill dropdown-toggle shadow" id="drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button">
                            Days &nbsp;&nbsp;&nbsp;1 
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropDownMenuLink">
                            <a class="dropdown-item" href="#" role="button">1</a>
                            <a class="dropdown-item" href="#" role="button">2</a>
                            <a class="dropdown-item" href="#" role="button">3</a>
                            <a class="dropdown-item" href="#" role="button">4</a>
                            <a class="dropdown-item" href="#" role="button">5</a>
                            <a class="dropdown-item" href="#" role="button">6</a>
                            <a class="dropdown-item" href="#" role="button">7</a>
                            <a class="dropdown-item" href="#" role="button">8</a>
                            <a class="dropdown-item" href="#" role="button">9</a>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="card rounded shadow border-0">
                    <div class="card-body p-2">
                        <div class="btn-group-toggle row mx-n1 mb-3">
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow bg-warning text-white">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/F-64px-076b4999cd2088605c90b59ed9b5a232.png" class="img-fluid" />
                                    <br />
                                    F
                                    <input class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/M-64px-ce1a3e4eb73a6001925978053dd3ec33.png" class="img-fluid" />
                                    <br />
                                    M
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/P-64px-3fc98bf8132d0beb3179aab003f1d1b9.png" class="img-fluid" />
                                    <br />
                                    P
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/T-64px-112c5edbf4a9877bac7fb76460d4a9c6.png" class="img-fluid" />
                                    <br />
                                    T
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/S-64px-273ae6cc1bb3d4144070f37f869a73be.png" class="img-fluid" />
                                    <br />
                                    S
                                    <input class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/B-64px-0cd9667e5e5b61efd0498a897b56040a.png" class="img-fluid" />
                                    <br />
                                    B
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/K-64px-35503abaaeecc2dce8e9bca699932f8d.png" class="img-fluid" />
                                    <br />
                                    K
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                            <div class="col">
                                <label class="btn btn-sm m-0 p-1 border-0 rounded-pill shadow" style="opacity:0.3">
                                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/W-64px-1f69c1dd35aa211056013b61c4c45fdf.png" class="img-fluid" />
                                    <br />
                                    W
                                    <input disabled class="d-none" type="checkbox"/>
                                </label>
                            </div>
                        </div>
                        <div class="border p-1 display-4 rounded" style="cursor:pointer; background:url('../assets/images/KIMCO ICONS/BackgroundImg.png'); background-size:cover; background-repeat:no-repeat; background-position:center center">
                            <div class="row">
                                <div class="col-2 col-sm-2 ml-2 mt-2 pr0">
                                    <div class="text-white" style="font-size:24px; white-space:nowrap">
                                        <span style="display:inline-block; font-size:22px">4D</span>
                                    </div>
                                </div>
                                <div class="col-9 col-sm-9 mt-1 ml-n3 text-center" style="letter-spacing:1rem">
                                    <div class="text-white" style="white-space:nowrap">
                                        <b>
                                            <span style="display:inline-block; font-size:52px">____</span>
                                        </b>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-6 pr-0">
                        <div class="row my-3 mx-n1"></div>
                    </div>
                    <div class="col-6 col-sm-6 pl-1">
                        <div class="d-flex my-3">
                            <button class="btn btn-sm m-0 p-1 border-0 shadow rounded-pill col" style="color:grey" disabled type="button">
                                <div style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:14px">BH</span>
                                </div>
                                <img class="img-fluid" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/circle-disabled-9efe5efca66e9171de179f59c057ccd8.svg"/>
                            </button>
                            <button class="btn btn-sm m-0 p-1 border-0 shadow rounded-pill col" style="color:grey" disabled type="button">
                                <div style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:14px">REV</span>
                                </div>
                                <img class="img-fluid" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/circle-disabled-9efe5efca66e9171de179f59c057ccd8.svg"/>
                            </button>
                            <button class="btn btn-sm m-0 p-1 border-0 shadow rounded-pill col" style="color:grey" disabled type="button">
                                <div style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:14px">BOX</span>
                                </div>
                                <img class="img-fluid" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/circle-disabled-9efe5efca66e9171de179f59c057ccd8.svg"/>
                            </button>
                            <button class="btn btn-sm m-0 p-1 border-0 shadow rounded-pill col" style="color:grey" disabled type="button">
                                <div style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:14px">IBOX</span>
                                </div>
                                <img class="img-fluid" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/circle-disabled-9efe5efca66e9171de179f59c057ccd8.svg"/>
                            </button>
                            <button class="btn btn-sm m-0 p-1 border-0 shadow rounded-pill col" style="color:grey" disabled type="button">
                                <div style="white-space:nowrap">
                                    <span style="display:inline-block; font-size:14px">BT</span>
                                </div>
                                <img class="img-fluid" src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/circle-disabled-9efe5efca66e9171de179f59c057ccd8.svg"/>
                            </button>
                        </div>
                    </div>
                </div>
               <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal1">
  Launch demo modal
</button>--%>
                <div class="modal fade" id="modal1" style="padding-right:16px">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content border-0">
                            <div class="modal-body bg-dark">
                                <button class="close" data-dismiss="modal" aria-label="Close" type="button">
                                    <span class="text-white" aria-hidden="true">
                                        <i class="fas fa-times" style="color:white"></i>
                                    </span>
                                </button>
                                <h3 class="text-white text-center pb-3">Key in your lucky number</h3>
                                <div class="p-1 text-center display-4 rounded mb-3 d-flex justify-content-center">
                                    <span class="text-white" style="letter-spacing:1rem">____</span>
                                </div>
                                <div class="btn-group btn-group-toggle mb-3 w-100">
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="3d" type="radio" value="3D"/>
                                        3D
                                    </label>
                                    <label class="btn btn-outline-danger active">
                                        <input aria-checked="true" id="4d" type="radio" value="4D"/>
                                        4D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="5d" type="radio" value="5D"/>
                                        5D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="6d" type="radio" value="6D"/>
                                        6D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="7d" type="radio" value="7D"/>
                                        7D
                                    </label>
                                </div>
                                <div>
                                    <div class="form-row">
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">7</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">8</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">9</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">4</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">5</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">6</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">1</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">2</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">3</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">0-9</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold text-white" style="background-color:#aaa; border-color:#aaa" type="button">0</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-warning text-white"  type="button">
                                                <i class="fas fa-arrow-left text-white"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-3 pr-2">
                                        <button class="btn btn-block btn-lg btn-danger" type="button">
                                            <i class="fas fa-plus text-white"></i>
                                        </button>
                                    </div>
                                    <div class="col-9 pl-0">
                                        <button class="btn btn-success btn-block btn-lg" data-dismiss="modal" type="button">
                                            Save
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
            <div class="list-group mb-3">
                <div class="list-group-item list-group-item-action border-0 shadow py-1 px-1 " style="cursor:pointer">
                    <table>
                    <tr class="text-nowrap" style="font-size:14px">
                        <td class=" pr-0 pl-3" style="width:30%; padding:0.9rem; vertical-align:middle">F</td>
                        <td class=" pr-0" style="width:15%; padding:0.9rem; vertical-align:middle">
                            <b></b>
                        </td>
                        <td class=" pr-0" style="width:30%; padding:0.9rem; vertical-align:middle; text-transform:uppercase">
                            <span style="color:orange">NO BET</span>
                        </td>
                        <td class=" pr-0" style="width:5%; padding:0.9rem; vertical-align:middle; text-transform:uppercase">
                            <b></b>
                        </td>
                        <td class=" pr-0 text-right" style="width:10%; padding:0.9rem; vertical-align:middle; color:red">
                            <b>$0</b>
                        </td>
                        <td class=" pl-3" style="width:5%; padding:0.9rem; vertical-align:middle">
                            <button class="btn btn-link text-right px-0 py-0" type="button">
                                <i class="fas fa-times text-danger"></i>
                            </button>
                        </td>
                    </tr>
                        </table>
                </div>
            </div>
            <div class="row">
                <div class="col-8 pr-1">
                    <button class="btn btn-lg btn-block btn-warning rounded">
                        <i style="color:white" class="fas fa-plus"></i>
                        Add Number
                    </button>
                </div>
                <div class="col-4 pl-1">
                    <button class="btn btn-lg btn-block btn-warning rounded" disabled>
                        Bet
                    </button>
                </div>
            </div>
        </div>
        <%--<div class="row"></div>--%>
        <div class="text-center text-muted">You have no points</div>
    </div>
    <!--Script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>

        $(document).ready(function () {
         $('#modal1').modal('show');
      });
        document.querySelector("#sgd").addEventListener("click", function () {
            document.querySelector("#sgdV").classList.remove("hide");
        }
        );
        document.querySelector("#myr").addEventListener("click", function () {
            document.querySelector("#sgdV").classList.add("hide");
        }
        )
    </script>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

