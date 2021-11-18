<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="selectUser.aspx.vb" Inherits="CMBusnLocation_selectUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="container my-3 my-md-5 d-none  d-lg-block">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center py-2 my-2">
                <%--<h3>Cash Reload</h3>--%>
                <div class="btn-toolbar ml-auto">
                    <%--<a href="#" class="btn btn-warning mr-2">Transfer</a>--%>
                    <a href="pointsTransfer.aspx" class="btn btn-warning" <%--style="background-color:#A9A9A9"--%>>Back</a>
                </div>
            </div>
        </div>
 <a href="pointsTransfer.aspx" class="btn btn-lg d-lg-none btn-warning btn-block mt-0 mb-3 rounded text-white shadow fixed-bottom" <%--style="background-image:url('https://s3-ap-southeast-1.amazonaws.com/assets.squarrific.com/fortune-web/assets/SCRed-a2c890f677aac5cd4c7a0d1e11daab93.jpg'); background-size:cover; background-color:red"--%> type="button">BACK</a>

    <div class="container my-3 my-md-5">
        <form method="post">
            <div class="input-group my-3">
                <input class="form-control shadow rounded-right" placeholder="Name / Email" type="text" style="border-radius:15px" />
                <div class="input-group-append">
                    <button type="submit" class="btn btn-sm btn-outline-secondary btn-block  rounded-left shadow" style="border-radius:15px">
                        Search
                    </button>
                </div>
            </div>
        </form>
        <div class="card">
            <ul class="list-group list-group-flush"></ul>
        </div>
        <div class="text-center text-muted p-3">
            <div><i class="far fa-hand-peace"></i></div>
        </div>
    </div>
    <!--Scripts-->
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

