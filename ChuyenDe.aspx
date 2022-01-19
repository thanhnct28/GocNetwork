<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="ChuyenDe.aspx.cs" Inherits="GocNetwork.Presentation.ChuyenDe" %>
<%@ Register Src="~/Presentation/UserControls/ChuyenDe.ascx" TagPrefix="uc1" TagName="ChuyenDe" %>
<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">
     <div class="tieudiem" style="font-size:18px; margin-bottom:10px;">  
         <asp:Label ID="lblTenChuyenMuc" runat="server" Font-Size="14" Text=""></asp:Label>
     </div>
    <uc1:ChuyenDe runat="server" id="ChuyenDe" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
   <div style="margin-left:10px;margin-top:5px;"> <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label></div>
</asp:Content>
