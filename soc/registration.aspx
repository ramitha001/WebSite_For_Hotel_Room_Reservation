<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="soc.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .main{
           width:800px;
           height:400px;
           margin-left:auto;
           margin-right:auto;           
           box-shadow: 2px 2px 30px rgb(128, 128, 128);
        }
    </style>

</head>
<body>
   <form id="form1" runat="server">
    <div class="main">
       <center> <h2> &nbsp;</h2>
           <h2> Registration Form </h2> </center> 
    <center><table >
        <tr> 

            <td> User Name  </td>
            <td> <asp:TextBox ID ="txtUserName" runat="server" ></asp:TextBox> </td>
        </tr>
        <tr>

            <td> Email </td>
            <td> <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> </td>
        </tr>
        <tr>

            <td> Password </td>
            <td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> </td>

        </tr>
        <tr>

            <td> Confirm Password </td>
            <td> <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox> </td>

        </tr>
        <tr>

            <td> Mobile Number </td>
            <td> <asp:TextBox ID="txtMobileNumber" runat="server" ></asp:TextBox> </td>

        </tr>
        <tr>

            <td> NIC Number </td>
            <td> <asp:TextBox ID="txtNic" runat="server"></asp:TextBox> </td>

        </tr>

         <tr>

            <td> Address </td>
            <td> <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox> </td>

        </tr>

        <tr>
            <td> UserType </td>
            <td> <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
                </asp:DropDownList> </td>
        </tr>


        <tr>  
            <td>
                <br />
                <br />
               
            </td>
            <td>
                 <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click"  />
            </td>

        </tr>
        </center>
    </table>
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>
