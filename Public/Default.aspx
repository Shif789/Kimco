<%@ Page Title="" Language="VB" MasterPageFile="Site.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="PublicV3_SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="WizUpdatePanel" runat="server" UpdateMode="Conditional" >
 <Triggers>    
   <%--  <asp:PostBackTrigger ControlID="BtnGetSMS" />
     <asp:PostBackTrigger ControlID="BtnSignUp" />  --%>   
</Triggers>
<ContentTemplate>

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content" style="border:0px;">
<!-- ============================ COMPONENT REGISTER   ================================= -->
    <% If Not Request.Browser.IsMobileDevice Then %> 
<header class="hero" style="align-items:center;">
        <div class="container" style="align-items:center;min-height:450px;">            
            <h1 style="padding-top:20px;color:white;">诚招代理 Agent Needed!</h1>
            <p style="color:white;">请致电与我们联系 Please contact us +6011-1683 6319</p>
            <p>
            </p>
            <div>
                <asp:Button ID="Button1" runat="server" Text="Watsapp Now"  OnClick="ReadMore_Click" Width="150px" class="btn btn-primary" style="background-color:lawngreen;color:#000;border-color:lawngreen;" />
                <asp:Button ID="BtnShopNow" runat="server" Text="Call Now"  OnClick="ShopNow_Click" Width="150px" class="btn btn-secondary" style="background-color:#eee;color:#000;" />			                       			
            </div>
            <br />          
	</div><!-- col // -->	
</div> <!-- row.// -->
        </div>
 </div>      
    </header>
    <% else %> 
    <header class="hero2" style="align-items:center;">
        <div class="container" style="align-items:center;min-height:450px;">            
            <h3 style="padding-top:20px;color:white;">诚招代理 Agent Needed!</h3>
            <p style="color:white;">请致电与我们联系 Please contact us at<br /><br />&nbsp;&nbsp;&nbsp;+6011-1683 6319</p>
            <p>
            </p>
            <div>
                <asp:Button ID="Button2" runat="server" Text="Watsapp Now"  OnClick="ReadMore_Click" Width="150px" class="btn btn-primary" style="background-color:lawngreen;color:#000;border-color:lawngreen;" />
                <asp:Button ID="Button3" runat="server" Text="Call Now"  OnClick="ShopNow_Click" Width="150px" class="btn btn-secondary" style="background-color:#eee;color:#000;" />			                       			
            </div>
            <br />          
	</div><!-- col // -->	
</div> <!-- row.// -->
        </div>
 </div>      
    </header>

    <% End If %>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

</ContentTemplate>    
</asp:UpdatePanel>
</asp:Content>

