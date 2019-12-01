<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Sell_Product.aspx.cs" Inherits="StoreManagement.Members.Sell_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Sell Product</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Sales_ID" DataSourceID="SellProduct" DefaultMode="Insert" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Sales_ID" HeaderText="Sales_ID" InsertVisible="False" ReadOnly="True" SortExpression="Sales_ID" />
            <asp:TemplateField HeaderText="Product Name" SortExpression="Product_ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Product_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ProductList" DataTextField="Product_Name" DataValueField="Product_ID" SelectedValue='<%# Bind("Product_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ProductList" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" SelectCommand="SELECT DISTINCT [Product_ID], [Product_Name] FROM [tblProduct] ORDER BY [Product_Name]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Product_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>' TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Quantity Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sales Date" SortExpression="Sales_Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Sales_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Sales_Date") %>' TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Sales Date Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sales_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Name" SortExpression="Customer_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Customer's Name Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Customer_Address" HeaderText="Customer Address" SortExpression="Customer_Address" />
            <asp:TemplateField HeaderText="Customer Phone" SortExpression="Customer_Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Customer_Phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Customer_Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Customer's Phone No Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Customer_Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Email" SortExpression="Customer_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Customer_Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Customer_Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Customer's Email Require" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Customer_Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" SelectedValue='<%# Bind("Gender") %>'>
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <FooterTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </FooterTemplate>
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SellProduct" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" DeleteCommand="DELETE FROM [tblSales] WHERE [Sales_ID] = @Sales_ID" InsertCommand="INSERT INTO [tblSales] ([Product_ID], [Quantity], [Sales_Date], [Customer_Name], [Customer_Address], [Gender], [Customer_Phone], [Customer_Email]) VALUES (@Product_ID, @Quantity, @Sales_Date, @Customer_Name, @Customer_Address, @Gender, @Customer_Phone, @Customer_Email)" SelectCommand="SELECT * FROM [tblSales]" UpdateCommand="UPDATE [tblSales] SET [Product_ID] = @Product_ID, [Quantity] = @Quantity, [Sales_Date] = @Sales_Date, [Customer_Name] = @Customer_Name, [Customer_Address] = @Customer_Address, [Gender] = @Gender, [Customer_Phone] = @Customer_Phone, [Customer_Email] = @Customer_Email WHERE [Sales_ID] = @Sales_ID">
        <DeleteParameters>
            <asp:Parameter Name="Sales_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Sales_Date" />
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Customer_Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Customer_Phone" Type="String" />
            <asp:Parameter Name="Customer_Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_ID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Sales_Date" />
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Customer_Address" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Customer_Phone" Type="String" />
            <asp:Parameter Name="Customer_Email" Type="String" />
            <asp:Parameter Name="Sales_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
