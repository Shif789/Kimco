<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="cashReload.aspx.vb" Inherits="CMBusnLocation_cashReload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="container my-3 my-md-5 d-none  d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <h3 class="d-block">Cash Reload</h3>
                <div class="btn-toolbar ml-auto d-block">
                    <a href="#" class="btn btn-warning mr-2">Transfer</a>
                    <a href="points.aspx" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
            <a href="points.aspx" class="btn btn-lg d-lg-none btn-warning btn-block mt-0 mb-3 rounded text-white shadow fixed-top" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">BACK</a>

        <div class="container my-3 my-md-5" style="padding-bottom:120px">
            <div class="form-group row mt-4">
                <label class="col-sm-3 col-form-label">
                    <b>Bank</b>
                </label>
                <div class="col-sm-9">
                    <select class="form-control">
                        <option selected>Please select a bank</option>
                        <option value="1">MBSB Bank</option>
                        <option value="2">AM Bank</option>
                        <option value="3">Affin Bank</option>
                        <option value="4">MayBank</option>
                   </select>
                </div>
            </div>
            <div>
                <div class="my-3">
                    Notice:
                    <br />
                    Our system may change the account anytime. 
                </div>
                <div>
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamations-20px-72969855a91a003d9d321b935b2e575b.svg" class="img-fluid pb-1" style="width:20px" />
                    Please confirm and follow the account information given before transfer.
                </div>
                <div class="my-3">
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/customer-service-20px-106e9c41fa0e4818970ea783a533d643.svg" class="img-fluid pb-1" style="width:20px" />
                    Our customer service will process within 30 minutes.
                </div>
                <div>
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamation-triangle-20px-cf8e2e25856f561a21fca872625890d5.svg" class="img-fluid pb-1" style="width:20px" />
                    <img src="https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/exclamation-triangle-20px-cf8e2e25856f561a21fca872625890d5.svg" class="img-fluid pb-1" style="width:20px" />
                    Please put your phone last 4 digit number as bank reference (e.g. 010-1234567  REF:4567).
                </div>
                <br />
                <div>
                    Our company will not be responsible for any loss and related liabilties caused by this.
                </div>
                <input type="checkbox" class="mt-3 pb-5" />
                I have read and agreed
            </div>

        </div>
            <button class="btn btn-lg d-lg-none btn-warning btn-block mt-2 my-2 rounded text-white shadow fixed-bottom" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">TRANSFER</button>

</asp:Content>

