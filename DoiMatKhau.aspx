<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="GocNetwork.DoiMatKhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đổi mật khẩu Góc Network</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="shortcut icon" type="image/png" href="Presentation/Images/Logo/logo.png"/>
    <script>  
        var app = angular.module('GocNetwork', []);
        app.controller('Mycontroller', function ($scope) {
            $scope.showPassword = false;
            $scope.toggleShowPassword = function () {
                $scope.showPassword = !$scope.showPassword;
            }
        })
    </script>

    <style type="text/css">
        body {
            background-image: url("https://lh3.googleusercontent.com/pw/AM-JKLVKnP132YklhVTfbi4RLcVk8gVFFqswc5x0XrtEvGX9EAgMVJETJSI-uczdda3vPmSjh-l6_lQJuoyeEYX7inVOywL6GVgfYGKOYKyp49OoFi7aNPXdwt90atjA5MiqAgQAihNb-PhSuQHYB8gbCfxC=w1664-h937-no?authuser=1"); 
            height: 100%; 
            background-repeat: no-repeat;
            background-size: cover;
        }

        #doimatkhau {
            background-color: #F0F8FF;
            margin: 150px auto;
            width: 500px;
            height: 350px;
            border: 2px solid blue;
            border-radius: 5px;
        }

        #doimatkhau h1 {
            width: 100%;
            text-align: center;
            font-size: 28px;
        }

        input[type='submit'] {
            width: 120px;
            height: 40px;
            background-color: blue;
            color: #FFF;
            border: none;
            font-weight: bold;
        }

        .btndoimatkhau {
           display: inline-block;
           cursor: pointer;
           text-align: center;
           outline: 1px;
           color: #fff;
           background-color: #99CCFF;
           border: none;
           border-radius: 10px;
           box-shadow: 0 7px #CCCCCC;
        }

         .btndoimatkhau:hover {
            background-color: #9999FF
         }

         .btndoimatkhau:active {
            background-color: #9999FF;
            box-shadow: 0 4px #666;
            transform: translateY(5px);
         }

         .textbox{
             width: 250px;
             height: 25px;
             font-size: 16px;
         }

         td{
             font-size: 16px;
             font-weight: bold;
             padding-bottom: 10px;
         }

        @media screen and (max-width: 480px){
            #doimatkhau{
                width: 310px;
            }

            .textbox{
               width: 160px;
            }

            #showhideMKM{
                margin-left: -30px;
                
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="doimatkhau">
            <h1>ĐỔI MẬT KHẨU</h1>
            <div>
                <center>
                    <table>
                        <tr>
                            <td>Tên Tài Khoản</td><td>:</td>
                            <td><asp:TextBox ID="NameAccount" CssClass="textbox" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>Mật Khẩu Cũ</td><td>:</td>
                            <td><asp:TextBox ID="OldPassword" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr ng-app="GocNetwork" ng-controller="Mycontroller">
                            <td>Mật Khẩu Mới</td><td>:</td>
                            <td><asp:TextBox ID="NewPassword" CssClass="textbox" TextMode="Password" runat="server" ng-attr-type="{{showPassword ? 'text':'password'}}"></asp:TextBox></td>
                            <td><div id="showhideMKM" ng-click="toggleShowPassword()" ng-class="{'fas fa-eye':showPassword, 'fas fa-eye-slash':!showPassword}"></div></td>
                        </tr>

                        <tr>
                            <td>Nhập Lại Mật Khẩu</td><td>:</td>
                            <td><asp:TextBox ID="ConPassword" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td colspan="3"><asp:Label ID="lbl_dmk_msg" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                        </tr>

                        <tr>
                           <td><asp:Button ID="ChangePwd" align="center" CssClass="btndoimatkhau" runat="server" Text="ĐỔI MẬT KHẨU" OnClick="ChangePwd_Click" /></td>
                        </tr>
                    </table>
                </center>
            </div>
        </div>  
    </form>
    <%--Xóa quảng cáo host--%>
    <script src="Presentation/Script/RemoveAds.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
</body>
</html>