<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductListByCategory.ascx.cs" Inherits="de1.UserControl.ucProductListByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="ProductListByCategoryEntityDataSource">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        <br>
        <asp:Image ID="Image1" runat="server" Text='<%# Eval("ImageFilePath") %>'/></asp:Image>
        <br>
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
        <br>
        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Description") %>'>View Details</asp:HyperLink>
        <br>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="ProductListByCategoryEntityDataSource" runat="server" ConnectionString="name=QLDoUong" DefaultContainerName="QLDoUong" EnableFlattening="False" EntitySetName="Beverages">
</asp:EntityDataSource>

