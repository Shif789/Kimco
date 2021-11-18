<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="qr.aspx.vb" Inherits="CMBusnLocation_qr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
         <a href="HomePageNew.aspx" class="btn btn-lg d-lg-none btn-warning btn-block mt-0 mb-3 rounded text-white shadow fixed-top" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">BACK</a>
    <div class="container my-3 my-md-5 d-none  d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <%--<h3>Cash Reload</h3>--%>
                <div class="btn-toolbar ml-auto">
                    <%--<a href="#" class="btn btn-warning mr-2">Transfer</a>--%>
                    <a href="HomePageNew.aspx" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
    <div class="container my-5">
        <div class="text-center">
            <div class="rounded p-1 bg-white d-inline-block mb-3">
                <img src="../assets/images/KIMCO ICONS/qr.png" class="img-fluid" style="width:30%" />
            </div>
            <div style="font-size:20px">
                <label>Rate for your downline</label>
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <div>
                    Commission
                    <br />
                    <span class="display-4">
                        40%
                    </span>
                </div>
            </div>
            <a class="btn btn-warning my-3">Edit</a>
            <div>
                <input class="form-control form-control-lg" type="text" value="https://www.atm88.org/signup?token=RUyANHP6EA8LyQ985xeAEFEafMuvz2Jn" />
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="#" class="mr-4">
                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SMS-2dffa0b175e37d81fdcbf1862e75b326.svg" width="40px" />
            </a>
            <a href="#" class="mr-4">
                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/Whatsapp-41385e9d415a20cee9f7aa748e97f1f4.svg"  width="40px"/>
            </a>
            <button class="btn" type="button">
                <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/copy-38a128c058e24c36a10c7f0b50260492.svg" width="40" />
            </button>
        </div>
    </div>
</asp:Content>

