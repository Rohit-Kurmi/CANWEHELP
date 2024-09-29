<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="hospitalpatientreg.aspx.cs" Inherits="Library_mng.page.hospitalpatientreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="row pb-3 text-center">
     <div class="col">
         <h2 class=" text-primary"><b><u>PATIENT  REGISTRATION</u></b></h2>
         <br />
     </div>
 </div>


 <div class="container mb-5">
     <div class="box " style="margin-top: 40px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">
         <form id="patientregistration" runat="server">

             <!-- note -->
             <div class="row  border border-muted">
                 <div class="col-sm-12 " style="background-color: #ffffb3; color: #ff0000; font-weight: bold; letter-spacing: 0px;">
                     Note :- All fields marked with *  are mandatory to be fill. 
                 </div>
             </div>

             <!-- note -->
             <div class=" row d-md-flex ">
                 <div class="col-md-3 border border-muted pb-4 py-4" >
                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="Txtfn" class="form-control" placeholder="First Name" runat="server" onblur="return validateFname();"></asp:TextBox>
                     </div>
                 </div>

                 <div class="col-md-3 border border-muted pb-4 py-4">

                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="lastname" class="form-control" placeholder="Last Name" runat="server" onblur="return validateFname();"></asp:TextBox>

                     </div>
                 </div>


                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group  ">
                         <span class="text-danger">*</span>
                         <span>Gender</span><br />
                         <asp:RadioButton ID="rbtnMale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Male " />

                         &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; 

                         <asp:RadioButton ID="rbtnFemale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Female " />
                     </div>
                 </div>

                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group ">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtdob" class="form-control dob" runat="server" textmode="Date" placeholder="DOB MM/DD/YYYY"></asp:TextBox>
                     </div>
                 </div>
             </div>


             <div class=" row d-md-flex  ">
                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtgmail" class="form-control" placeholder="Gmail" runat="server" onblur="validateEmail();"></asp:TextBox>
                     </div>
                 </div>


                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtmobileno" class="form-control" placeholder="primary Mobile No." runat="server" onblur="ValidateMno();"></asp:TextBox>
                     </div>
                 </div>

                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group ">
                         <span class="text-danger">*</span>
                         <asp:DropDownList ID="DDbg" runat="server" CssClass="form-control" onblur="return ValidateBg();">
                             <asp:ListItem>----Select Blood Group----</asp:ListItem>
                             <asp:ListItem>A+</asp:ListItem>
                             <asp:ListItem>B+</asp:ListItem>
                             <asp:ListItem>AB+</asp:ListItem>
                             <asp:ListItem>O+</asp:ListItem>
                             <asp:ListItem>A-</asp:ListItem>
                             <asp:ListItem>B-</asp:ListItem>
                             <asp:ListItem>AB-</asp:ListItem>
                             <asp:ListItem>O-</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                 </div>


                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtaddress" class="form-control" placeholder=" Address" TextMode="MultiLine" runat="server" onblur="Validateaddress();"></asp:TextBox>
                     </div>
                 </div>
             </div>

             <div class="row d-md-flex  ">

                 <div class="col-md-3 border border-muted pb-4 py-4">
                     <div class="form-group ">
                         <span class="text-danger">*</span>

                         <asp:DropDownList ID="ddstate" runat="server" CssClass="form-control" AutoPostBack="true" onblur="return ValidateDistrict();" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
                             <asp:ListItem>----Select State----</asp:ListItem>
                         </asp:DropDownList>

                     </div>
                 </div>

                 <div class="col-md-3  border border-muted  pb-4 py-4">
                     <div class="form-group ">
                         <span class="text-danger">*</span>
                         <asp:DropDownList ID="dddistrict" runat="server" CssClass="form-control" AutoPostBack="true" onblur="return ValidateDistrict();" OnSelectedIndexChanged="dddistrict_SelectedIndexChanged">
                             <asp:ListItem>----Select District----</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                 </div>

                 <div class="col-md-3  border border-muted pb-4 py-4">

                     <div class="form-group ">
                         <span class="text-danger">*</span>

                         <asp:DropDownList ID="ddcity" runat="server" CssClass="form-control" AutoPostBack="true">
                             <asp:ListItem>----Select City----</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                 </div>


                 <div class="col-md-3  border border-muted  pb-4 py-4">

                     <div class="form-group ">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtpin" class="form-control" placeholder="pincode" runat="server" onblur="ValidatePincode();"></asp:TextBox>
                     </div>
                 </div>
             </div>




             <div class="row d-md-flex " >
                 <div class="col-md-3  border border-muted  pb-4 py-4">
                     <div class="form-group">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtpwd" class="form-control" placeholder="Password" runat="server" TextMode="Password" onblur="CheckPWD();"></asp:TextBox>
                       
                     </div>
                 </div>
                 <div class="col-md-3  border border-muted pb-4 py-4">
                     <div class="form-group ">
                         <span class="text-danger">*</span>
                         <asp:TextBox ID="txtcpwd" class="form-control " placeholder="Confirm Password" TextMode="Password" runat="server" onblur="CheckCPWD();"></asp:TextBox>
                         
                     </div>
                 </div>
                 <div class="col-md-3 pb-4 py-4  border border-muted">
                     <div class="form-group">
                         <asp:Button ID="btnreset" runat="server" Text="Reset" class="form-control submit bg-info text-white px-3 px-4" />


                     </div>
                 </div>
                 <div class="col-md-3 pb-4 py-4  border border-muted">
                     <div class="form-group ">

                         <asp:Button ID="BtnSubmit" runat="server" Text="Submit" class=" form-control submit bg-info text-white px-3 px-4" OnClick="BtnSubmit_Click" />

                   
                        
                     </div>
                 </div>
             </div>



         </form>
     </div>

 </div>



</asp:Content>
