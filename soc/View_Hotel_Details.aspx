<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Hotel_Details.aspx.cs" Inherits="soc.View_Hotel_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <center> <h1>  Welcome To Debi hotel room reservation company web site </h1></center>
        <hr />
        <hr />

    </div>
        <div>
           
            <div>
                <center><table>
                    <tr>
                        <td>
                           Hotel Name : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search"  />
                        </td>
                        
                    </tr>
                    
                </table></center>
                <hr />
            </div>
            <div>
                <center>
                    <h1> Search Room detai's </h1>
                   <hr />
                Search Country :&nbsp; <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                
                &nbsp;
                
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

                    &nbsp;&nbsp;

                    Search City : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Search"></asp:Button>

                <hr />
                <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="No record Founded!!">


                </asp:GridView>
                    </center>
            </div>
        </div>
       
        <div style="margin-left:320px; ">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="212px" Width="348px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RoomID" HeaderText="Room ID" />
                <asp:BoundField DataField="Room_Type" HeaderText="Room Type" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="HotelID" HeaderText="Hotel ID " />
                <asp:BoundField DataField="Country" HeaderText="Country" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:TemplateField HeaderText="Room Image">
                    <ItemTemplate>
                        <img src="Images/<%#Eval("Select_Image") %>" style="width:80px;height:100px" />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkSelect" Text="Select" runat="server" CommandArgument='<%# Eval("RoomID") %>' />
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

         
        <center><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></center>


    </form>
</body>
</html>
