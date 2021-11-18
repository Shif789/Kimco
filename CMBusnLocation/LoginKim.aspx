<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="LoginKim.aspx.vb" Inherits="CMBusnLocation_LoginKim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="container py-4 py-sm-5">
        <h1 class="pt-3 pb-5 text-dark">Welcome</h1>
        <form class="mt-4">
            <div class="form-group form-row">
                <div class="col-4 my-auto">
                    <select class="custom-select rounded-pill">
                         <option selected>MY +60</option>
                         <option value="1">SG +65</option>
                         <option value="2">ID +62</option>
                         <option value="3">PH +63</option>
                    </select>
                </div>
                <div class="col-8">
                    <input ID="phoneNumber" class="form-control rounded-pill" type="number" placeholder="Phone Number"/>
                </div>
            </div>
            <div class="form-group">
                <input ID="pin" class="form-control text-center rounded-pill" type="password" placeholder="PIN" style="letter-spacing:0.2rem"/>
            </div>
            <div class="mt-4 mb-2 text-center">
                Using
                <a href="#" style="text-decoration:none; color:black"><u>mobile number</u></a>
                or
                <a href="#" style="text-decoration:none; color:black"><u>email</u></a>
            </div>
            <div class="mb-5 text-center">
                
                <a href="#" style="text-decoration:none; color:black">Forgot PIN ?</a>
                
            </div>

            <button class="btn btn-block btn-lg btn-warning rounded-pill text-white">LOGIN</button>
        </form>
    </div>
</asp:Content>

