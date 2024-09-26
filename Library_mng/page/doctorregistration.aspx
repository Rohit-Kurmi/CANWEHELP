<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="doctorregistration.aspx.cs" Inherits="Library_mng.page.doctorregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row pb-3 text-center" style="margin-top: 90px;">
        <div class="col">
            <h2 class=" text-dark"><b><u>DOCTOR REGISTRATION</u></b></h2>
            <br />
        </div>
    </div>

    <div class="container" style="margin-bottom:150px">
        <div class="box " style="margin-top: 30px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">

            <div class="col-sm-12  border border-muted" style="background-color: #ffffb3; color: #ff0000; font-weight: bold; letter-spacing: 0px;">
                Note :- All fields marked with *  are mandatory to be fill. 
            </div>
            <form runat="server">

            <div class="row d-md-flex ">
                <div class="col-md-3 border border-muted  pb-4 py-4">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <asp:TextBox ID="txtfn" class="form-control" placeholder="Doctor first Name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3  border border-muted  pb-4 py-4">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <asp:TextBox ID="txtln" class="form-control" placeholder="Doctor last Name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3  border border-muted  pb-4 py-4 ">
                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <asp:TextBox ID="txtuprn" class="form-control" placeholder="Unique parmanent reg. No." runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3  border border-muted  pb-4 py-4">

                    <div class="form-group">
                        <span class="text-danger">*</span>
                        <span>Gender</span><br />
                        <asp:RadioButton ID="rbtnMale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Male " />
                        &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
                                    <asp:RadioButton ID="rbtnFemale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Female " />
                    </div>
                </div>


            </div>


 <div class="row d-md-flex ">


     <div class="col-md-3 border border-muted  pb-4 py-4">
         <div class="form-group">
             <span class="text-danger">*</span>
             <asp:TextBox ID="txtquali" class="form-control" placeholder="Doctor Qualification" TextMode="MultiLine" runat="server"></asp:TextBox>
             <asp:Label ID="lblerrorquali" CssClass="ErrorLabel" runat="server" Text="Label" Style="display: none; color: #ff0000"></asp:Label>
         </div>
     </div>
     <div class="col-md-3 border border-muted  pb-4 py-4">
         <div class="form-group">
             <span class="text-danger">*</span>
             <asp:TextBox ID="txtexper" class="form-control" placeholder="Doctor Experience" TextMode="MultiLine" runat="server"></asp:TextBox>
         </div>
     </div>
     <div class="col-md-3 border border-muted  pb-4 py-4">
         <div class="form-group">
             <span class="text-danger">*</span>
             <asp:TextBox ID="txtmno" class="form-control" placeholder="Mobile No" runat="server"></asp:TextBox>
         </div>
     </div>
     <div class="col-md-3 border border-muted  pb-4 py-4">
         <div class="form-group">
             <span class="text-danger">*</span>
             <asp:TextBox ID="txtgmail" class="form-control" placeholder="Gmail" runat="server"></asp:TextBox>
         </div>
     </div>
 </div>




                <div class="row d-md-flex ">

    <div class="col-md-3 border border-muted  pb-4 py-4">
        <span class="text-danger">*</span>
        <div class="form-group">
                    <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control" AutoPostBack="true">
                        <asp:ListItem>----Select speciality----</asp:ListItem>
                    </asp:DropDownList>
        </div>

    </div>
    <div class="col-md-3 border border-muted  pb-4 py-4">
        <div class="form-group">
            <span class="text-danger">*</span>
            <label for="txtfromtime">From Time</label>
                <asp:TextBox ID="txtfromtime" class="form-control "  TextMode="Time" placeholder="From Time" runat="server"></asp:TextBox>
            </div>
    </div>

    <div class="col-md-3 border border-muted  pb-4 py-4">
        <div class="form-group">
            <span class="text-danger">*</span>
             <label for="txttotime">To Time</label>
                <asp:TextBox ID="txttotime" class="form-control " TextMode="Time" placeholder="To Time" runat="server"></asp:TextBox>
                
                    <span class="fa fa-clock-o"></span>
                
        </div>
       
    </div>
    <div class="col-md-3 border border-muted  pb-4 py-4">

        <div class="form-group ">
            <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn  btn-info"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="BtnSubmit" runat="server" Text="Submit" class="btn  btn-info"  Onclick="BtnSubmit_Click"/>
        </div>
    </div>
</div>



</form>

        </div>
    </div>


</asp:Content>
