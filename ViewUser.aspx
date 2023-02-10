<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="MYPROJECT.ViewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  style="background-color:bisque;">
            
            <div style="height:30px; Width:auto;  background-color:maroon" ></div>

            <h1 style="color:maroon" align="center">View the User Details</h1>
            <asp:GridView ID="GridView1" border="4"  rules="all"  align="center" runat="server" DataSourceID="SqlDataSource1" Width="600px" Height="400px"  AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="user_nam">
                <Columns>
                    <asp:BoundField DataField="First_name" HeaderText="First_name" SortExpression="First_name" />
                    <asp:BoundField DataField="Last_name" HeaderText="Last_name" SortExpression="Last_name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="user_nam" HeaderText="user_nam" ReadOnly="True" SortExpression="user_nam" />
                    <asp:BoundField DataField="pass_word" HeaderText="pass_word" SortExpression="pass_word" />
                </Columns>
            </asp:GridView>
 <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:MyproConnectionString %>" DeleteCommand="DELETE FROM [signin] WHERE [user_nam] = @user_nam" InsertCommand="INSERT INTO [signin] ([First_name], [Last_name], [Email], [user_nam], [pass_word]) VALUES (@First_name, @Last_name, @Email, @user_nam, @pass_word)" SelectCommand="SELECT [First_name], [Last_name], [Email], [user_nam], [pass_word] FROM [signin]" UpdateCommand="UPDATE [signin] SET [First_name] = @First_name, [Last_name] = @Last_name, [Email] = @Email, [pass_word] = @pass_word WHERE [user_nam] = @user_nam">                <DeleteParameters>
                    <asp:Parameter Name="user_nam" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_nam" Type="String"></asp:Parameter>
                    <asp:Parameter Name="pass_word" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="First_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="pass_word" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_nam" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <div style="height:30px; Width:auto; margin-top:20px; background-color:maroon" ></div>

        </div>
    </form>
</body>
</html>
