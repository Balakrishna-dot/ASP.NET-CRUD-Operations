<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Details</title>

    <style>
        body 
        {
            background: url('images/bg.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial;
            margin: 0;
            padding: 0;
        }

        .center-page {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-box {
            background: white;
            width: 350px;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            border-top: 5px solid #0099cc;
        }

        .form-box h2 {
            text-align: center;
            color: #0099cc;
            margin-bottom: 18px;
        }

        .input-text {
            width: 95%;
            padding: 7px;
            border: 2px solid #555;
            border-radius: 6px;
        }

        .btn 
        {
            padding: 8px 12px;
            width: 100px;
            border-radius: 6px;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        #btnUpdate1 
        { background-color: #00cc66; color: white; 

        }
        #btnExit 
        { background-color: #ff3333; color: white; 

        }

        .btn:hover 
        { opacity: .85; 

        }

        .error 
        {
            color: red;
            font-size: 13px;
        }

        .table-box 
        { width: 100%; 

        }
    </style>
</head>

<body>
<form id="form2" runat="server">

    <div class="center-page">

        <div class="form-box">

            <h2>UPDATE DETAILS</h2>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                CssClass="error" ShowSummary="true"
                HeaderText="Please fix these errors:" />

            <table class="table-box">

                <!-- Patient ID -->
                <tr><td>Patient ID</td></tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtId" CssClass="input-text" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="reqId" runat="server" Text="*"
                            ControlToValidate="txtId"
                            ErrorMessage="Patient ID is required"
                            CssClass="error" Display="Dynamic" />

                        <asp:RegularExpressionValidator ID="revId" runat="server"
                            ControlToValidate="txtId"
                            ValidationExpression="^\d+$"
                            ErrorMessage="ID must be numeric"
                            CssClass="error" Display="Dynamic" />
                    </td>
                </tr>

                <!-- First Name -->
                <tr><td>First Name</td></tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtFname" CssClass="input-text" runat="server"></asp:TextBox>

                        

                        <asp:RegularExpressionValidator ID="revFname" runat="server"
                            ControlToValidate="txtFname"
                            ValidationExpression="^[A-Za-z ]+$"
                            ErrorMessage="Only letters allowed"
                            CssClass="error" Display="Dynamic" />
                    </td>
                </tr>

                <!-- Last Name -->
                <tr><td>Last Name</td></tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtLname" CssClass="input-text" runat="server"></asp:TextBox>

                        

                        <asp:RegularExpressionValidator ID="revLname" runat="server"
                            ControlToValidate="txtLname"
                            ValidationExpression="^[A-Za-z ]+$"
                            ErrorMessage="Only letters allowed"
                            CssClass="error" Display="Dynamic" />
                    </td>
                </tr>

                <!-- Age -->
                <tr><td>Age</td></tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtAge" CssClass="input-text" runat="server"></asp:TextBox>

                        

                        <asp:RegularExpressionValidator ID="revAge" runat="server"
                            ControlToValidate="txtAge"
                            ValidationExpression="^[0-9]{1,3}$"
                            ErrorMessage="Enter valid age"
                            CssClass="error" Display="Dynamic" />
                    </td>
                </tr>

                <!-- Blood Group -->
                <tr><td>Blood Group</td></tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtBg" CssClass="input-text" runat="server"></asp:TextBox>

                        

                        <asp:RegularExpressionValidator ID="revBg" runat="server"
                            ControlToValidate="txtBg"
                            ValidationExpression="^(A|B|AB|O)[+-]$"
                            ErrorMessage="Invalid Blood Group (e.g., A+, O-)"
                            CssClass="error" Display="Dynamic" />
                    </td>
                </tr>

            </table>

            <br />

            <div style="text-align:center;">
                <asp:Button ID="btnUpdate1" CssClass="btn" runat="server" Text="Update" OnClick="btnUpdate1_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnExit" CssClass="btn" runat="server" Text="Exit" OnClick="btnExit_Click" />
            </div>

            <br />

            <asp:Label ID="lblMsg" CssClass="error" runat="server"></asp:Label>

        </div>

    </div>

    </form>
</body>
</html>
