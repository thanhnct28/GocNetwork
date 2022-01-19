<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="HoiDap.aspx.cs" Inherits="GocNetwork.Presentation.HoiDap" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">
    <div id="hoidap">
    </div>
    <div id="datcauhoi">
        <strong>Chủ đề:</strong><br />
        <asp:TextBox ID="txtChuDe" Text="" TextMode="MultiLine" Columns="2" runat="server" Width="330px"></asp:TextBox><br />
        <strong>Nội dung:</strong>
        <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Height="100px" Toolbar="Basic" ToolbarBasic="Bold|Italic|Underline|Strike|Subscript|Superscript|-|NumberedList|BulletedList|-|Link|Unlink|-|Image|Table|HorizontalRule|Smiley|SpecialChar|Iframe|-|TextColor|BGColor|-|Undo|Redo|-|SelectAll|-|Maximize|-|About"></CKEditor:CKEditorControl> 
        <br />
        <asp:Button CssClass="button" Text="Gửi câu hỏi" runat="server" Width="102px" OnClick="btnGuiCauHoi_Click" />
    </div>
    <br />
    <div style="margin-bottom: 10px;">
        <div style="font-size: 18px; margin-right: 15px; float: left;">Câu hỏi</div>
        (Lượt câu hỏi: <asp:Label ID="lblluotCauhoi" Font-Size="14px" runat="server"></asp:Label>)
            <asp:Button ID="btnXemCauHoi" CssClass="button" runat="server" Text="Xem câu hỏi" OnClick="btnXemCauHoi_Click" Height="32px" />
    </div>
    <div>
        <asp:Repeater ID="rptQuestion" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <div class="cauhoi" style="padding-left: 10px; background-color: #EEEEEE; border-radius: 10px;">
                            <asp:HiddenField ID="hdfIDCauHoi" runat="server" Value='<%# Eval("IDCauHoi") %>' />
                            <asp:Label ID="lblChuDe" runat="server" Text='<%# Eval("ChuDe") %>' Font-Bold="True" Font-Italic="True" ForeColor="Red" Font-Size="20px" />
                            <asp:Label ID="lblNoiDung" runat="server" Text='<%# Eval("NoiDung") %>' />
                        &emsp;<asp:Label ID="lblHoTen" runat="server" Text='<%# Eval("HoTen") %>' ForeColor="Blue" Font-Size="12px" />&nbsp;<a>&#8226;</a>
                            <asp:Label ID="lblNgayViet" runat="server" Text='<%# Eval("NgayViet") %>' ForeColor="#908D8D" Font-Size="12px" />
                            <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" OnClick="OnDelete" OnClientClick="return confirm('Bạn có muốn xóa câu hỏi này không?');" />
                        </div>
                    </td>
                </tr>
                <br />
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    </div> 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>


