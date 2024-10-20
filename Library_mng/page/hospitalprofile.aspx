<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="hospitalprofile.aspx.cs" Inherits="Library_mng.page.hospitalprofile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #f5f5f5; /* Light background for better readability */
        }

        .profile-box {
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 40px;
        }

        .profile-header {
            font-family: 'Serif', sans-serif;
            color: #007bff;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .profile-label {
            font-weight: bold;
            color: #343a40;
        }

        .form-group label {
            font-weight: bold;
        }

        .btn-info {
            background-color: #17a2b8;
            border-color: #17a2b8;
            transition: background-color 0.3s;
        }

        .btn-info:hover {
            background-color: #138496;
            border-color: #138496;
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }

        .modal-footer {
            border-top: 1px solid #dee2e6;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }

        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }

        .container-fluid {
            padding-left: 0;
            padding-right: 0;
        }
    </style>

    <form runat="server">
        <div class="container-fluid">
            <h5 class="profile-header">My Profile</h5>

            <div class="profile-box">
                <div class="row">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">First Name :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblNAME" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Registration Number :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblREG" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Website :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblWEB" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Mail ID :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblGMAIL" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Telephone No. :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblTELE" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Mobile No :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblMNO" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">State :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblSTATE" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">District :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblDIST" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">City :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblCITY" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Address :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblADDRESS" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Working Hours :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblWH" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">PinCode :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblPINITAL" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Doctor At Home :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblDOC" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Nurse At Home :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblNUR" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Emergency Services :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblEMER" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row mt-3 mb-4">
                    <div class="col-lg-2 col-6">
                        <label class="profile-label">Dispensary :</label>
                    </div>
                    <div class="col-lg-2 col-6">
                        <asp:Label ID="lblDISP" runat="server" Text=""></asp:Label>
                    </div>
                </div>





<div class="row">
    <!-- Speciality List Section -->
    <div class="col-md-6 col-lg-6 mb-5">
        <label runat="server"><b>Speciality List</b></label>
        
        <!-- GridView for displaying Specialities -->
        <asp:GridView ID="hosspeclist" 
                      AutoGenerateColumns="true" 
                      runat="server" 
                      Font-Name="Verdana" 
                      ShowHeaderWhenEmpty="True"
                      CssClass="table table-striped table-bordered table-hover" 
                      AlternatingRowStyle-BackColor="#f5f5f5" 
                      HeaderStyle-BackColor="#3c8dbc"
                      HeaderStyle-ForeColor="White" 
                      Font-Size="10pt" 
                      CellPadding="4">
        </asp:GridView>

        <!-- Button to trigger adding speciality -->
        <asp:Button ID="btnspeciality" 
                    runat="server" 
                    Text="Add Speciality" 
                    CssClass="btn btn-info mt-3" 
                    CausesValidation="false" 
                    CommandName="insert" 
                    OnClick="btnspeciality_Click" />
    </div>

    <!-- Checkup List Section -->
    <div class="col-md-6 col-lg-6 mb-5">
        <label runat="server"><b>Checkup List</b></label>
        
        <!-- GridView for displaying Checkup list -->
        <asp:GridView ID="hoscheckuplist" 
                      AutoGenerateColumns="true" 
                      runat="server" 
                      Font-Name="Verdana" 
                      ShowHeaderWhenEmpty="True"
                      CssClass="table table-striped table-bordered table-hover" 
                      AlternatingRowStyle-BackColor="#f5f5f5" 
                      HeaderStyle-BackColor="#3c8dbc"
                      HeaderStyle-ForeColor="White" 
                      Font-Size="10pt" 
                      CellPadding="4">
        </asp:GridView>

        <!-- Button to trigger adding checkup -->
        <asp:Button ID="btncheckup" 
                    runat="server" 
                    Text="Add Checkup List" 
                    CssClass="btn btn-info mt-3" 
                    CausesValidation="false" 
                    CommandName="insert" 
                    OnClick="btncheckup_Click" />
    </div>
</div>



    <!-- Trigger the modal with a button -->
                <div class="row">

                    <div class="col-md-6">

                <div style="margin-bottom:30px;">
                  
                    <h4 >Add Speciality</h4>
                
                    <div>

                        <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control" AutoPostBack="true">
                            <asp:ListItem>----Select speciality----</asp:ListItem>

                        </asp:DropDownList>
                    </div>


               
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>

                    <asp:button ID="btnaddspecility" runat="server" type="submit" Text="ADD" class="btn btn-info" OnClick="btnaddspecility_Click" />
                </div>
            </div>
                        </div>
                      <div class="col-md-6">
                <div style="margin-bottom:30px;">       
                    <h4>Add Checkup</h4>
               

                
                    <div>

                        <asp:DropDownList ID="ddcheckup" runat="server" CssClass="form-control" AutoPostBack="true">
                            <asp:ListItem>----Select Checkup----</asp:ListItem>

                        </asp:DropDownList>
                    </div>


                
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>

                    <asp:button ID="btnaddcheckup" runat="server" Text="ADD" type="submit" class="btn btn-info"  OnClick="btnaddcheckup_Click"  />
                </div>
            </div> </div>
   
                    </div>

            </div>
        </div>
    </form>
</asp:Content>
