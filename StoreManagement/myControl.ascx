<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="myControl.ascx.cs" Inherits="StoreManagement.myControl" %>

    <div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Product Name:" AssociatedControlID="txtProductName" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Selling Price:" AssociatedControlID="txtSellingPrice" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Product Description:" AssociatedControlID="txtDescription" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Picture:" AssociatedControlID="pPicture" CssClass="control-label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="pPicture" runat="server" />
        </div>
         <div class="form-group">
            <asp:Button ID="btnInsert" runat="server" type="submit" Text="Insert" CssClass="btn btn-primary" OnClick="btnInsert_Click" />
        </div>
   </div>
