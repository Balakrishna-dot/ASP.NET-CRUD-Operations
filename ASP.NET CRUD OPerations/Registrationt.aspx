<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrationt.aspx.cs" Inherits="Registrationt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

    <style>
        body 
        {
            font-family: Arial;
            background-color: #f5f5f5;
        }

        .container 
        {
            width: 350px;
            margin: 100px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            text-align: center;
        }

        .textbox {
            width: 90%;
            padding: 8px;
            margin: 6px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .ddl {
            width: 90%;
            padding: 8px;
            margin: 6px 0;
            border-radius: 5px;
            text-align: center;
            text-align-last: center;   /* ✅ center selected item */
        }

        .btn {
            width: 95%;
            padding: 10px;
            margin-top: 10px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btnLogin {
            background: green;
        }

        .error {
            color: red;
            font-size: 13px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">

        <h2>Register Page</h2>

        <!-- USERNAME -->
        Username:<br />
        <asp:TextBox ID="txtUser" CssClass="textbox" runat="server"></asp:TextBox>

      

        <asp:RegularExpressionValidator
            ID="revUser"
            runat="server"
            ControlToValidate="txtUser"
            ErrorMessage="Username must contain only letters"
            ValidationExpression="^[A-Za-z]+$"
            CssClass="error">
        </asp:RegularExpressionValidator>

        <br />

        <!-- PASSWORD -->
        Password:<br />
        <asp:TextBox ID="txtPass" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>

       

        <br />

        <!-- CONFIRM PASSWORD -->
        Confirm Password:<br />
        <asp:TextBox ID="txtConfirm" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>

        <asp:CompareValidator
            ID="cvPass"
            runat="server"
            ControlToValidate="txtConfirm"
            ControlToCompare="txtPass"
            ErrorMessage="Passwords do not match"
            CssClass="error">
        </asp:CompareValidator>

        <br />

        <!-- ROLE -->
        Role:<br />
        <asp:DropDownList ID="ddlRole" CssClass="ddl" runat="server">
            <asp:ListItem Value="">--Select--</asp:ListItem>
            <asp:ListItem Value="user">User</asp:ListItem>
            <asp:ListItem Value="admin">Admin</asp:ListItem>
        </asp:DropDownList>

        

        <br />

        <!-- BUTTONS -->
        <asp:Button ID="btnRegister" CssClass="btn" Text="Register"
            runat="server" OnClick="btnRegister_Click" />

        <asp:Button ID="btnlogin" CssClass="btn btnLogin" Text="Login"
            runat="server" OnClick="btnlogin_Click" />

        <br /><br />

        <asp:Label ID="lblMsg" ForeColor="Red" runat="server"></asp:Label>
        <asp:Label ID="lblSuccess" ForeColor="Green" runat="server"></asp:Label>

    </div>
</form>
</body>
</html>
