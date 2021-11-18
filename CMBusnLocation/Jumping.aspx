<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="Jumping.aspx.vb" Inherits="Apply_Loan" Theme="CMAdmin" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="Server">

    <style>
        .tab {
            display: none;
        }

        .upCase{
            text-transform: uppercase;
        }

        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            padding: 0;
            /*CSS counters to number the steps*/
            counter-reset: step;
        }

            #progressbar li {
                list-style-type: none;
                color: black;
                text-transform: uppercase;
                font-size: 9px;
                width: 14%;
                float: left;
                position: relative;
                letter-spacing: 1px;
                text-align: center;
            }

                #progressbar li:before {
                    content: counter(step);
                    counter-increment: step;
                    width: 24px;
                    height: 24px;
                    line-height: 24px;
                    display: block;
                    font-size: 12px;
                    background: lightgrey;
                    border-radius: 25px;
                    margin: 0 auto 10px auto;
                }

                /*progressbar connectors*/
                #progressbar li:after {
                    content: '';
                    width: 100%;
                    height: 2px;
                    background: lightgrey;
                    position: absolute;
                    left: -50%;
                    top: 9px;
                    z-index: -1; /*put it behind the numbers*/
                }

                #progressbar li:first-child:after {
                    /*connector not needed before the first step*/
                    content: none;
                }

                /*marking active/completed steps green*/
                /*The number of the step and the connector before it = green*/
                #progressbar li.active:before,
                #progressbar li.active:after {
                    background: #ee0979;
                    color: white;
                }
    </style>

   
    <form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <!-- Online Gateway Message Panel start -->
       <div class="container">
        <div class="row">
            <div class="col-3">
                <div>
                    <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl="~/assets/images/jh.JPG" Width="50%" />
                    <asp:Label ID="SalesType" runat="server" Text="Label" Visible="false"></asp:Label>
                      <asp:Label ID="LblOrderSts" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </div>
            <div class="col-9">
                <div class="row">
                    <div class="col-6"></div>
                    <div class="col-6 text-right">
                     <i class="fas fa-map-marker-alt"></i>
                    <p class="lead d-inline">No.50-05 Jalan ECO Cascadia 6/2,Taman Setia ECO Cascadia,81100 Johor Bahru, (Second-Floor)</p>
                </div>
                </div>
                <div class="row bg-dark text-light">
                    <div class="col-6 text-left"><h3 class="mt-2">MBLE FITNESS</h3></div>
                    <div class="col-6 text-right"><p class="mt-3">202003343386 (0032003448-M)</p></div>
                </div>
                <div class="row text-left">
                    <div class="col-4"><i class="fas fa-phone-square-alt"></i><h6 class="d-inline ml-1">+6016 478 9566</h6></div>
                    <div class="col-4"><i class="fas fa-envelope"></i><h6 class="d-inline ml-1">hello@mble.my</h6></div>
                    <div class="col"><i class="fas fa-globe"></i><h6 class="d-inline ml-1">www.mble.my</h6></div>
                </div>
            </div>
        </div>
       </div>
        <br />
        <br />
        <ul id="progressbar">           
            <li class="active">Jumping Form</li>
            <li>Agreement Details</li>
        </ul>

        
        <!-- Jumping Details -->
        <div class="tab card">
            <div class="card-body">
                <h5 class="card-title"><strong>Personal Details</strong></h5> 
                <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="row form-group mr-1"><asp:Label ID="lblname"  runat="server" Text="Name"></asp:Label>&nbsp&nbsp<asp:TextBox ID="FullName" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox></div>
                        <div class="row form-group mr-1"><asp:Label ID="lbladdress"  runat="server" Text="Address">
                         </asp:Label>&nbsp&nbsp<asp:TextBox ID="FullAddress" runat="server" MaxLength="100" TextMode="MultiLine" 
                             class="form-control" required="true" style="OVERFLOW:hidden; height:194px; resize:none;"></asp:TextBox></div>
                    </div>
                    <div class="col-6">
                        <div class="row form-group"><asp:Label ID="lblnric"  runat="server" Text="NRIC/Passport No."></asp:Label>&nbsp&nbsp<asp:TextBox ID="NRIC" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox></div>
                        <div class="row form-group"><asp:Label ID="lbldob"  runat="server" Text="DOB"></asp:Label>&nbsp&nbsp<asp:TextBox ID="DOB" TextMode="Date" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox></div>
                        <div class="row form-group"><asp:Label ID="lblcontact"  runat="server" Text="Contact"></asp:Label>&nbsp&nbsp<asp:TextBox ID="MobileNo" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox></div>
                        <div class="row form-group"><asp:Label ID="lblemail"  runat="server" Text="Email"></asp:Label>&nbsp&nbsp<asp:TextBox ID="Email" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox></div>
                    </div>
                </div>
                </div>
                <p class="lead d-block">How did you find about Jumping Fitness Johor Bahru ?</p>
                <asp:RadioButtonList ID="AcknowledgementMode"  RepeatLayout="Flow" RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem Value="flyer">&nbsp Flyer &nbsp</asp:ListItem>
                        <asp:ListItem Value="signboard">&nbsp Signboard &nbsp</asp:ListItem>
                        <asp:ListItem Value="web/fb">&nbsp Web/FB &nbsp</asp:ListItem>
                        <asp:ListItem Value="intro">&nbsp Intro &nbsp</asp:ListItem>
                    </asp:RadioButtonList>
               <%--<fieldset id="AcknowledgementMode">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="AcknowledgementMode" id="exampleRadios1" value="option1">
                  <label class="form-check-label" for="exampleRadios1">
                  Flyer
                  </label>
               </div>
               <div class="form-check form-check-inline">
                 <input class="form-check-input" type="radio" name="AcknowledgementMode" id="exampleRadios2" value="option2">
                 <label class="form-check-label" for="exampleRadios2">
                   Signboard
                 </label>
              </div>
              <div class="form-check form-check-inline">
                 <input class="form-check-input" type="radio" name="AcknowledgementMode" id="exampleRadios3" value="option3">
                 <label class="form-check-label" for="exampleRadios3">
                   Web/FB
                 </label>
             </div>
                <div class="form-check form-check-inline">
                 <input class="form-check-input" type="radio" name="AcknowledgementMode" id="exampleRadios4" value="option4">
                 <label class="form-check-label" for="exampleRadios4">
                   Intro
                 </label>
             </div>
            </fieldset>--%>
                <br />
                <br />
                <br />
                 <div>
                    <div class="row">
                        <div class="col-6">
                            <h4><strong>Purpose</strong></h4>
                           <div class="container">
                            <fieldset id="groupCheckBox">
                            <div class="row form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" name="groupCheckBox" id="cbtn1" value="opt1">
                                  <label class="form-check-label" for="rbtn1">
                                  Diet/Lose Weight
                                  </label>
                                 </div>
                            </div>
                            <div class="row form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" name="groupCheckBox" id="cbtn2" value="opt2">
                                  <label class="form-check-label" for="rbtn2">
                                  Build Strength & Stamina
                                  </label>
                                 </div>
                            </div>
                               <div class="row form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" name="groupCheckBox" id="cbtn3" value="opt3">
                                  <label class="form-check-label" for="rbtn3">
                                  Release Stress
                                  </label>
                                 </div>
                            </div>
                               <div class="row form-group">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" name="groupCheckBox" id="cbtn4" value="opt4">
                                  <label class="form-check-label" for="rbtn4">
                                  Improve overall health
                                  </label>
                                 </div>
                            </div>
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="exampleRadios" id="cbtn5" value="opt5">
                                        <label class="form-check-label" for="rbtn5">
                                        Other
                                        </label>
                                       </div>
                                   </div>
                                <div class="col-6">
                                    <input type="text" id="txtOther" class="form-control" />
                                </div>
                            </div>
                            </fieldset>
                           </div>
                        </div>
                        <div class="col-6">
                            <h4><strong>Details</strong></h4>
                           <div class="container">
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <label for="WaterConsumption">Litres of water drank in a day</label>
                                   </div>
                                   <div class="col-6">
                                       <asp:TextBox ID="WaterConsumption" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <label for="Breakfast">BreakFast</label>
                                   </div>
                                   <div class="col-6">
                                       <asp:TextBox ID="Breakfast" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <label for="Lunch">Lunch</label>
                                   </div>
                                   <div class="col-6">
                                       <asp:TextBox ID="Lunch" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <label for="Dinner">Dinner</label>
                                   </div>
                                   <div class="col-6">
                                       <asp:TextBox ID="Dinner" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox>
                                   </div>
                               </div>
                               <div class="row form-group">
                                   <div class="col-6 pl-0">
                                       <label for="Vitamins">Currently consuming any vitamins or supplements</label>
                                   </div>
                                   <div class="col-6">
                                       <asp:TextBox ID="Vitamins" runat="server" MaxLength="20" class="form-control" required="true"></asp:TextBox>
                                   </div>
                               </div>
                           </div>
                        </div>
                    </div>
                 </div>
                
                <div>
                   <h5 class="card-title"><strong>Price Package</strong></h5>
                    <asp:RadioButtonList ID="PricePackage" RepeatLayout="Flow" RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem Value="1" Selected="True">&nbsp FIRST TIMER *RM90 3 Classes &nbsp</asp:ListItem>
                        <asp:ListItem Value="2">&nbsp JUMP 4 RM150 &nbsp</asp:ListItem>
                        <asp:ListItem Value="3">&nbsp JUMP 20 RM500 Most Recommended &nbsp</asp:ListItem>
                        <asp:ListItem Value="4">&nbsp SINGLE JUMP RM50 &nbsp</asp:ListItem>
                        <asp:ListItem Value="5">&nbsp JUMP 10 RM300 &nbsp</asp:ListItem>
                        <asp:ListItem Value="6">&nbsp JUMP 40 RM900 &nbsp</asp:ListItem>
                        <asp:ListItem Value="7">&nbsp TRIPPLE JUMP RM120 &nbsp</asp:ListItem>
                    </asp:RadioButtonList>
                    <%--<fieldset id="PricePackage">
                    <div class="row">
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice1" value="price1">
                                  <label class="form-check-label" for="rbtnPrice1">
                                  <strong>FIRST TIMER *</strong>  <sup>RM</sup>90 <br /><sup>3 Classes</sup>
                                  </label>
                                 </div>
                        </div>
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice2" value="price2">
                                  <label class="form-check-label" for="rbtnPrice2">
                                  <strong>JUMP 4</strong>  <sup>RM</sup>150
                                  </label>
                                 </div>
                        </div>
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice3" value="price3">
                                  <label class="form-check-label" for="rbtnPrice3">
                                  <strong>JUMP 20</strong>  <sup>RM</sup>500<br /><sup>Most Recommended</sup> 
                                  </label>
                                 </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice4" value="price4">
                                  <label class="form-check-label" for="rbtnPrice4">
                                  <strong>SINGLE JUMP</strong>  <sup>RM</sup>50
                                  </label>
                                 </div>
                        </div>
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice5" value="price5">
                                  <label class="form-check-label" for="rbtnPrice5">
                                  <strong>JUMP 10</strong>  <sup>RM</sup>300
                                  </label>
                                 </div>
                        </div>
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice6" value="price6">
                                  <label class="form-check-label" for="rbtnPrice6">
                                  <strong>JUMP 40</strong>  <sup>RM</sup>900<br /><sup>Couple</sup> 
                                  </label>
                                 </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="PricePackage" id="rbtnPrice7" value="price7">
                                  <label class="form-check-label" for="rbtnPrice7">
                                  <strong>TRIPPLE JUMP</strong>  <sup>RM</sup>120
                                  </label>
                                 </div>
                        </div>
                    </div>
                    </fieldset>--%>
                    <br />
                    <br />
                    <p>* Valid for first time registration only</p>
                </div>
            </div>
        </div>

        <!-- Agreement Details -->
        <div class="tab card">
            <div class="card-body">
                <h5 class="card-title"><strong>Membership Terms & Conditions</strong></h5>
                <div class="container">
                    <ol>
                        <li class="form-group">All members must wear proper sports attire, clean indoor sports shoes (shoes which are worn
                            outdoor can damage and dirty the trampoline mat due to small stones/sand and cause discomfort to
                            other customers) during Jumping session.
                        </li>
                        <li class="form-group">
                            All first-timers are eligible for the First Timer Package of 3 sessions for RM90. All paid amount is
                            not refundable except for long-term business trips, move to another state/country, or long-term
                            hospitalization. All refund is subjected to a 10% penalty
                        </li>
                        <li class="form-group">
                            The management and its instructors are not responsible for any loss of personal belongings. All
                            customers are advised to take good care of their personal belongings by placing their valuable
                            items beside the trampoline during the jumping session.
                        </li>
                        <li class="form-group">
                            All customers must read and sign the Indemnity and Par-Q Form. The management and its
                            instructors are not responsible for any mishap, injury, sickness or bodily pain before, during and
                            fter any Jumping Fitness session.
                        </li>
                        <li class="form-group">
                            All personal details provided in this member registration form will be kept confidential within the
                            management and the customer him/herself.
                        </li>
                        <li class="form-group">
                            Kindly take note that a new time schedule can be formed if there are more than 10 customers in
                            that new time schedule. Likewise, time schedule can be changed if there are less than 5
                            customers in a session. 
                        </li>
                        <li class="form-group">
                            Class Cancellation Policy: Customer is required to update in advance (12 hours) prior to the
                            class session. Otherwise, management has the right to forfeit the payment.
                        </li>
                    </ol>
                    <p>I fully understand and agree on the Jumping Fitness Membership Terms & Conditions and do/will not
                       hold the management of Jumping Fitness Johor Bahru (MBLE Fitness) responsible for any mishap,
                       accident, injuries or loss of personal belonging(s).
                    </p>
                    <div class="container">
                        <div class="row">
                        <div class="col-4">
                            <h6>Sign by customer:</h6>
                            <br />
                            <br />
                            <br />
                            <p>_________________________</p>
                            <div class="row">
                                <p>Name:</p>&nbsp&nbsp<asp:Label ID="aName" runat="server"></asp:Label>
                            </div>
                            <div class="row">
                                <p>NRIC/Passport No.:</p>&nbsp&nbsp<asp:Label ID="aNRIC" runat="server"></asp:Label>
                            </div>
                            <div class="row form-group">
                                <p>Date(DD.MM.YYYY):</p>&nbsp&nbsp<asp:Label ID="aDate" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="col-4 offset-2">
                            <h6>Sign by management:</h6>
                            <br />
                            <br />
                            <br />
                            <p>_________________________</p>
                            <div class="row form-inline">
                                <p>Name:</p>&nbsp&nbsp<asp:TextBox ID="ManagerName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Borrower Details -->
        <%--<div class="tab card">
            <div class="card-body">
                <h5 class="card-title">Buyer Details</h5>
                <br />
                <div class="row">
                    <div class="form-group col-md-3">
                        <label for="Name">Customer Group</label>
                        <asp:DropDownList ID="CustomerGroup" runat="server" AppendDataBoundItems="true" required="true" class="form-control">                                                           
                        </asp:DropDownList> 
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Name">* Full Name (as ID card)</label>
                        <asp:TextBox ID="Name" runat="server" MaxLength="100" class="form-control" required="true"></asp:TextBox>
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="Sex">* Gender</label>
                        <br />
                        <asp:DropDownList ID="Gender" runat="server" AppendDataBoundItems="true" class="form-control">
                            <asp:ListItem Value="" disabled="disabled" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="NewIcNo">* (New) IC No.</label>
                        <asp:TextBox ID="NewIcNo" runat="server" MaxLength="14" class="form-control" pattern="\d{6}-\d{2}-\d{4}" required="true" placeholder="XXXXXX-XX-XXXX"></asp:TextBox>
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="OldIcNo">(Old) IC No.</label>
                        <asp:TextBox ID="OldIcNo" runat="server" MaxLength="14" class="form-control"></asp:TextBox>
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="PassNo">&nbsp&nbsp Passport No. (if foreign citizen *)</label>
                        <asp:TextBox ID="PassNo" runat="server" MaxLength="30" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="HPNo">* H/P No.</label>
                        <asp:TextBox ID="MobileNo" runat="server" MaxLength="20" class="form-control" pattern="[0-9\- ]+" required="true"></asp:TextBox>
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="HomeTelNo">&nbsp&nbsp Home Tel No.</label>
                        <asp:TextBox ID="HomeTelNo" runat="server" MaxLength="20" class="form-control" pattern="[0-9\- ]+"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="MaritalStat">* Marital Status</label>
                        <asp:DropDownList ID="MaritalStat" runat="server" AppendDataBoundItems="true" class="form-control" onchange="CheckSelected(this.value, MaritalStatText);" ClientIDMode="static">
                            <asp:ListItem Value="" disabled="disabled" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="S">Single</asp:ListItem>
                            <asp:ListItem Value="M">Married</asp:ListItem>
                            <asp:ListItem Value="O">Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="MaritalStatText" placeholder="Please state here" runat="server" MaxLength="50" class="form-control" ClientIDMode="static" Style="display: none;"></asp:TextBox>
                        <%--<asp:CustomValidator ID="MaritalStatValidator" runat="server" Font-Size="Small" Font-Italic="true" ErrorMessage="Field is required" Text="*"
                                MaxLength="50" class="form-control" ControlToValidate="MaritalStatText" ValidateEmptyText="True" ClientValidationFunction="validate(MaritalStat)" />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="Race">* Race</label>
                        <asp:DropDownList ID="Race" runat="server" AppendDataBoundItems="true" class="form-control" onchange="CheckSelected(this.value, RaceText)" ClientIDMode="static">
                            <asp:ListItem Value="" disabled="disabled" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="M">Malay</asp:ListItem>
                            <asp:ListItem Value="C">Chinese</asp:ListItem>
                            <asp:ListItem Value="I">Indian</asp:ListItem>
                            <asp:ListItem Value="O">Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="RaceText" placeholder="Please state here" runat="server" MaxLength="50" class="form-control" ClientIDMode="static" Style="display: none;"></asp:TextBox>
                        <%--<asp:CustomValidator ID="RaceValidator" runat="server" Font-Size="Small" Font-Italic="true" ErrorMessage="Field is required"
                            MaxLength="50" class="form-control" ControlToValidate="RaceText" ValidateEmptyText="True" ClientValidationFunction="validate(Race)" />
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-8">
                        <label for="ResAddr">* Present Residental Address</label>
                        <asp:TextBox ID="Addr1" runat="server" MaxLength="200" class="form-control" placeholder="Street1" required="true"></asp:TextBox>
                        <div class="invalid-feedback">Field is required</div>
                        <br />
                        <asp:TextBox ID="Addr2" runat="server" MaxLength="200" class="form-control" placeholder="Street2"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="Addr3" runat="server" MaxLength="200" class="form-control" placeholder="Street3"></asp:TextBox>
                        <br />
                        <div class="form-row">
                            <div class="col-md-4">
                                <asp:TextBox ID="City" runat="server" MaxLength="30" class="form-control" placeholder="City"></asp:TextBox>
                                <br>
                            </div>
                            <div class="col-md-2">
                                <asp:TextBox ID="Postcode" runat="server" MaxLength="5" class="form-control" Width="100px" pattern="\d*" placeholder="Postcode"></asp:TextBox>
                                <br>
                            </div>
                            <div class="col-md-5">
                                <asp:DropDownList ID="StateCd" runat="server" AppendDataBoundItems="true" class="form-control" Width="280px">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="MY-01">Johor</asp:ListItem>
                                    <asp:ListItem Value="MY-02">Kedah</asp:ListItem>
                                    <asp:ListItem Value="MY-03">Kelantan</asp:ListItem>
                                    <asp:ListItem Value="MY-15">Labuan</asp:ListItem>
                                    <asp:ListItem Value="MY-04">Melaka</asp:ListItem>
                                    <asp:ListItem Value="MY-05">Negeri Sembilan</asp:ListItem>
                                    <asp:ListItem Value="MY-06">Pahang</asp:ListItem>
                                    <asp:ListItem Value="MY-07">Penang</asp:ListItem>                                    
                                    <asp:ListItem Value="MY-08">Perak</asp:ListItem>
                                    <asp:ListItem Value="MY-09">Perlis</asp:ListItem>
                                    <asp:ListItem Value="MY-16">Putrajaya</asp:ListItem>                                    
                                    <asp:ListItem Value="MY-12">Sabah</asp:ListItem>
                                    <asp:ListItem Value="MY-13">Sarawak</asp:ListItem>
                                    <asp:ListItem Value="MY-10">Selangor</asp:ListItem>
                                    <asp:ListItem Value="MY-11">Terengganu</asp:ListItem>
                                    <asp:ListItem Value="MY-14">Wilayah Persekutuan</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>                   
                </div>
            </div>
        </div>

         <!-- Upload Document-->
        <div class="tab card">
            <div class="card-body">
                <h5 class="card-title">Upload Documents</h5>
                <br />

                <div class="row">
                    <div class="form-group col-md-8">
                        <label for="DocumentUpload">* Documents to upload</label>
                        <asp:FileUpload runat="server" ID="UploadDocs" AllowMultiple="true" />  
                        <div class="invalid-feedback">Field is required</div>
                    </div>
                    
                </div>

                
            </div>
        </div>       

        <div class="tab card">
            <div class="card-body">
                <h5 class="card-title">Confirm your details here</h5>
                <br />
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row" style="width:50%;">Vehicle Details</th>
                            <th scope="row" style="width:50%;">Finacial Details</th>
                        </tr>
                        <tr class="border-bottom">
                            <td class="border-right">
                                Vehicle Id: <asp:Label ID="LblVID" runat="server" Text=""></asp:Label> <br />
                                Has stock?: <asp:Label ID="LblVHasStock" runat="server" Text=""></asp:Label> <br />
                                Brand: <asp:Label ID="LblVBrand" runat="server" Text=""></asp:Label><br />
                                Model: <asp:Label ID="LblVModel" runat="server" Text=""></asp:Label> <br />
                                Colour: <asp:Label ID="LblVColour" runat="server" Text=""></asp:Label> <br />
                                Engine No.: <asp:Label ID="LblVEngine" runat="server" Text=""></asp:Label> <br />
                                Chasis  No.: <asp:Label ID="LblVChasis" runat="server" Text=""></asp:Label> <br />                              
                            </td>       
                            <td>
                                Price (RM): <asp:Label ID="LblVPrice" runat="server" Text=""></asp:Label> <br />
                                Downpayment (RM): <asp:Label ID="LblVDeposit" runat="server" Text=""></asp:Label> <br />
                                Insurance (RM): <asp:Label ID="LblVInsurance" runat="server" Text=""></asp:Label> <br />
                                Handling Fees (RM): <asp:Label ID="LblVHandlingFees" runat="server" Text=""></asp:Label> <br />
                                Tender No (RM): <asp:Label ID="LblVTenderNo" runat="server" Text=""></asp:Label> <br />
                                Trade In (No Plate): <asp:Label ID="LblVTradeInNo" runat="server" Text=""></asp:Label> <br />
                                Trade In (RM): <asp:Label ID="LblVTradeIn" runat="server" Text=""></asp:Label> <br />
                                Other GFV / etc.: <asp:Label ID="LblVGFV" runat="server" Text=""></asp:Label> <br />
                            </td>
                        </tr>                                                
                        <tr>
                            <td colspan="2">
                                Remark: <asp:Label ID="LblVRemark" runat="server" Text=""></asp:Label> <br />
                            </td>
                        </tr>
                      <tr>
                            <th scope="row" colspan="2">Buyer Information</th>
                        </tr>           
                        <tr>
                            <td>
                                Full Name: <asp:Label ID="LblVName" runat="server" Text=""></asp:Label> <br />
                                Gender: <asp:Label ID="LblVGender" runat="server" Text=""></asp:Label>  <br />
                                (New) IC No.: <asp:Label ID="LblVNewIcNo" runat="server" Text=""></asp:Label>  <br />
                                (Old) IC No.: <asp:Label ID="LblVOldIcNo" runat="server" Text=""></asp:Label>  <br />
                                Passport No.: <asp:Label ID="LblVPassNo" runat="server" Text=""></asp:Label>  <br />
                                Mobile No: <asp:Label ID="LblVMobileNo" runat="server" Text=""></asp:Label>  <br />
                                Home Tel No.: <asp:Label ID="LblVHomeTelNo" runat="server" Text=""></asp:Label>  <br />
                                Marital Status: <asp:Label ID="LblVMaritalStat" runat="server" Text=""></asp:Label>  <br />
                                Race: <asp:Label ID="LblVRace" runat="server" Text=""></asp:Label>
                            </td>
                            <td>
                                Present Residental Address: <br />
                                <asp:Label ID="LblVAddr1" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>                                           
                        </tbody>
                </table>
            </div>
        </div>--%>


        <br />
        <!-- Buttons -->
        <div style="overflow: auto;">
            <div style="float: right;">
                <button type="button" class="btn btn-outline-secondary" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                <button type="button" class="btn btn-primary" id="nextBtn" onclick="nextPrev(1)">Next</button>
                <asp:Button ID="BtnSubmit" class="btn btn-primary" runat="server" Text="Submit" OnClick="submitForm"></asp:Button>
                <%--<asp:Button id="BtnConfirm" class="btn btn-primary" runat="server" text="Confirm" ClientIDMode="Static" OnClientClick="confirm_Click"></asp:Button>--%>
            </div>
        </div>


        <!-- Msg Box start -->
        <asp:Button runat="server" ID="hiddenPopup" Style="display: none" />
        <ajaxToolkit:ModalPopupExtender runat="server" ID="Alert" BehaviorID="programmaticModalPopupBehavior"
            TargetControlID="hiddenPopup" PopupControlID="PanelMsgFrame" RepositionMode="RepositionOnWindowScroll">
        </ajaxToolkit:ModalPopupExtender>
        <asp:Panel runat="server" ID="PanelMsgFrame" SkinID="PanelMsgFrame" Style="background-color: #eee;">
            <asp:Panel runat="Server" ID="PanelMsg" SkinID="PanelMsg">
                Message Box
            </asp:Panel>
            <asp:Panel runat="server" ID="PanelMsgContent" SkinID="PanelMsgContent">
                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <asp:LinkButton runat="server" ID="hideModalPopup" Text="Close" OnClick="HideMsgBox" />
            <br />
        </asp:Panel>
        <!-- Msg Box End -->
    </form>


    <script>
        var currentTab = 0;
        showTab(currentTab);

        //document.body.onload = LoadFormPanel();

        //function LoadFormPanel() {
         

        //}


        function showTab(n) {
            var tabs = document.getElementsByClassName("tab");
            tabs[n].style.display = "block";
            if (n == 0) {
                document.getElementById("prevBtn").style.display = "none";
            } else {
                document.getElementById("prevBtn").style.display = "inline";
            }
            if (n == (tabs.length - 1)) {
                document.getElementById("nextBtn").style.display = "none";
                <%=BtnSubmit.ClientID%>.style.display = "inline";

                 var a;
                a = document.getElementById('<%=FullName.ClientID %>').value;
                document.getElementById('<%=aName.ClientID %>').innerHTML = a;
                 var a;
                a = document.getElementById('<%=NRIC.ClientID %>').value;
                document.getElementById('<%=aNRIC.ClientID %>').innerHTML = a;
                <%--var a;
                a = document.getElementById('<%=KeyVehicleId.ClientID %>').value;
                document.getElementById('<%=LblVID.ClientID %>').innerHTML = a;

                a = document.getElementById('<%=HasStock.ClientID %>');
                var gettext = a.options[a.selectedIndex].text;  
                document.getElementById('<%=LblVHasStock.ClientID %>').innerHTML = gettext;

                var a;
                a = document.getElementById('<%=Brand.ClientID %>').value;
                document.getElementById('<%=LblVBrand.ClientID %>').innerHTML = a;

                a = document.getElementById('<%=ModelDDl.ClientID %>');
                var gettext = a.options[a.selectedIndex].text;  
                document.getElementById('<%=LblVModel.ClientID %>').innerHTML = gettext;

               
                 var a;
                a = document.getElementById('<%=Colour.ClientID %>').value;
                document.getElementById('<%=LblVColour.ClientID %>').innerHTML = a;
                 var a;
                a = document.getElementById('<%=EngineNo.ClientID %>').value;
                document.getElementById('<%=LblVEngine.ClientID %>').innerHTML = a;
                 var a;
                a = document.getElementById('<%=ChasisNo.ClientID %>').value;
                document.getElementById('<%=LblVChasis.ClientID %>').innerHTML = a;
                 var a;
                a = document.getElementById('<%=Price.ClientID %>').value;
                document.getElementById('<%=LblVPrice.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=Deposit.ClientID %>').value;
                document.getElementById('<%=LblVDeposit.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=Insurance.ClientID %>').value;
                document.getElementById('<%=LblVInsurance.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=HandlingFees.ClientID %>').value;
                document.getElementById('<%=LblVHandlingFees.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=TenderNo.ClientID %>').value;
                document.getElementById('<%=LblVTenderNo.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=TradeInVecNo.ClientID %>').value;
                document.getElementById('<%=LblVTradeInNo.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=TradeInAmt.ClientID %>').value;
                document.getElementById('<%=LblVTradeIn.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=OtherGFV.ClientID %>').value;
                document.getElementById('<%=LblVGFV.ClientID %>').innerHTML = a;

                var a;
                a = document.getElementById('<%=Remark.ClientID %>').value;
                document.getElementById('<%=LblVRemark.ClientID %>').innerHTML = a;--%>

                <%--var a;
                a = document.getElementById('<%=Name.ClientID %>').value;
                document.getElementById('<%=LblVName.ClientID %>').innerHTML = a;

                 a = document.getElementById('<%=Gender.ClientID %>');
                var gettext = a.options[a.selectedIndex].text;  
                document.getElementById('<%=LblVGender.ClientID %>').innerHTML = gettext;

                var a;
                a = document.getElementById('<%=NewIcNo.ClientID %>').value;
                document.getElementById('<%=LblVNewIcNo.ClientID %>').innerHTML = a;

                 var a;
                a = document.getElementById('<%=OldIcNo.ClientID %>').value;
                document.getElementById('<%=LblVOldIcNo.ClientID %>').innerHTML = a;

                 var a;
                a = document.getElementById('<%=PassNo.ClientID %>').value;
                document.getElementById('<%=LblVPassNo.ClientID %>').innerHTML = a;

                 var a;
                a = document.getElementById('<%=MobileNo.ClientID %>').value;
                document.getElementById('<%=LblVMobileNo.ClientID %>').innerHTML = a;

                 var a;
                a = document.getElementById('<%=HomeTelNo.ClientID %>').value;
                document.getElementById('<%=LblVHomeTelNo.ClientID %>').innerHTML = a;

                  a = document.getElementById('<%=MaritalStat.ClientID %>');
                var gettext = a.options[a.selectedIndex].text;  
                document.getElementById('<%=LblVMaritalStat.ClientID %>').innerHTML = gettext;

                 a = document.getElementById('<%=Race.ClientID %>');
                var gettext = a.options[a.selectedIndex].text;  
                document.getElementById('<%=LblVRace.ClientID %>').innerHTML = gettext;

                  b = document.getElementById('<%=StateCd.ClientID %>');
                var gettext = b.options[b.selectedIndex].text;  

                 a = document.getElementById('<%=Addr1.ClientID %>').value;
                a = a + "<br>" + document.getElementById('<%=Addr2.ClientID %>').value;

                if (document.getElementById('<%=Addr3.ClientID %>').value != "") {
                    a = a + "<br>" + document.getElementById('<%=Addr3.ClientID %>').value;
                }
                a = a + "<br>" + document.getElementById('<%=Postcode.ClientID %>').value + " " + document.getElementById('<%=City.ClientID %>').value;
                a = a + "<br>" + gettext;
                document.getElementById('<%=LblVAddr1.ClientID %>').innerHTML = a;--%>

            } else {
                document.getElementById("nextBtn").style.display = "inline";
                <%=BtnSubmit.ClientID%>.style.display = "none";
                <%--<%=BtnConfirm.ClientID%>.style.display = "none";--%>

            }
        }

        function nextPrev(n) {
            var tabs = document.getElementsByClassName("tab");

            if (validateTab(currentTab) || n == -1) {
                tabs[currentTab].style.display = "none";

                if (n == -1) {
                    $("#progressbar li").eq(currentTab).removeClass("active");
                }

                currentTab = currentTab + n;
                window.location = "#top";
                $("#progressbar li").eq(currentTab).addClass("active");

                showTab(currentTab);
            }
        }

        function validateTab(n) {
            var valid = true;
            var tabs = document.getElementsByClassName("tab");
            var inputs = tabs[n].getElementsByClassName("form-control");
            // A loop that checks every input field in the current tab:
            for (var i = 0; i < inputs.length; i++) {
                // If a field is empty...
                if (inputs[i].checkValidity() === false) {
                    inputs[i].classList.add('is-invalid');
                    valid = false;
                }
                else {
                    inputs[i].classList.remove('is-invalid');
                    inputs[i].classList.add('is-valid');
                }
            }
            return valid; // return the valid status
        }

        function CheckSelected(val, element) {
            if (val == 'O')
                element.style.display = 'block';
            else
                element.style.display = 'none';
        }

        //(function () {
        //    'use strict';
        //    window.addEventListener('load', function () {
        //        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        //        var forms = document.getElementsByClassName('needs-validation');
        //        // Loop over them and prevent submission
        //        var validation = Array.prototype.filter.call(forms, function (form) {
        //            form.addEventListener('submit', function (event) {
        //                if (form.checkValidity() === false) {
        //                    event.preventDefault();
        //                    event.stopPropagation();
        //                }
        //                form.classList.add('was-validated');
        //            }, false);
        //        });
        //    }, false);
        //})();
    </script>
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>

</asp:Content>

