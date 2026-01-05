<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body 
        {
            background: #f2f2f2;
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .center-page 
        {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .form-container 
        {
            width: 320px;
            text-align: center;
        }

        fieldset 
        {
            background-color: white;
            border: 3px solid #333;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
        }

        legend 
        {
            font-size: 20px;
            font-weight: bold;
            color: #003399;
        }

        /* Main Menu Buttons */
        .btnMenu 
        {
            width: 180px;
            padding: 10px;
            margin: 12px 0;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            border: none;
            background-color: #0066ff;
            color: white;
            font-weight: bold;
        }

        .btnMenu:hover 
        {
            background-color: #0047b3;
        }

        /* Logout Button */
        .btnLogout 
        {
            width: 120px;
            padding: 8px;
            margin-top: 20px;
            font-size: 15px;
            border-radius: 6px;
            cursor: pointer;
            border: none;
            background-color: #ff3333;
            color: white;
            font-weight: bold;
        }

        .btnLogout:hover 
        {
            background-color: #cc0000;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="center-page">
            <div class="form-container">

                <fieldset>
                    <legend style="color:red">PATIENT MANAGEMENT</legend>

                    <asp:Button ID="btninsert" CssClass="btnMenu" runat="server" Text="INSERT" OnClick="btninsert_Click" /><br />
                    <asp:Button ID="btnupdate" CssClass="btnMenu" runat="server" Text="UPDATE" OnClick="btnupdate_Click" /><br />
                    <asp:Button ID="btndelete" CssClass="btnMenu" runat="server" Text="DELETE" OnClick="btndelete_Click" /><br />
                    <asp:Button ID="btnsearch" CssClass="btnMenu" runat="server" Text="SEARCH" OnClick="btnsearch_Click" /><br />
                </fieldset>

                
                <asp:Button ID="btnLogout" CssClass="btnLogout" runat="server" 
                            Text="LOG OUT" OnClick="btnLogout_Click" />

            </div>
        </div>
         
    </form>
</body>
</html>
