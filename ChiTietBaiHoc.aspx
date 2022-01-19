<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="ChiTietBaiHoc.aspx.cs" Inherits="GocNetwork.Presentation.ChiTietBaiHoc" %>
<%@ Register Src="~/Presentation/UserControls/Video.ascx" TagPrefix="uc1" TagName="Video" %>
<%@ Register Src="~/Presentation/UserControls/ViDu.ascx" TagPrefix="uc1" TagName="ViDu" %>
<%@ Register Src="~/Presentation/UserControls/BaiKiemTra.ascx" TagPrefix="uc1" TagName="BaiKiemTra" %>
<%@ Register Src="~/Presentation/UserControls/BaiTapTuLam.ascx" TagPrefix="uc1" TagName="BaiTapTuLam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">
    <div class="tieudiem" style="font-size: 18px; margin-bottom: 10px;">
        <asp:Label ID="lblTenChuyenMuc" runat="server" Font-Size="14" Text=""></asp:Label>
    </div>
    <asp:PlaceHolder ID="phContent" runat="server"></asp:PlaceHolder>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

    <script src="Presentation/Script/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#right').find('a').click(function () {
                bentoancuc = $(this).attr('id');
                localStorage.setItem("bentoancuc", bentoancuc);
                $(this).addClass('link');
            });
            $('#' + localStorage.getItem("bentoancuc")).addClass('link');
            localStorage.removeItem("bentoancuc");
        });
    </script>

    <uc1:ViDu runat="server" ID="ViDu" />
    <uc1:BaiKiemTra runat="server" ID="BaiKiemTra" />
    <uc1:BaiTapTuLam runat="server" ID="BaiTapTuLam" />
    <uc1:Video runat="server" ID="Video" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label>
    </div>
</asp:Content>