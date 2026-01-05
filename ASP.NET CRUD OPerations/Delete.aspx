<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .center-page 
        {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container 
        {
            width: 320px;
            background: white;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
            border-top: 5px solid #cc0000;
            font-family: Arial;
        }

        h2 
        {
            color: #cc0000;
            margin-bottom: 15px;
        }

        .text-input 
        {
            width: 90%;
            padding: 8px;
            border: 2px solid #444;
            border-radius: 6px;
            margin-top: 5px;
        }
        .btn-delete,
        .btn-deleteall,
        
        .btn-exit 
        {
            padding: 10px 15px;
            border-radius: 6px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            width: 120px;
        }

        .btn-delete 
        { 
            background-color: #ff3333; color: white; 

        }
        .btn-deleteall 
        { 
            background-color: #cc0000; color: white; 

        }
        .btn-exit 
        { 
            background-color: #555; color: white; 

        }

        .btn-delete:hover,
        .btn-deleteall:hover,
        .btn-exit:hover 
        {
            opacity: 0.85;
        }

        .msg-label 
        {
            color: red;
            font-size: 14px;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="center-page">
            <div class="form-container">

                <h2>Delete Record</h2>

                <label>Patient ID:</label><br />

                <asp:TextBox ID="txtid" CssClass="text-input" runat="server"></asp:TextBox>

                <!-- REQUIRED FIELD -->
                <asp:RequiredFieldValidator 
                    ID="rfvID" 
                    runat="server" 
                    ControlToValidate="txtid"
                    ErrorMessage="Patient ID is required"
                    CssClass="msg-label"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <!-- NUMERIC VALIDATION -->
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

                <!-- DELETE BUTTON -->
                <div style="text-align:center;">
                    <asp:Button 
                        ID="btndelete" 
                        CssClass="btn-delete" 
                        runat="server"
                        Text="DELETE" 
                        OnClick="btndelete_Click"
                        CausesValidation="true" />
                </div>

                <!-- DELETE BUTTON VALIDATION SUMMARY -->
                <br />
                <asp:ValidationSummary 
                    ID="ValidationSummary1" 
                    runat="server"
                    CssClass="msg-label"
                    DisplayMode="List" />

                <!-- ERROR MESSAGE FROM BACKEND -->
                <div>
                    <asp:Label ID="lblMsg" CssClass="msg-label" runat="server"></asp:Label>
                </div>

                <br />

                <!-- DELETE ALL + EXIT BUTTONS -->
                <div style="text-align:center;">

                    <asp:Button 
                        ID="btndeleteall" 
                        CssClass="btn-deleteall" 
                        runat="server" 
                        Text="DELETE ALL" 
                        OnClick="btndeleteall_Click"
                        CausesValidation="false" />

                    &nbsp;

                    <asp:Button 
                        ID="btnExit" 
                        CssClass="btn-exit" 
                        runat="server"
                        Text="Exit" 
                        OnClick="btnExit_Click"
                        CausesValidation="false" />

                </div>

            </div>
        </div>
    </form>
</body>
</html>
