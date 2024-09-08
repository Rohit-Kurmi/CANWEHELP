<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patientappoinment.aspx.cs" Inherits="Library_mng.patientappoinment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row text-center" style="margin-top: 100px">
        <div class="col-12 text-primary">
            <h2><b><u>PATIENT APPOINMENT</u></b></h2>
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

                <div class="row  d-md-flex ">

                    <div class="col-md-3  border border-muted pb-4 py-4">
                        <div class="form-group ">
                            <div class="form-field">
                                <span class="text-danger">*</span>
                                <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control">
                                    <asp:ListItem>----Select problem type----</asp:ListItem>
                                    <asp:ListItem>Normal</asp:ListItem>
                                    <asp:ListItem>Critical</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-3  border border-muted pb-4 py-4">
                        <div class="form-group">
                            <span class="text-danger">*</span>
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specifiy problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:Label ID="lblerrormsg" CssClass="ErrorLabel" runat="server" Text="Label" Style="display: none; color: #ff0000"></asp:Label>
                        </div>
                    </div>


                    <div class="col-md-3  border border-muted pb-4 py-4">

                        <div class="form-group ">

                            <span class="text-dangr">*</span>
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select speciality----</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblerrorspec" CssClass="ErrorLabel" runat="server" Text="Label" Style="display: none; color: #ff0000"></asp:Label>
                        </div>
                    </div>

                    <div class="col-md-3  border border-muted pb-4 py-4">
                        <div class="form-group ">
                            <span class="text-danger">*</span>
                            <asp:DropDownList ID="dddoctor" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select doctor----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>



                <div class="row d-md-flex ">
                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group">
                            
                                <span class="text-danger">*</span>
                                <asp:TextBox ID="txttime" class="form-control " placeholder="Time" runat="server"></asp:TextBox>

                            
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
                    </div>

                    <div class="col-md-3 border border-muted pb-4 py-4">
                        <div class="form-group ">
                                <div class="icon"><span class="ion-md-calendar"></span><span class="text-danger">*</span></div>

                                <asp:TextBox ID="txtdate" class="form-control dob" runat="server" placeholder="date MM/DD/YYYY"></asp:TextBox>
                            

                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4 py-4">

                        <div class="form-group ">
                            <asp:Button ID="BtnSubmit" runat="server" Text="send Appointment Request" class="btn  btn-info" />
                           
                        </div>
                    </div>
                </div>



            </form>
        </div>
    </div>



</asp:Content>
