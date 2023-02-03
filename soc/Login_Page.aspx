<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="soc.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page </title>

   <style>
       .main{
           width:800px;
           height:400px;
           margin-left:auto;
           margin-right:auto;           
           box-shadow: 2px 2px 30px rgb(128, 128, 128);

       }
       .login{
           
           height:400px;
           margin-left:auto;
           margin-right:auto;           
           margin-top:100px;
       }
       

      
       .boxsizes{
    width:300px;
    height:30px;
    margin-bottom:20px;
}
       .para{
           margin-bottom:20px;
           margin-right:30px;
           font-size:20px;
       }
   </style>

</head>
<body>
  
<form id="form1" runat="server">
<div class="main">
<div class="login"> 
    <br />
    <br />
    <center><h2> LOGIN FORM </h2></center>

<center><table>
<tr>
<td><p class="para">Username</p></td>
<td>
<asp:TextBox ID="txtUser" CssClass="boxsizes" runat="server"></asp:TextBox></td>
    
</tr>
<tr>
<td><p class="para">Password</p></td>
<td>
<asp:TextBox ID="txtPass" CssClass="boxsizes" runat="server" TextMode="Password"></asp:TextBox></td>
    
</tr>
<tr>
<td><p class="para">Select User Type</p></td>
<td>
<asp:DropDownList ID="DropDownList1" CssClass="boxsizes" runat="server" Font-Size="Large">
<asp:ListItem>admin</asp:ListItem>
<asp:ListItem>user</asp:ListItem>
</asp:DropDownList></td>
</tr>
<tr>

<td class="auto-style1">
    <asp:Button ID="Button1" runat="server" CssClass="boxsizes" Text="Login" OnClick="Button1_Click" Font-Size="Large" Height="37px" Width="120px" />
</td>
<td class="auto-style1">
    <asp:Button ID="Button4" runat="server" CssClass="boxsizes" Text="Sign Up" Font-Size="Large" Height="37px" Width="120px" OnClick="Button4_Click" />
</td>
<td class="auto-style1">
    <asp:Button ID="Button5" runat="server" CssClass="boxsizes" Text="Back"  Font-Size="Large" Height="37px" Width="120px" OnClick="Button5_Click" />
</td>

</tr>
    
</table></center>

</div>
</div>
</form>


</body>
</html>
