<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Purchase_Product.aspx.cs" Inherits="StoreManagement.Members.Purchase_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <h2 style="text-align: center">Purchase New Product</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Purchase_ID" DataSourceID="PurchaseProduct" DefaultMode="Insert" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Purchase_ID" HeaderText="Purchase_ID" InsertVisible="False" ReadOnly="True" SortExpression="Purchase_ID" />
            <asp:TemplateField HeaderText="Product Name" SortExpression="Product_ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-co" AutoPostBack="True" DataSourceID="ProductList" DataTextField="Product_Name" DataValueField="Product_ID" SelectedValue='<%# Bind("Product_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ProductList" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" SelectCommand="SELECT DISTINCT [Product_ID], [Product_Name] FROM [tblProduct] ORDER BY [Product_Name], [Product_ID]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Product_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>' TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Quantity Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>' TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Price Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="Date Of Purchase" SortExpression="Purchase_Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Purchase_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="Date" runat="server" Text='<%# Bind("Purchase_Date") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Purchase Date Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Purchase_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="Dealer Name" SortExpression="Dealer_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Dealer_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Dealer_Name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Dealer_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dealer Address" SortExpression="Dealer_Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Dealer_Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Dealer_Address") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Dealer_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <FooterTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </FooterTemplate>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="PurchaseProduct" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" DeleteCommand="DELETE FROM [tblPurchase] WHERE [Purchase_ID] = @Purchase_ID" InsertCommand="INSERT INTO [tblPurchase] ([Product_ID], [Quantity], [Price], [Purchase_Date], [Dealer_Name], [Dealer_Address]) VALUES (@Product_ID, @Quantity, @Price, @Purchase_Date, @Dealer_Name, @Dealer_Address)" SelectCommand="SELECT * FROM [tblPurchase]" UpdateCommand="UPDATE [tblPurchase] SET [Product_ID] = @Product_ID, [Quantity] = @Quantity, [Price] = @Price, [Purchase_Date] = @Purchase_Date, [Dealer_Name] = @Dealer_Name, [Dealer_Address] = @Dealer_Address WHERE [Purchase_ID] = @Purchase_ID">
        <DeleteParameters>
            <asp:Parameter Name="Purchase_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Purchase_Date" />
            <asp:Parameter Name="Dealer_Name" Type="String" />
            <asp:Parameter Name="Dealer_Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="Purchase_Date" />
            <asp:Parameter Name="Dealer_Name" Type="String" />
            <asp:Parameter Name="Dealer_Address" Type="String" />
            <asp:Parameter Name="Purchase_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
