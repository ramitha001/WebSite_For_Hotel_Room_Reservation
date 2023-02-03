<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adding_Hotel.aspx.cs" Inherits="soc.Adding_Hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Add Hotel </title>
    <link rel="stylesheet" href="css/registration.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="Registration">
    <center>
         <h1> HOTEL REGISTRATION  </h1>
    </center>
       

        <table>
            <tr>
                <td>
                    Hotel ID
                </td>
                <td>
                    <asp:TextBox ID="txtHotelId" runat="server"></asp:TextBox>
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
                    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    </div>
    <div style="margin-left:320px; ">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="212px" Width="348px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="HotelID" HeaderText="Hotel ID" />
                <asp:BoundField DataField="HotelName" HeaderText="Hotel Name" />
                <asp:BoundField DataField="location" HeaderText="Location" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Contact number " />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="HotelType" HeaderText="Hotel Type" />
                <asp:BoundField DataField="HotelRooms" HeaderText="Hotel Rooms" />
                <asp:TemplateField HeaderText="Images">
                    <ItemTemplate>
                        <img src="Images/<%#Eval("Image") %>" style="width:80px;height:100px" />
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        </div>
    
    </form>
</body>
</html>
