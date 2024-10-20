<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Library_mng.page.adminlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Admin Login</title>
  <style>
    body {
        background-image: url('../images/bg_5.jpg');
        background-size: cover; /* Ensures the image covers the entire background */
        background-position: center; /* Centers the background image */
        background-repeat: no-repeat; /* Prevents the image from repeating */
        height: 100vh; /* Ensures the body takes the full height of the viewport */
        margin: 0; /* Removes default margin */
        font-family: Arial, sans-serif;
        color: #333;
    }
    .login-box {
        background-color: #ffffff;
        margin-top: 100px;
        border-radius: 8px;
        padding: 40px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .login-box h3 {
        color: #007bff;
        margin-bottom: 20px;
    }
    .error-message {
        color: red;
        font-size: 0.9em;
    }
    .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
        transition: background-color 0.3s;
    }
    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #004085;
    }
    .form-group label {
        font-weight: bold;
    }
</style>

   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="login-box">
                        <h3 class="text-center">Admin Login</h3>

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Admin Id <span class='text-danger'>*</span>" AssociatedControlID="adminid"></asp:Label>
                            <asp:TextBox ID="adminid"  runat="server" CssClass="form-control" onblur="return ValidateUid();" aria-required="true"></asp:TextBox>
                            <span class="error-message" id="adminIdError" runat="server"></span>
                        </div>

                        <div class="form-group mt-3">
                            <asp:Label ID="label2" runat="server" Text="Password <span class='text-danger'>*</span>" AssociatedControlID="password"></asp:Label>
                            <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" onblur="return ValidatePWd();" aria-required="true"></asp:TextBox>
                            <span class="error-message" id="passwordError" runat="server"></span>
                        </div>

                        <div class="form-group text-center mt-4">
                            <asp:Button ID="Loginbtn" runat="server" Text="Login" CssClass="btn btn-primary" />
                        </div>

                        <div class="form-group text-center mt-2">
                            <a href="default.aspx" class="text-info text-decoration-none">Go To Home </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
