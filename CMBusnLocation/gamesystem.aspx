<%@ Page Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="gamesystem.aspx.vb" Inherits="CMBusnLocation_VTradeInForm" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="Server">
    <style>
        .center {
  margin-left: auto;
  margin-right: auto;
}
    </style>
    <form runat="server" class="form-horizontal needs-validation" id="aspnetForm" method="post" novalidate>
        <div class="tab card"> 
            <div class="card-body">
              <div class="row">

              
                <table class="table table-bordered" style="width:300px; border-color:#808080">
                    <thead>
                       <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5" class="h1">Magnum 4D</td>
                           
                       </tr>
                    </thead>
                    <tbody style="text-align:center">
                        <tr>
                            <td colspan="5" style="text-align:left"><asp:Label ID="d1" runat="server" OnLoad="Page_Load"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 1</td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">F</sup> 8909</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 2 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">A</sup> 2915</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 3 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">M</sup> 5836</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">A</sup> -----</td>
                            <td><sup style="color:red">B</sup> 8909</td>
                            <td><sup style="color:red">C</sup> 8909</td>
                            <td><sup style="color:red">D</sup> 8909</td>
                            <td><sup style="color:red">E</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">F</sup> -----</td>
                            <td><sup style="color:red">G</sup> 8909</td>
                            <td><sup style="color:red">H</sup> 8909</td>
                            <td><sup style="color:red">I</sup> 8909</td>
                            <td><sup style="color:red">J</sup> 8909</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><sup style="color:red">K</sup> 8909</td>
                            <td><sup style="color:red">L</sup> 8909</td>
                            <td><sup style="color:red">M</sup> ----</td>
                            <td></td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">N</sup> 6465</td>
                            <td><sup style="color:red">O</sup> 8909</td>
                            <td><sup style="color:red">P</sup> 8909</td>
                            <td><sup style="color:red">Q</sup> 8909</td>
                            <td><sup style="color:red">R</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">S</sup> 5885</td>
                            <td><sup style="color:red">T</sup> 8909</td>
                            <td><sup style="color:red">U</sup> 8909</td>
                            <td><sup style="color:red">V</sup> 8909</td>
                            <td><sup style="color:red">W</sup> 8909</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                    </tbody>
                </table>

                <table class="table table-bordered center" style="width:300px; border-color:#808080">
                    <thead>
                       <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5" class="h1">Damacai 1+3D</td>
                           
                       </tr>
                    </thead>
                    <tbody style="text-align:center">
                        <tr>
                            <td colspan="5" style="text-align:left"><asp:Label ID="d2" runat="server" OnLoad="Page_Load"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 1</td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">F</sup> 8909</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 2 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">A</sup> 2915</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 3 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">M</sup> 5836</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">A</sup> -----</td>
                            <td><sup style="color:red">B</sup> 8909</td>
                            <td><sup style="color:red">C</sup> 8909</td>
                            <td><sup style="color:red">D</sup> 8909</td>
                            <td><sup style="color:red">E</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">F</sup> -----</td>
                            <td><sup style="color:red">G</sup> 8909</td>
                            <td><sup style="color:red">H</sup> 8909</td>
                            <td><sup style="color:red">I</sup> 8909</td>
                            <td><sup style="color:red">J</sup> 8909</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><sup style="color:red">K</sup> 8909</td>
                            <td><sup style="color:red">L</sup> 8909</td>
                            <td><sup style="color:red">M</sup> ----</td>
                            <td></td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Sports Toto</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">N</sup> 6465</td>
                            <td><sup style="color:red">O</sup> 8909</td>
                            <td><sup style="color:red">P</sup> 8909</td>
                            <td><sup style="color:red">Q</sup> 8909</td>
                            <td><sup style="color:red">R</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">S</sup> 5885</td>
                            <td><sup style="color:red">T</sup> 8909</td>
                            <td><sup style="color:red">U</sup> 8909</td>
                            <td><sup style="color:red">V</sup> 8909</td>
                            <td><sup style="color:red">W</sup> 8909</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                    </tbody>
                </table>

                <table class="table table-bordered" style="width:300px; border-color:#808080">
                    <thead>
                       <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5" class="h1">Sports Toto</td>
                           
                       </tr>
                    </thead>
                    <tbody style="text-align:center">
                        <tr>
                            <td colspan="5" style="text-align:left"><asp:Label ID="d3" runat="server" OnLoad="Page_Load"></asp:Label> </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 1</td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">F</sup> 8909</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 2 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">A</sup> 2915</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="background-color:#F8F8F8">Price 3 </td>
                            <td colspan="2" style="text-align:left"><sup style="color:red">M</sup> 5836</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">A</sup> -----</td>
                            <td><sup style="color:red">B</sup> 8909</td>
                            <td><sup style="color:red">C</sup> 8909</td>
                            <td><sup style="color:red">D</sup> 8909</td>
                            <td><sup style="color:red">E</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">F</sup> -----</td>
                            <td><sup style="color:red">G</sup> 8909</td>
                            <td><sup style="color:red">H</sup> 8909</td>
                            <td><sup style="color:red">I</sup> 8909</td>
                            <td><sup style="color:red">J</sup> 8909</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><sup style="color:red">K</sup> 8909</td>
                            <td><sup style="color:red">L</sup> 8909</td>
                            <td><sup style="color:red">M</sup> ----</td>
                            <td></td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                        <tr>
                            <td><sup style="color:red">N</sup> 6465</td>
                            <td><sup style="color:red">O</sup> 8909</td>
                            <td><sup style="color:red">P</sup> 8909</td>
                            <td><sup style="color:red">Q</sup> 8909</td>
                            <td><sup style="color:red">R</sup> 8909</td>
                        </tr>
                        <tr>
                            <td><sup style="color:red">S</sup> 5885</td>
                            <td><sup style="color:red">T</sup> 8909</td>
                            <td><sup style="color:red">U</sup> 8909</td>
                            <td><sup style="color:red">V</sup> 8909</td>
                            <td><sup style="color:red">W</sup> 8909</td>
                        </tr>
                        <tr>
                           <td style="text-align:center; background-color:#F8F8F8" colspan="5">Game</td>  
                       </tr>
                    </tbody>
                </table>
              </div>
            </div>
        </div>
    <%--<div class="tab card">
            <div class="card-body">
               <nav class="navbar navbar-dark bg-dark">
                    <span class="navbar-brand h1">Game</span>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-menu"></span> Menu</a></li>
    </ul>
                </nav>   
                <br/>
                <div class="row">
                  <div class="form-group col-md">
                    <div class="card">
                        <div class="card-body">
                            </div>
                    </div>
                  </div>
                 </div>
                <div class="row">
                    <div class="form-group col-md-7">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                    <div class="form-group col-md-5">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-7">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                    <div class="form-group col-md-5">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-7">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                    <div class="form-group col-md-5">
                     <div class="card">
                        <div class="card-body">
                            </div>
                     </div>
                    </div>
                </div>
                <br/>
                <div class="form-row">
                        <div class="form-group col-md-3">
                            <asp:Button id="BtnSubmit" class="btn btn-primary" runat="server" text="Submit" OnClick="Save" CausesValidation="false" ></asp:Button>&nbsp;&nbsp;
                        </div>
                         <div class="form-group col-md-6">
                             <asp:Label ID="LblCalSts" runat="server" Text="" Visible="false" ></asp:Label>
                             <asp:Label ID="LblCalErrMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                             </div>
                         </div>
            </div>
        </div>--%>
        </form>

 </asp:Content>   

