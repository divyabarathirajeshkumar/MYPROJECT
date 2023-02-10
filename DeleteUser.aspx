<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="MYPROJECT.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-color:bisque;">
    <form id="form1" runat="server">
        <div>
            
            <div style="height:30px; Width:auto; margin-top:5px; background-color:maroon" ></div>
            <h1 align="center" style="color:maroon;">Delete The User</h1>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyproConnectionString %>" SelectCommand="SELECT [First_name], [Last_name], [Email], [user_nam], [pass_word] FROM [signin]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="user_nam">
                <Columns>
                    <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                    <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="user_nam" HeaderText="user_nam" ReadOnly="True" SortExpression="user_nam" />
                    <asp:BoundField DataField="pass_word" HeaderText="pass_word" SortExpression="pass_word" />
                </Columns>
            </asp:GridView>

            <div style="height:30px; Width:auto; margin-top:50px; background-color:maroon" ></div>
        </div>
    </form>
</body>
</html>
