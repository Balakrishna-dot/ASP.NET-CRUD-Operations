<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <style>
        body 
        {
            background: #f2f2f2;
            font-family: Arial;
        }

        .login-box 
        {
            width: 330px;
            margin: 120px auto;
            padding: 25px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 12px rgba(0,0,0,0.3);
            text-align: center;
        }

        .txt 
        {
            width: 90%;
            padding: 8px;
            border: 2px solid #444;
            border-radius: 6px;
            margin-bottom: 10px;
        }

        .btn 
        {
            width: 120px;
            padding: 8px;
            background: #0066cc;
            color: white;
            font-weight: bold;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .btn:hover 
        {
            background-color: #004c99;
        }

        .msg 
        {
            color: red;
            font-weight: bold;
        }

        .signup-text 
        {
            margin-top: 10px;
            font-size: 14px;
            color: #333;
        }

        .signup-link 
        {
            color: green;
            font-weight: bold;
            cursor: pointer;
            text-decoration: underline;
        }

        .ddl 
        {
            width: 95%;
            padding: 8px;
            border-radius: 6px;
            border: 2px solid #444;
            margin-bottom: 10px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">

            <h2>Login Page</h2>

            Username:<br />
            <asp:TextBox ID="txtUser" CssClass="txt" runat="server"></asp:TextBox><br />

            Password:<br />
            <asp:TextBox ID="txtPass" CssClass="txt" TextMode="Password" runat="server"></asp:TextBox><br />

           

            <asp:Button ID="btnUserLogin" CssClass="btn" Text="Login" runat="server" OnClick="btnLogin_Click" />
    
           
            
            <br /><br />

            <asp:Label ID="lblMsg" CssClass="msg" runat="server"></asp:Label>

            <div class="signup-text">
                Don’t have an account?
                <asp:LinkButton ID="lnkSignup" runat="server" CssClass="signup-link"
                OnClick="lnkSignup_Click">Sign up now</asp:LinkButton>
            </div>

        </div>
    </form>
</body>
</html>
