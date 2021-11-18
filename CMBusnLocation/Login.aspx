<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="EBAdmin_Login" Theme="CMAdmin"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
        <style type="text/css">
            @media only screen and (max-width: 500px){
                .login-form {
                    border: 0;
                }
            }

            .login-form .form-group, .btn-container {
                margin: 0 auto;
                max-width: 330px;
            }

            .login-form .form-control {
                height: auto;
                font-size: 16px;
                padding: 10px;
            }
            
            .login-form #UserName {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }

            .login-form #Password {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>
    </head>

    <body>
        <div class="container body-content">
            <form id="form1" runat="server" class="needs-validation" novalidate="true">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />

            <div class="d-flex justify-content-center" style="margin-top:6%;">
                <div class="card text-center login-form" style="width:500px;">   
                
                    <img class="card-img-top" src="../assets/images/logo.png" alt="Chong Motor logo" />

                    <div class="card-body">
                        <p style="color:green;font-size:1.3rem;">Please enter your login details below: </p>
                        <p style="font-size:0.8rem;">** If you can't login please contact your system administrator.</p>
                    
                        <div class="form-group row">
                            <label class="sr-only" for="UserName">* User Name</label>
                            <asp:TextBox ID="UserName" runat="server" MaxLength="50" class="form-control" required="true" placeholder="Username"></asp:TextBox>
                            <div class="invalid-feedback">Field is required</div>
                        </div>
                        <div class="form-group row">
                            <label class="sr-only" for="Password">* Password</label>
                            <asp:TextBox ID="Password" runat="server" MaxLength="50" class="form-control" required="true" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <div class="invalid-feedback">Field is required</div>
                        </div> <br />

                        <div class="btn-container text-center">
                            <asp:Button ID="BtnLogin" runat="server" CausesValidation="true" Text="Login" CssClass="btn btn-block btn-primary"/>
                          <%--  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="ForgetPassword" ForeColor="Green" Font-Size="Small">Forget Password</asp:LinkButton> --%>
                        </div>

                        <!-- Msg Box start -->
                        <asp:Button runat="server" ID="hiddenPopup" Style="display: none" />
                        <ajaxtoolkit:modalpopupextender runat="server" id="Alert" behaviorid="programmaticModalPopupBehavior"
                            targetcontrolid="hiddenPopup" popupcontrolid="PanelMsgFrame" repositionmode="RepositionOnWindowScroll">
                        </ajaxtoolkit:modalpopupextender>
                        <asp:Panel runat="server" ID="PanelMsgFrame" SkinID="PanelMsgFrame">
                            <asp:Panel runat="Server" ID="PanelMsg" SkinID="PanelMsg">
                                Message Box</asp:Panel>
                            <asp:Panel runat="server" ID="PanelMsgContent" SkinID="PanelMsgContent">
                                <asp:Label ID="LblMsg" runat="server" Text=""></asp:Label>
                            </asp:Panel>
                            <asp:LinkButton runat="server" ID="hideModalPopup" Text="Close" OnClick="HideMsgBox" />
                            <br />
                        </asp:Panel>
                        <!-- Msg Box End -->
                    </div>
                </div>
            </div>

            </form>
        </div>
    </body>
</html>