<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Rooms.aspx.cs" Inherits="soc.Manage_Rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1> Manage Room Details </h1></center>
    <center> <table>
                <tr>
                    <td>
                        Room ID
                    </td>
                    <td>
                        <asp:TextBox ID="txtRoomID" runat="server"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="search" OnClick="btnSearch_Click"  />
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

                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"  />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"    />
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
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
            </table></center>
    </div>
        
    </form>
</body>
</html>
