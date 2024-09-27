<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="de1.ManageCategory" %>
<%@ Register src="UserControl/ucProductListByCategory.ascx" tagname="ucProductListByCategory" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucProductListByCategory ID="ucProductListByCategory1" runat="server" />
</asp:Content>
