<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Add_New_Product.aspx.cs" Inherits="StoreManagement.Members.Add_New_Product" %>

<%@ Register Src="~/myControl.ascx" TagPrefix="uc1" TagName="myControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Add New Product</h2>
    <br />
    <uc1:myControl runat="server" id="myControl" />
</asp:Content>
