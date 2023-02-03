<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room_Details.aspx.cs" Inherits="soc.Room_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Room Details </title>

    <style>
        .main{
           width:800px;
           height:400px;
           margin-left:auto;
           margin-right:auto;           
           box-shadow: 2px 2px 30px rgb(128, 128, 128);
        }
        .auto-style1 {
            height: 40px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <center><h1> Insert Room  </h1></center>
    <div class="main">
           <center> <table>
                <tr>
                    <td>
                        Room ID
                    </td>
                    <td>
                        <asp:TextBox ID="txtRoomID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Room Type
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Standard Room</asp:ListItem>
                            <asp:ListItem>Deluxe Room</asp:ListItem>
                            <asp:ListItem>Suite</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Price
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Hotel
                    </td>
                    <td>
                        <asp:DropDownList ID="dlHotel" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Country
                    </td>
                    <td>
                        <asp:TextBox ID="txtCounrty" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        City
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Description
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                   <td>
                       Select Image
                   </td>
                   <td>
                       <asp:FileUpload ID="imgRoom" runat="server"></asp:FileUpload>
                   </td>
               </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <br />
                        <asp:Button ID="btnsubmit" runat="server" Text="INSERT" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
            </table></center>
    </div>
        <center><asp:Label ID="lblTxt" runat="server" Text="Label"></asp:Label></center>
    </form>
</body>
</html>
