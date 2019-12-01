<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StoreManagement.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
        <tr>
            <td>
                <table cellpadding="0">
                    <tr>
                        <td align="center" colspan="2">Sing in Now</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:label id="UserNameLabel" runat="server" associatedcontrolid="UserName">User Name:</asp:label>
                        </td>
                        <td>
                            <asp:textbox id="UserName" runat="server"></asp:textbox>
                            <asp:requiredfieldvalidator id="UserNameRequired" runat="server" controltovalidate="UserName" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:label id="PasswordLabel" runat="server" associatedcontrolid="Password">Password:</asp:label>
                        </td>
                        <td>
                            <asp:textbox id="Password" runat="server" textmode="Password"></asp:textbox>
                            <asp:requiredfieldvalidator id="PasswordRequired" runat="server" controltovalidate="Password" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:checkbox id="RememberMe" runat="server" text="Remember me next time." />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color: Red;">
                            <asp:literal id="FailureText" runat="server" enableviewstate="False"></asp:literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2">
                            <asp:button id="LoginButton" runat="server" commandname="Login" text="Log In" validationgroup="Login1" onclick="LoginButton_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    </center>

</asp:Content>
