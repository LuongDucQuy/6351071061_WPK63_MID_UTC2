<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategory.ascx.cs" Inherits="de1.UserControl.ucCategory" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="CategoryListEntityDataSource">
    <ItemTemplate>
        <asp:HyperLink ID="CategoryHyperLink" runat="server" NavigateUrl='<%# "~/ManageCategory.aspx?id=" + Eval("CatID")%>' Text='<%# Eval("CatName") + " (" + Eval("Beverages.Count") + ")" %>'></asp:HyperLink>

    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="CategoryListEntityDataSource" runat="server" ConnectionString="name=QLDoUong" DefaultContainerName="QLDoUong" EnableFlattening="False" EntitySetName="Categories" Include="Beverages">
</asp:EntityDataSource>
