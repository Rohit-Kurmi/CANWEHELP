<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="Library_mng.page.forget_password" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Reset Password</title>

    <style>
        body {
            background-image: url('../images/bg_5.jpg');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
        }
        .reset-box {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-top: 100px;
        }
        .reset-box h3 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #343a40;
        }
        .reset-box label {
            font-weight: bold;
            font-size: 14px;
        }
        .reset-box .btn {
            width: 100%;
            padding: 10px;
            font-size: 16px;
        }
        .reset-box .links a {
            color: #007bff;
            text-decoration: none;
        }
        .reset-box .links a:hover {
            text-decoration: underline;
        }
        .reset-box .form-text {
            font-size: 12px;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center">
            <div class="col-md-6 col-lg-4 reset-box">
                <h3 class="text-center text-primary">Reset Password</h3>

                <!-- Patient ID -->
                <div class="mb-3">
                    <label for="PatientId" class="form-label">Patient ID <span class="text-danger">*</span></label>
                    <asp:TextBox ID="PatientId" runat="server" CssClass="form-control" onblur="return ValidateUid();"></asp:TextBox>
                </div>

                <!-- New Password -->
                <div class="mb-3">
                    <label for="newpassword" class="form-label">New Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="newpassword" runat="server" CssClass="form-control" TextMode="Password" onblur="return ValidatePWd();"></asp:TextBox>
                </div>

                <!-- Confirm New Password -->
                <div class="mb-3">
                    <label for="ConfNewPassword" class="form-label">Confirm New Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="ConfNewPassword" runat="server" CssClass="form-control" TextMode="Password" onblur="return ValidatePWd();"></asp:TextBox>
                </div>

                <!-- Reset Button -->
                <div class="mb-3 text-center">
                    <asp:Button ID="forgetbtn" runat="server" Text="Reset Password" CssClass="btn btn-primary" OnClick="forgetbtn_Click"></asp:Button>
                </div>

                <!-- Additional Links -->
                <div class="text-center links">
                    <p><a href="patientlogin.aspx">Back to Login</a></p>
                    <p><a href="default.aspx">Go to Home</a></p>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
