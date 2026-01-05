<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
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
            border-top: 4px solid #ff1493;
        }

        .form-box h2 {
            text-align: center;
            color: #ff1493;
            margin-bottom: 18px;
            font-size: 20px;
        }

        .input-text {
            width: 95%;
            padding: 7px;
            border: 2px solid #555;
            border-radius: 6px;
            font-size: 14px;
        }

        .btn {
            padding: 8px 12px;
            border-radius: 6px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            width: 100px;
            font-size: 14px;
        }

        #Insert1 { background-color: #00e6e6; }
        #btnExit { background-color: #ff3333; color: white; }

        .btn:hover { opacity: .85; }

        .error {
            color: red;
            font-size: 13px;
        }

        .table-box { width: 100%; }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="center-page">
            <div class="form-box">

                <h2>INSERT DETAILS</h2>

                <table class="table-box">

                    <!-- Patient ID -->
                    <tr><td>Patient ID</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtId" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtId"
                                ValidationExpression="^[0-9]+$"
                                ErrorMessage="Numbers only"
                                CssClass="error" Display="Dynamic" />
                        </td>
                    </tr>

                    <!-- First Name -->
                    <tr><td>First Name</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtFname" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="revFname"
                                runat="server" ControlToValidate="txtFname"
                                ValidationExpression="^[A-Za-z ]+$"
                                ErrorMessage="Only letters allowed!"
                                CssClass="error" Display="Dynamic" />
                        </td>
                    </tr>

                    <!-- Last Name -->
                    <tr><td>Last Name</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtLname" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="revLname"
                                runat="server" ControlToValidate="txtLname"
                                ValidationExpression="^[A-Za-z ]+$"
                                ErrorMessage="Only letters allowed!"
                                CssClass="error" Display="Dynamic" />
                        </td>
                    </tr>

                    <!-- Age -->
                    <tr><td>Age</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtAge" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator runat="server"
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

                            <asp:RegularExpressionValidator ID="revBg"
                                runat="server" ControlToValidate="txtBg"
                                ValidationExpression="^(A|B|AB|O)[+-]$"
                                ErrorMessage="Use format like A+, O-, B+"
                                CssClass="error" Display="Dynamic" />
                        </td>
                    </tr>

                    <!-- Cell -->
                    <tr><td>Cell No</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtCell" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator
                                ID="revCell" 
                                runat="server"
                                ControlToValidate="txtCell"
                                ErrorMessage="Enter valid 10-digit mobile number"
                                ValidationExpression="^[6-9]\d{9}$"
                                CssClass="error"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <!-- Email -->
                    <tr><td>Email</td></tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtEmail" CssClass="input-text" runat="server"></asp:TextBox>

                            <asp:RegularExpressionValidator 
                                ID="revEmail"
                                runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="Enter a valid email address"
                                ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                CssClass="error"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>

                </table>

                <br />

                <div style="text-align:center;">
                    <asp:Button ID="Insert1" CssClass="btn" runat="server" Text="Insert" OnClick="Insert1_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnExit" CssClass="btn" runat="server" Text="Exit" OnClick="btnExit_Click" />
                </div>

                <br />

                <asp:Label ID="lblMsg0" CssClass="error" runat="server"></asp:Label>

            </div>
        </div>

    </form>
</body>
</html>
