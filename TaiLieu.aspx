<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="TaiLieu.aspx.cs" Inherits="GocNetwork.Presentation.TaiLieu" %>

<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">
    <asp:GridView ID="grvTaiLieu" runat="server" AutoGenerateColumns="False" CellPadding="20" OnRowCommand="grvTaiLieu_RowCommand" CellSpacing="1" GridLines="None" ForeColor="#333333" HorizontalAlign="Center" PageSize="10" AllowPaging="True" OnPageIndexChanging="grvTaiLieu_PageIndexChanging" style="text-align:center;">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Mã tài liệu" DataField="IDTaiLieu">
                <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Tên tài liệu" DataField="TenTL">
                <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Loại tài liệu" DataField="LoaiTaiLieu" >
                <ItemStyle Width="130px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Ngày đăng" DataField="NgayDang">
                <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Dowload">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" Text="" runat="server" CommandName="cmdTaiLieu" CommandArgument='<%# Eval("IDTaiLieu") %>'>
                   <%--<img src="Images/Design/download.jpg" height="40" width="165" />--%>
                    <i class="fas fa-cloud-download-alt fa-2x" style="color:green;"></i>
                    </asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label></div>
</asp:Content>
