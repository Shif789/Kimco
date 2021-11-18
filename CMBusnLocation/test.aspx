<%@ Page Title="" Language="VB" MasterPageFile="~/CMBusnLocation/busnsite.master" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="CMBusnLocation_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" Runat="Server">
    <!-- Button trigger modal -->
    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal1">
  Launch demo modal--%>
</button>
    <%--<div class="modal fade" id="modal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding-right:16px">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>hello</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>--%>
<div class="modal fade" id="modal1" tabindex="-1" aria-hidden="true" style="padding-right:16px">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content border-0">
                            <div class="modal-body bg-dark">
                                <button class="close" data-dismiss="modal" aria-label="Close" type="button">
                                    <span class="text-white" aria-hidden="true">
                                        <i class="fas fa-times" style="color:white"></i>
                                    </span>
                                </button>
                                <h3 class="text-white text-center pb-3">Key in your lucky number</h3>
                                <div class="p-1 text-center display-4 rounded mb-3 d-flex justify-content-center">
                                    <span class="text-white" style="letter-spacing:1rem">____</span>
                                </div>
                                <div class="btn-group btn-group-toggle mb-3 w-100">
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="3d" type="radio" value="3D"/>
                                        3D
                                    </label>
                                    <label class="btn btn-outline-danger active">
                                        <input aria-checked="true" id="4d" type="radio" value="4D"/>
                                        4D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="5d" type="radio" value="5D"/>
                                        5D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="6d" type="radio" value="6D"/>
                                        6D
                                    </label>
                                    <label class="btn btn-outline-danger">
                                        <input aria-checked="false" id="7d" type="radio" value="7D"/>
                                        7D
                                    </label>
                                </div>
                                <div>
                                    <div class="form-row">
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">7</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">8</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">9</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">4</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">5</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">6</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">1</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">2</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">3</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold btn-secondary text-white" style="background-color:#aaa; border-color:#aaa" type="button">0-9</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold text-white" style="background-color:#aaa; border-color:#aaa" type="button">0</button>
                                        </div>
                                        <div class="col-4 mb-2">
                                            <button class="btn btn-block btn-lg font-weight-bold text-white" style="background-color:orangered" type="button">
                                                <i class="fas fa-arrow-left text-white"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-3 pr-2">
                                        <button class="btn btn-block btn-lg btn-danger" type="button">
                                            <i class="fas fa-plus text-white"></i>
                                        </button>
                                    </div>
                                    <div class="col-9 pl-0">
                                        <button class="btn btn-success btn-block btn-lg" data-dismiss="modal" type="button">
                                            Save
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
       $(document).ready(function(){
        $("#modal1").modal('show');
    });
    </script>
    
    <script src="https://kit.fontawesome.com/ccf7730c24.js"></script>
</asp:Content>

