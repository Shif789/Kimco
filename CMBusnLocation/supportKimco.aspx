<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="supportKimco.aspx.vb" Inherits="CMBusnLocation_termsCondition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
   
    <style>
        a{
            color:blue;
        }
    </style>

    <div class="container my-3 my-md-5">
        <img src="../assets/KimcoLottoBG.png" class="h-50 w-50 img-fluid" style="margin-left:25%" />
        <div class="mb-4 mt-4">
            <h3 class="bg-golden text-white text-center">Contact Detail</h3>
                <div class="row">
                    <div class="col-lg-5 col-md-12 col-sm-12 card card-body shadow mx-auto" style="border-radius:15px; border-color:gold; border-width:3px">
                        <i class="fas fa-envelope-square fa-4x" style="color:blue"></i>
                        <h2>Email</h2>
                        <a href="#">kimco@gmail.com</a>
                    </div>
                    <div class="col-lg-5 col-md-12 col-sm-12 card card-body shadow mx-auto" style="border-radius:15px; border-color:gold; border-width:3px">
                        <i class="fab fa-whatsapp-square fa-4x" style="color:green"></i>
                        <h2>Mobile No.</h2>
                        <a href="#">+60123456</a>
                    </div>
                </div>
        </div>
        
    </div>

    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

