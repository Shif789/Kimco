<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="package.aspx.vb" Inherits="CMBusnLocation_package" %>

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
              <a class="nav-link active" href="package.aspx">Package</a>
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
    <div class="container my-3">
        <form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>
            <div class="row">
                <div class="col-8">
                    <div class="form-group my-auto">
                        <select class="form-control">
                          <option selected>Bet + 0%</option>
                          <option value="1">Bet + 5%</option>
                          <option value="2">Bet + 10%</option>
                          <option value="3">Bet + 15%</option>
                         </select>
                    </div>
                </div>
                <div class="col-4">
                    <button class="btn btn-warning rounded shadow" type="submit">Submit</button>
                </div>
            </div>
        </form>
        <div class="h1 mt-4" style="color:red">4D</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <thead>
                    <tr>
                        <th>
                            
                        </th>
                        <th>
                            <small><b>BIG</b></small>
                        </th>
                        <th>
                            <small><b>SMALL</b></small>
                        </th>
                        <th>
                            <small><b>A</b></small>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">2,500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">2,500</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">3,500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">3,500</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">6,000</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">6,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">1,000</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">1,000</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">2,000</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">2,000</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">500</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">1,000</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">1,000</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <small><b>SPECIAL</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">200</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">200</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>CONSOLATION</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">60</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">60</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="h1 mt-4" style="color:red">3D</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <tbody>
                    <tr>
                        <td>
                            <small><b>ABC</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">200</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">200</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>ABC</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">600</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">600</b>
                            </small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="h1 mt-4" style="color:red">5D</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">15,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">15,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">5,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">5,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">3,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">3,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>4TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">500</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">500</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>5TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">20</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">20</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>6TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">5</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">5</b>
                            </small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="h1 mt-4" style="color:red">6D</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">100,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">100,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">3,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">3,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">300</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">300</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>4TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">30</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">30</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>5TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">4</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">4</b>
                            </small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="h1 mt-4" style="color:red">7D</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">1,000,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">1,000,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">150,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">150,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">5,000</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">5,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>4TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">500</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">500</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>5TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">50</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">50</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>6TH PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-info">5</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                +
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span style="color:red">0</span>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <sup class="text-success">RM</sup>
                                <b class="text-success">5</b>
                            </small>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="h1 mt-4" style="color:red">IBOX 24</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <thead>
                    <tr>
                        <th>
                            
                        </th>
                        <th>
                            <small><b>BIG</b></small>
                        </th>
                        <th>
                            <small><b>SMALL</b></small>
                        </th>
                        <th>
                            <small><b>A</b></small>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">104.17</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">104.17</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">145.83</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">145.83</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">250</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">250</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">41.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">41.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">83.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">83.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">20.83</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">20.83</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">41.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">41.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <small><b>SPECIAL</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">8.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">8.33</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>CONSOLATION</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">2.5</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">2.5</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="h1 mt-4" style="color:red">IBOX 12</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <thead>
                    <tr>
                        <th>
                            
                        </th>
                        <th>
                            <small><b>BIG</b></small>
                        </th>
                        <th>
                            <small><b>SMALL</b></small>
                        </th>
                        <th>
                            <small><b>A</b></small>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">208.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">208.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">291.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">291.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">500</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">83.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">83.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">166.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">166.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">41.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">41.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">83.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">83.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <small><b>SPECIAL</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">16.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">16.67</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>CONSOLATION</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">5</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">5</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="h1 mt-4" style="color:red">IBOX 6</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <thead>
                    <tr>
                        <th>
                            
                        </th>
                        <th>
                            <small><b>BIG</b></small>
                        </th>
                        <th>
                            <small><b>SMALL</b></small>
                        </th>
                        <th>
                            <small><b>A</b></small>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">416.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">416.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">583.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">583.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">1,000</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">1,000</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">166.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">166.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">333.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">333.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">83.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">83.33</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">166.67</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">166.67</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <small><b>SPECIAL</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">33.33</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">33.33</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>CONSOLATION</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">10</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">10</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="h1 mt-4" style="color:red">IBOX 4</div>
        <div class="table-responsive mb-2">
            <table class="table table-hover table-sm rounded">
                <thead>
                    <tr>
                        <th>
                            
                        </th>
                        <th>
                            <small><b>BIG</b></small>
                        </th>
                        <th>
                            <small><b>SMALL</b></small>
                        </th>
                        <th>
                            <small><b>A</b></small>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <small><b>1ST PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">625</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">625</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">875</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">875</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">1,500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">1,500</b>
                            </small>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>2ND PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">250</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">250</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">500</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">500</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>3RD PRIZE</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">125</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">125</b>
                            </small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">250</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">250</b>
                            </small>
                        </td>
                        <td class="text-right">
                            
                        </td>
                    </tr>
                    <tr>
                         <td>
                            <small><b>SPECIAL</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">50</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">50</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td>
                            <small><b>CONSOLATION</b></small>
                        </td>
                        <td class="text-right">
                            <small>
                                <span class="text-muted">15</span>
                                <br />
                                +
                                <span style="color:red">0</span>
                                <br />
                                <sup class="text-success">RM</sup>
                                <b class="text-success">15</b>
                            </small>
                        </td>
                        <td class="text-right"></td>
                        <td class="text-right"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!--Scripts-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

