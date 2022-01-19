<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GocNetwork.Contact" %>

<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">


      
<header>
    <link href="Style/Main.css" rel="stylesheet" />
</header>

<div class ="responsive_contact"> 
    <h2 style="/*text-decoration: underline;*/ color: #581af3;">LIÊN HỆ</h2>
        <br/>
    <i class="far fa-address-card fa-10x" style="color:cornflowerblue;"></i>
    <br/><br/>
    <strong>Góc Network</strong>
        <br/>
    <i class="fa fa-envelope-open" aria-hidden="true" style="color:blue;"></i> Email: <a href="mailto:gocnetworks@gmail.com">gocnetworks@gmail.com</a>
                <br/>
    <i class="fa fa-phone-square" aria-hidden="true" style="color:darkred;"></i> Hotline: <a href="tel:0981019685">0981019685</a>
                <br/>
    <i class="fab fa-chrome" aria-hidden="true" style="color:lightskyblue;"></i> Website: <a href="http://gocnetwork.somee.com">gocnetwork.somee.com</a>
                <br/>
    <i class="fab fa-facebook" aria-hidden="true"  style="color:#3B5998;"></i> Facebook: <a href="https://www.facebook.com/G%C3%B3c-Network-111093181166158">Góc Network</a>
        <br/>
        <br/>
</div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
   <div style="margin-left:10px;margin-top:5px;"> <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>