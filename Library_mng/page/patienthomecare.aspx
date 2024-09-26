<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patienthomecare.aspx.cs" Inherits="Library_mng.page.patienthomecare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row text-center" style="margin-top: 100px">
        <div class="col-12 text-primary">
            <h2><b><u>PATIENT HOMECARE</u></b></h2>
        </div>
    </div>
    <div class="container">

        <div class="box" style="margin-top: 40px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">
            <form runat="server">
                <!-- note -->
                <div class="row ">
                    <div class="col-sm-12 " style="background-color: #ffffb3; color: #ff0000; font-weight: bold; letter-spacing: 0px;">
                        Note :- All fields marked with *  are mandatory to be fill. 
                    </div>
                </div>

                <!----note---->



                <div class=" row d-md-flex">
                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <lable for="txtfromtime" runat="server">From Time</lable>
                            <asp:TextBox ID="txtfromtime" class="form-control " textmode="Time" placeholder="From Time" runat="server"></asp:TextBox>
                        </div>
                       

                    </div>
                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                             <lable for="txttotime" runat="server">To Time</lable>
                            <asp:TextBox ID="txttotime" class="form-control " textmode="Time" placeholder="To Time" runat="server"></asp:TextBox>
                        </div>
                       
                    </div>

                    <div class="col-md-3 tool-box border border-muted  py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtday" class="form-control" placeholder="How Many Days" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted   py-4">
                        <span class="text-danger">*</span>
                        <div class="form-group">
                            <asp:DropDownList ID="ddservices" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select services----</asp:ListItem>
                                <asp:ListItem>Nurse At Home</asp:ListItem>
                                <asp:ListItem>Doctor At Home</asp:ListItem>
                                <asp:ListItem>Othres</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>


                </div>



                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted  py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>

                            <asp:TextBox ID="txtdate" class="form-control" Textmode="Date" placeholder="Date" runat="server"></asp:TextBox>

                        </div>
                     
                    </div>
                    <div class="col-md-3 border border-muted  py-4">
                        <div class="form-group ">
                            <div class="form-field">
                                <span class="text-danger">*</span>
                                <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control" AutoPostBack="true">
                                    <asp:ListItem>----Select problem type----</asp:ListItem>
                                    <asp:ListItem>Normal</asp:ListItem>
                                    <asp:ListItem>Critical</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted  py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specifiy problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 border border-muted   py-4x">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:CheckBox ID="CBaddress" runat="server" AutoPostBack="true" /><span>Tick hare If address is same</span>
                            <asp:TextBox ID="txtaddress" class="form-control" placeholder=" Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>

                            <asp:DropDownList ID="ddstate" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
                                <asp:ListItem>----Select State----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="dddistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dddistrict_SelectedIndexChanged" >
                                <asp:ListItem>----Select District----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="ddcity" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select City----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted   py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtpin" class="form-control" placeholder="pincode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                
                  <div class="row d-md-flex">

      <div class="col-md-3 border border-muted   py-4">
          <div class="form-group ">
              <span class="text-danger">*</span>
                      <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control">
                          <asp:ListItem>----Select Speciality----</asp:ListItem>

                      </asp:DropDownList>
                  </div>
            
      </div>


      <div class="col-md-3 border border-muted  py-4">
          <div class="form-group ">
              <div class="form-field">
                  <span class="text-danger">*</span>
                              <asp:DropDownList ID="ddhospital" runat="server" CssClass="form-control">
                                  <asp:ListItem>----Select Hospital----</asp:ListItem>

                              </asp:DropDownList>

                  
              </div>
          </div>
      </div>

      <div class="col-md-3 border border-muted   py-4">

          <div class="form-group ">
              <asp:Button ID="BtnSubmit" runat="server" Text="Send Homecare Request" class="btn btn-secondary btn-info" OnClick ="BtnSubmit_Click"/>
          </div>
      </div>
  </div>





            </form>
        </div>
    </div>
</asp:Content>
