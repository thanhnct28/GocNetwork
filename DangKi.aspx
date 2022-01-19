<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="GocNetwork.Presentation.DangKi" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">
    <link href="Presentation/Style/Main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <script src="Presentation/Script/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <script>   
        var app = angular.module('GocNetwork', []);
        app.controller('Mycontroller', function ($scope) {
            $scope.showPassword = false;
            $scope.toggleShowPassword = function () {
                $scope.showPassword = !$scope.showPassword;
            }
        })
    </script>

    <%-- Chỉ cho nhập số textbox Số điện thoại--%>
    <script type="text/javascript">
        function ValidateKeypress(numcheck, e) {
            var keynum, keychar, numcheck;
            if (window.event) {
                keynum = e.keyCode;
            }
            else if (e.which) {
                keynum = e.which;
            }
            if (keynum == 8 || keynum == 127 || keynum == null || keynum == 9 || keynum == 0 || keynum == 13) return true;
            keychar = String.fromCharCode(keynum);
            var result = numcheck.test(keychar);
            return result;
        }
    </script> 

    <%-- Datepicker ngày sinh trang đăng ký --%>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#<%=dpkngaysinh.ClientID%>").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "1930:2050",
            });
        });
    </script>
    <%--END SCRIPT--%>

    <%--STYLE CSS --%>   
    <style type="text/css">
        .button {
            background: #002046;
            font-family: Arial, sans-serif;
            color: #ffffff;
            border-radius: 5px;
            padding: 4px 8px;
        }

        .button:hover {
            background-color: #0094ff;
            font-family: Arial, sans-serif;
        } 

        .ui-datepicker{
            font-size: 10pt !important
        }

        .auto-style1 {
            width: 147px;
        }
    </style>
    <%--END STYLE CSS --%> 



<%--BODY--%>
    <div>
        <table class="dangky" border="1">
            <tr>
                <th style="text-align: center; color: white">ĐĂNG KÝ TÀI KHOẢN NGƯỜI DÙNG</th>
            </tr>
        </table>

        <table class="truongdangky" text-align="left">
            <tr>
                <td colspan="2"><asp:Label ID="lblttnguoidung" runat="server"  Text="Thông tin người dùng" Font-Size="25px" Font-Bold="true"></asp:Label></td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblHoTen" runat="server" Text="Họ & Tên:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtHoTen" placeholder="Nguyễn Văn An" runat="server"></asp:TextBox>
                    <asp:Label ID="lblhotenbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblgioitinh" runat="server" Text="Giới Tính:"></asp:Label></th>
                <td colspan="2">
                    <asp:RadioButton ID="RbtNam" Checked="True" GroupName="gender" runat="server" />&nbsp;Nam&nbsp;&nbsp;
                    <asp:RadioButton ID="RbtNu" GroupName="gender" runat="server" />&nbsp;Nữ</td>
            </tr>
      
            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblngaysinh" runat="server" Text="Ngày Sinh:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="dpkngaysinh" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtDiaChi" placeholder="Nha Trang" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
    
            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblsdt" runat="server" Text="SĐT:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtSDT" runat="server" placeholder="0981019xxx" onkeypress="return ValidateKeypress(/\d/,event);"></asp:TextBox>
                    <asp:Label ID="lblsdtbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" placeholder="youremail@gmail.com" runat="server"></asp:TextBox>
                    <asp:Label ID="lblemailbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr><td colspan="2"><br /></td></tr>

            <tr>
              <td colspan="3">
                  <hr />
              </td>
            </tr>
        
            <tr>
                <td colspan="2"><asp:Label ID="lblthongtinTK" runat="server" Text="Thông tin tài khoản" Font-Size="25px" align="left" Font-Bold="true"></asp:Label></td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lbltentaikhoan" runat="server" Text="Tên tài khoản:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtTenTaiKhoan" placeholder="VD: annv99" runat="server"></asp:TextBox>
                    <asp:Label ID="lbltenbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr style="height:40px" ng-app="GocNetwork" ng-controller="Mycontroller">
                <th class="auto-style1"><asp:Label ID="lblmatkhau" runat="server" Text="Mật khẩu:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server" ng-attr-type="{{showPassword ? 'text':'password'}}"></asp:TextBox>
                    <asp:Label ID="lblpassbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    <div id="showhidepass" ng-click="toggleShowPassword()" ng-class="{'fas fa-eye':showPassword, 'fas fa-eye-slash':!showPassword}"></div>
                </td>
            </tr>

            <tr style="height:40px">
                <th class="auto-style1"><asp:Label ID="lblnhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu:"></asp:Label></th>
                <td colspan="3">
                    <asp:TextBox ID="txtMatKhauLai" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Label ID="lblcopassbatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr style="height:40px">
                <th><asp:Label ID="lblcapcha" runat="server" Text="Captcha:"></asp:Label></th>
                    <td colspan="1">
                        <cap:CaptchaControl ID="captcha1" runat="server" CapchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" FontColor="Blue" BackColor="Yellow" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46" Width="200" /></td>
                    <td><asp:LinkButton ID="ResetCaptcha" runat="server" OnClick="ResetCaptcha_Click" class="fas fa-sync" style="color:black" ></asp:LinkButton></td>
            </tr>

            <tr style="height:50px">
                <th class="auto-style1"><asp:Label ID="lblnhapcaptcha" runat="server" Text="Nhập Captcha:"></asp:Label></th>
                <td colspan="2">
                    <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                    <asp:Label ID="lblcaptchabatbuoc" Font-Bold="true" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr style="height:40px">
                <td class="auto-style1"></td>
                <td colspan="2">
                    <asp:Button ID="btndangki" runat="server" Text="Đăng ký" OnClick="btndangki_Click" CssClass="button" Height="32px" Width="101px"/>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
<%-- END BODY--%>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" Text="Trang chủ > Đăng ký" runat="server" Font-Bold="true"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>
