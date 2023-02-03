<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Hotel.aspx.cs" Inherits="soc.Manage_Hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <center> <h1> Manage Hotel details </h1> </center>
    <div>
    
        <center><table>
            <tr>
                <td>
                    Hotel ID
                </td>
                <td>
                    <asp:TextBox ID="txtHotelId" runat="server"></asp:TextBox>
                    
                    
                    <asp:Button ID="btnSearch" runat="server" Text="search" OnClick="btnSearch_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Hotel Name
                </td>
                <td>
                    <asp:TextBox ID="txtHotelName" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Location
                </td>
                <td>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Contact Information
                </td>
                <td>
                    <asp:TextBox ID="txtContactInfo" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Select Type
                </td>
                <td>
                    <asp:DropDownList ID="txtType" runat="server">
                        <asp:ListItem>3 Star</asp:ListItem>
                        <asp:ListItem>4 Star</asp:ListItem>
                        <asp:ListItem>5 Star</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td> 
                    Avilable Hotel Rooms 
                </td>
                <td>
                    <asp:TextBox ID="txtAvailableRooms" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>

                    <br />

                </td>
            </tr>
            <tr>
                <td>
                    Images
                </td>
                <td>
                    <asp:FileUpload ID="imgHotel" runat="server" />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"   />
                </td>
                <td>
<asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click"></asp:Button>
                </td>
                <br />
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                     <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
           
        </table></center>

    </div>
        
    </form>
</body>
</html>
