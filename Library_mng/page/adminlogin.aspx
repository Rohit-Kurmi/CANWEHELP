<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Library_mng.page.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Admin login</title>
</head>
<body style="background-color: #4b3efe;">




    <form id="form1" runat="server">
        <div class="container ">

            <div class="row">
                <div class="col-md-4"> </div>

                <div class="col-md-4">
                    <div class="box" style="background-color: #f8f9fa; margin-top: 130px; border-radius: 5px; padding: 10px;">

                        <h3 style="text-align: center;">Admin Login</h3>


                        <div class="row  mt-4">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text=""><b>Admin Id</b><span class="text-danger">*</span></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="row  mt-2">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:TextBox ID="adminid" placeholder="Admin Id" runat="server" CssClass="form-control" onblur="return ValidateUid();"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row  mt-4">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <asp:Label ID="label2" runat="server"><b>Passsword</b> <span class="text-danger">*</span></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-sm-12">

                                <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" onblur="return ValidatePWd();"></asp:TextBox>
                            </div>
                        </div>


                        <div class="row" style="text-align: center;">
                            <div class="col-sm-12 mt-4">
                                <div class="form-group">
                                    <asp:Button ID="Loginbtn" runat="server" Text="Login" CssClass="btn btn-primary"></asp:Button>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-2" style="text-align: center;">
                            <div class="col-sm-12">
                                <a href="default.aspx"><-Home Page</a>
                            </div>
                        </div>


                    </div>
                </div>
                <div></div></div>
             </div>
    </form>



</body>
</html>
