<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patienttransport.aspx.cs" Inherits="Library_mng.page.patienttransport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row" style="margin-top: 100px">
        <div class="col text-primary text-center ">
            <h2><b><u>Transport Request</b></U></h2>
        </div>
    </div>

    <div class="container" style="margin-bottom:90px">
        <div class="box" style="margin-top: 40px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">
            <form runat="server">
                <!-- note -->
                <div class="row ">
                    <div class="col-sm-12 tool-box note border border-muted" style="background-color: #ffffb3; color: #ff0000; font-weight: bold; letter-spacing: 0px;">
                        Note :- All fields marked with *  are mandatory to be fill. 
                    </div>
                </div>


                <!-- note -->
                <div class=" row d-md-flex">


                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group ">

                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select Speciality----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>


                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group ">

                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control" AutoPostBack="true" onblur="return Validatetype();">
                                <asp:ListItem>----Select problem type----</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>

                    <div class="col-md-3 border border-muted pb-4 py-5">
                        <div class="form-group">
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specifiy problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3  border border-muted pb-4 py-5">
                        <div class="form-group">
                            <asp:CheckBox ID="CBaddress" runat="server" AutoPostBack="true" /><span>Tick hare If address is same</span>
                            <asp:TextBox ID="txtaddress" class="form-control" placeholder=" Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted pb-4 py-5">
                        <div class="form-group">
                            <asp:DropDownList ID="ddstate" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
                                <asp:ListItem>----Select State----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4 py-5">
                        <div class="form-group ">
                            <asp:DropDownList ID="dddistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dddistrict_SelectedIndexChanged">
                                <asp:ListItem>----Select District----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4 py-5">
                        <div class="form-group ">

                            <asp:DropDownList ID="ddcity" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select City----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3 border border-muted pb-4 py-5">
                        <div class="form-group ">
                            <asp:TextBox ID="txtpin" class="form-control" placeholder="pincode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>




                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group ">
                            <div class="input-wrap">
                                <span class="text-danger">*</span>
                                <asp:TextBox ID="txtdate" class="form-control  dob" textmode="Date" placeholder="Date MM/DD/YYYY" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <script>

                            //for celender
                            $(function () {
                                $(".dob").datepicker({
                                    changeMonth: true,
                                    changeYear: true,
                                    dateFormat: 'dd/mm/yy'
                                });
                            });
                            //for celender
                        </script>
                    </div>



                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group">

                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txttime" class="form-control " TextMode="Time" placeholder="Time" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <script>
                        $('.clockpicker').clockpicker({
                            'default': DisplayCurrentTime(),
                            twelvehour: true,
                        }).find('txttime').val(DisplayCurrentTime())

                        function DisplayCurrentTime() {
                            var date = new Date();
                            var hours = date.getHours() > 12 ? date.getHours() - 12 : date.getHours();
                            var am_pm = date.getHours() >= 12 ? "PM" : "AM";
                            hours = hours < 10 ? "0" + hours : hours;
                            var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                            var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
                            time = hours + ":" + minutes + ":" + am_pm;
                            //time = hours + ":" + minutes + am_pm;
                            return time;
                        };
                    </script>

                

                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group">
                            <asp:Button ID="BtnSubmit" runat="server" Text="send Transport Request" class="btn  btn-info" Onclick="BtnSubmit_Click"/>
                        </div>
                    </div>

                    
                </div>
            </form>
        </div>
    </div>
</asp:Content>
