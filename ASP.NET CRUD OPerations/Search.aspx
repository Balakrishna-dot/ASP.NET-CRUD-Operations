<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: #f2f2f2;
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .center-page {
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 40px;
            flex-direction: column;
        }

        .form-container {
            width: 350px;
            background: white;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            border-top: 5px solid #0066cc;
            text-align: center;
        }

        h2 {
            color: #0066cc;
            font-size: 22px;
            margin-bottom: 15px;
        }

        .text-input {
            width: 90%;
            padding: 8px;
            border: 2px solid #444;
            border-radius: 6px;
            margin-top: 5px;
            font-size: 14px;
        }

        .btn {
            padding: 10px 15px;
            margin: 8px 4px;
            border-radius: 6px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            width: 120px;
        }

        #btnsearch 
        { background-color: #0099ff; color: white; 

        }
        #btnsearchall 
        { background-color: #0066cc; color: white; 

        }
        #btnExit 
        { background-color: #ff3333; color: white; 

        }

        .btn:hover 
        { opacity: 0.85; 

        }

        .msg-label 
        {
            color: red;
            font-size: 14px;
            font-weight: bold;
        }

        .grid-box 
        {
            width: 600px;
            margin-top: 30px;
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px rgba(0,0,0,0.2);
        }

        h3 
        { text-align: center; color: #333; 

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="center-page">

        <div class="form-container">
            <h2>Search Patient</h2>

            <label>Patient ID:</label><br />
            <asp:TextBox ID="txtid" CssClass="text-input" runat="server"></asp:TextBox>

            <!-- VALIDATIONS -->
            <asp:RequiredFieldValidator 
                ID="rfvID" 
                runat="server"
                ControlToValidate="txtid"
                ErrorMessage="* Patient ID is required"
                CssClass="msg-label"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator 
                ID="revID"
                runat="server"
                ControlToValidate="txtid"
                ValidationExpression="^[0-9]+$"
                ErrorMessage="* Only numbers allowed"
                CssClass="msg-label"
                Display="Dynamic">
            </asp:RegularExpressionValidator>

            <br /><br />

            <asp:Button 
                ID="btnsearch" 
                runat="server" 
                CssClass="btn" 
                Text="Search" 
                OnClick="btnsearch_Click"
                CausesValidation="true" />

            <br />

            <!-- ERROR MESSAGE BELOW SEARCH BUTTON -->
            <asp:Label ID="lblMsg" CssClass="msg-label" runat="server"></asp:Label>

            <br /><br />

            <asp:Button 
                ID="btnsearchall" 
                runat="server" 
                CssClass="btn" 
                Text="View ALL" 
                OnClick="btnsearchall_Click"
                CausesValidation="false" />

            <asp:Button 
                ID="btnExit" 
                runat="server" 
                CssClass="btn" 
                Text="Exit" 
                OnClick="btnExit_Click"
                CausesValidation="false" />
        </div>

        <!-- Grid container -->
        <div class="grid-box">
            <h3>Patient Records</h3>
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true" Width="100%"></asp:GridView>
        </div>

    </div>
    </form>
</body>
</html>
