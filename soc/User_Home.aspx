<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Home.aspx.cs" Inherits="soc.User_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .btnFor{
            height:100px;
            width:500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="width: 100%; height: 643px; display:flex; background-color:antiquewhite;">
    <div style="width: 800px; height: 643px">
    
        <img src="Images/user_home.jpg" width="800px" height="645px" />
        &nbsp;

    </div>

        <div style="width: 600px; height:645px;">
            <div style="width: 500px; height:645px; margin-left: auto; margin-right:auto; box-shadow: 2px 2px 30px rgb(128, 128, 128); ">
                <br />
                <br />
                <center><h1> USER HOME PAGE </h1></center>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btnViewHotels" CssClass="btnFor" runat="server" Text="View Room Details"  /><br />
                <br />
                
                <br />
               
                <br />
            </div>
        </div>

    </div>
    </div>
    </form>
</body>
</html>
