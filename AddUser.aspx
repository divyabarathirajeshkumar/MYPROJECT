<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="MYPROJECT.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-color:bisque;" bgcolor="#800000">
    <form id="form1" runat="server">
        <a href="DeleteUser.aspx">DeleteUser.aspx</a><br />
        <a href ="ViewUser.aspx">ViewUser.aspx</a>
        <div>
            
            <div style="height:30px; Width:auto; margin-top:5px; background-color:maroon" ></div>
            <h1 align="center" style="color:maroon;">ADD The User</h1>



            <div> <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="User_nam">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="User_namLabel" runat="server" Text='<%# Eval("User_nam") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pass_wordLabel" runat="server" Text='<%# Eval("pass_word") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label ID="User_namLabel1" runat="server" Text='<%# Eval("User_nam") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pass_wordTextBox" runat="server" Text='<%# Bind("pass_word") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox ID="User_namTextBox" runat="server" Text='<%# Bind("User_nam") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pass_wordTextBox" runat="server" Text='<%# Bind("pass_word") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="User_namLabel" runat="server" Text='<%# Eval("User_nam") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pass_wordLabel" runat="server" Text='<%# Eval("pass_word") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">User_nam</th>
                                        <th runat="server">pass_word</th>
                                        <th runat="server">type</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="User_namLabel" runat="server" Text='<%# Eval("User_nam") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pass_wordLabel" runat="server" Text='<%# Eval("pass_word") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyproConnectionString %>" DeleteCommand="DELETE FROM [A_login] WHERE [User_nam] = @User_nam" InsertCommand="INSERT INTO [A_login] ([User_nam], [pass_word], [type]) VALUES (@User_nam, @pass_word, @type)" SelectCommand="SELECT [User_nam], [pass_word], [type] FROM [A_login]" UpdateCommand="UPDATE [A_login] SET [pass_word] = @pass_word, [type] = @type WHERE [User_nam] = @User_nam">
                    <DeleteParameters>
                        <asp:Parameter Name="User_nam" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="User_nam" Type="String" />
                        <asp:Parameter Name="pass_word" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="pass_word" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="User_nam" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:MyproConnectionString %>" DeleteCommand="DELETE FROM [signin] WHERE [user_nam] = @user_nam" InsertCommand="INSERT INTO [signin] ([First_name], [Last_name], [user_nam], [pass_word], [Email]) VALUES (@First_name, @Last_name, @user_nam, @pass_word, @Email)" SelectCommand="SELECT [First_name], [Last_name], [user_nam], [pass_word], [Email] FROM [signin]" UpdateCommand="UPDATE [signin] SET [First_name] = @First_name, [Last_name] = @Last_name, [pass_word] = @pass_word, [Email] = @Email WHERE [user_nam] = @user_nam">
                    <DeleteParameters>
                        <asp:Parameter Name="user_nam" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="First_name" Type="String" />
                        <asp:Parameter Name="Last_name" Type="String" />
                        <asp:Parameter Name="user_nam" Type="String" />
                        <asp:Parameter Name="pass_word" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_name" Type="String" />
                        <asp:Parameter Name="Last_name" Type="String" />
                        <asp:Parameter Name="pass_word" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="user_nam" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource> </div>

            <div style="height:30px; Width:auto; margin-top:5px; background-color:maroon" ></div>
            
            
        </div>
    </form>
</body>
</html>
