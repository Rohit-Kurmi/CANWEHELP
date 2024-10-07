<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Hospitalregistration.aspx.cs" Inherits="Library_mng.Hospitalregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row text-center mt-3 mb-5">
        <h2 class="text-primary"><b><u>HOSPITAL REGISTRATION</u></b></h2>
    </div>


    <div class="container">
        <div class="box" style="margin-top: 40px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">
            <form id="hospitaltregistration" runat="server">

                <!-- note -->
                <div class="row ">
                    <div class="col-sm-12  border border-muted" style="background-color: #ffffb3; color: #ff0000; font-weight: bold; letter-spacing: 0px;">
                        Note :- All fields marked with *  are mandatory to be fill. 
                    </div>
                </div>

                <div class=" row d-md-flex">

                    <div class="col-md-3  border border-muted pb-5 py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="Txtname" class="form-control" placeholder="Hospital Name" runat="server" CssClass="tremove"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3  border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtregistrationno" class="form-control" placeholder="Hospital Registration No." runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3  border border-muted pb-5 py-4">
                        <div class="form-group  ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtgmail" class="form-control" placeholder="Gmail" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3  border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtweb" class="form-control" placeholder="Website" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                <div class="row d-md-flex">

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <span>Doctor At Home Availability</span><br />
                            <asp:RadioButton ID="RBdocyes" GroupName="doctor" CssClass="radio-inline" runat="server" Text="YES" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RBdocno" GroupName="doctor" CssClass="radio-inline" runat="server" Text="NO" />

                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <span>Nurse At Home Availability</span><br />
                            <asp:RadioButton ID="RBnurseyes" GroupName="nurse" CssClass="radio-inline" runat="server" Text="YES" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RBnurseno" GroupName="nurse" CssClass="radio-inline" runat="server" Text="NO" />


                        </div>
                    </div>


                    <div class="col-md-3  border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <span>Is there Emergency Service ?</span><br />
                            <asp:RadioButton ID="RBeneryes" GroupName="Emergency" CssClass="radio-inline" runat="server" Text="YES" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RBemerno" GroupName="Emergency" CssClass="radio-inline" runat="server" Text="NO" />

                        </div>
                    </div>
                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <span>Is there Any Dispensary?</span><br />
                            <asp:RadioButton ID="RBDisyes" GroupName="Dispensary" CssClass="radio-inline" runat="server" Text="YES" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="RBDisno" GroupName="Dispensary" CssClass="radio-inline" runat="server" Text="NO" />
                        </div>
                    </div>
                </div>

                <div class=" row d-md-flex">
                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtworkinghours" class="form-control" placeholder="Working Hours" runat="server" onblur="validateworkinghr();"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtmobileno" class="form-control" placeholder="Mobile No." runat="server" onblur="ValidateMno();"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txttelephone" class="form-control" placeholder="TelePhone No." runat="server" onblur="validatetelephone();"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtaddress" class="form-control" placeholder=" Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class="row d-md-flex">

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="dddstate" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dddstate_SelectedIndexChanged">
                                <asp:ListItem>----Select State----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="ddddistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddddistrict_SelectedIndexChanged">
                                <asp:ListItem>----Select District----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>


                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="dddcity" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select City----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtpin" class="form-control" placeholder="pincode" runat="server" onblur="ValidatePincode();"></asp:TextBox>
                        </div>
                    </div>
                </div>



                <div class="row d-md-flex" style="padding-top: 20px;">

                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtpwd" class="form-control" placeholder="Password" runat="server" onblur="CheckPWD();"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-3 border border-muted pb-5 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtcpwd" class="form-control " placeholder="Confirm Password" runat="server"></asp:TextBox>

                        </div>
                    </div>


                    <div class="col-md-3 pb-4 py-4  border border-muted">
                        <div class="form-group">
                            <asp:Button ID="btnreset" runat="server" Text="Reset" class="form-control submit bg-warning text-white px-3 px-4 rounded-pill" />
                        </div>
                    </div>


                    <div class="col-md-3 pb-4 py-4  border border-muted">
                        <div class="form-group ">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" class=" form-control submit bg-warning text-white px-3 px-4 rounded-pill" Onclick="BtnSubmit_Click"/>

                        </div>
                    </div>
                </div>


            </form>
        </div>
    </div>

</asp:Content>
