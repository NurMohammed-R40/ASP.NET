<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StoreManagement.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="Col-md-3">

            <h4 style="font-size: larger; text-align: center">Register a new user</h4>
            <hr />
            <p>
                <asp:Literal runat="server" ID="StatusMessage" />
            </p>
            <div style="margin-bottom: 10px;">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2">User name</asp:Label>
                <asp:TextBox runat="server" ID="UserName" />
            </div>
            <div style="margin-bottom: 10px;">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
            </div>
            <div style="margin-bottom: 10px;">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
            </div>
            <div>
                <div>
                    <asp:Button ID="CreateUser" runat="server" OnClick="CreateUser_Click" Text="Register" />
                </div>
            </div>
        </div>

    </div>


</asp:Content>
