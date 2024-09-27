<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductListByCategory.ascx.cs" Inherits="de1.UserControl.ucProductListByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="ProductListByCategoryEntityDataSource">
    <ItemTemplate>
        <div class="product-item" style="display: inline-block; width: 30%; margin: 1%;">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' CssClass="product-name"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>' />
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' CssClass="product-price"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Description") %>' CssClass="view-details">View Details</asp:HyperLink>
            <br />
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="display: flex; flex-wrap: wrap;">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
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

<style>
    .product-name {
        color: red; /* Màu đỏ cho tên sản phẩm */
        font-weight: bold; /* Có thể thêm đậm nếu muốn */
    }

    .product-price {
        color: red; /* Màu đỏ cho giá sản phẩm */
        font-weight: bold; /* Có thể thêm đậm nếu muốn */
    }

    .view-details {
        color: blue; /* Màu xanh cho liên kết View Details */
        text-decoration: underline; /* Có thể thêm gạch chân nếu muốn */
    }
</style>
