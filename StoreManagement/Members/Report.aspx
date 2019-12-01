<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="StoreManagement.Members.Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
    <asp:Button ID="btnShow" runat="server" OnClick="btnShowPurchase_Click" Text="Show Purchase Report" CssClass="btn btn-primary"/>&nbsp;
    <asp:Button ID="btnShowSales" runat="server" OnClick="btnShowSales_Click" Text="Show Sales Report" CssClass="btn btn-success"/>
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    </center>
</asp:Content>
