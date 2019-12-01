<%@ Page Title="" Language="C#" MasterPageFile="~/myMaster.Master" AutoEventWireup="true" CodeBehind="Available_Product.aspx.cs" Inherits="StoreManagement.Members.Available_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Available Product In Your Store</h2>
    <br />
    <p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="AvailableProductDb" HorizontalAlign="Center" PageSize="7" DataKeyNames="Product_ID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" SortExpression="Product_Name" />
                        <asp:BoundField DataField="Selling_Price" HeaderText="Selling Price" SortExpression="Selling_Price" />
                        <asp:TemplateField HeaderText="Available Quantity" SortExpression="Available_Quantity">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Available_Quantity") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Available_Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                            <EditItemTemplate>
                                <img src='<%#Eval("Product_Id","DbImageHandler.ashx?id={0}") %>' width="50" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img src='<%#Eval("Product_Id","DbImageHandler.ashx?id={0}") %>' width="50" />
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:BoundField DataField="Product_Description" HeaderText="Product Description" SortExpression="Product_Description" />


                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="AvailableProductDb" runat="server" ConnectionString="<%$ ConnectionStrings:StoreManagementConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Product_ID] = @original_Product_ID" InsertCommand="INSERT INTO [tblProduct] ([Product_Name], [Available_Quantity], [Selling_Price], [Picture], [Product_Description]) VALUES (@Product_Name, @Available_Quantity, @Selling_Price, @Picture, @Product_Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] ORDER BY [Product_Name], [Selling_Price], [Available_Quantity]" UpdateCommand="UPDATE [tblProduct] SET [Product_Name] = @Product_Name, [Available_Quantity] = @Available_Quantity, [Selling_Price] = @Selling_Price, [Picture] = @Picture, [Product_Description] = @Product_Description WHERE [Product_ID] = @original_Product_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Product_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Product_Name" Type="String" />
                        <asp:Parameter Name="Available_Quantity" Type="Int32" />
                        <asp:Parameter Name="Selling_Price" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="Object" />
                        <asp:Parameter Name="Product_Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Product_Name" Type="String" />
                        <asp:Parameter Name="Available_Quantity" Type="Int32" />
                        <asp:Parameter Name="Selling_Price" Type="Decimal" />
                        <asp:Parameter Name="Picture" Type="Object" />
                        <asp:Parameter Name="Product_Description" Type="String" />
                        <asp:Parameter Name="original_Product_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </p>

</asp:Content>
