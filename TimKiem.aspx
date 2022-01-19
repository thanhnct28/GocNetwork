<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="GocNetwork.Presentation.TimKiem" %>

<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>
<%@ Register Src="~/Presentation/UserControls/TimKiem.ascx" TagPrefix="uc1" TagName="TimKiem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" Font-Bold="true" runat="server" Text="Trang chủ > Tìm kiếm"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentContent" runat="server">
    <uc1:TimKiem runat="server" ID="TimKiem" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>
