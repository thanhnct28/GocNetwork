<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GocNetwork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập Góc Network</title>
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

        #login {
            background-color: #F0F8FF;
            margin: 100px auto;
            width: 400px;
            height: 600px;
            border: 2px solid blue;
            border-radius: 5px;
        }

        #login h1 {
            width: 100%;
            text-align: center;
            font-size: 30px;
        }

        #login #user, #pass {
            height: 50px;
        }

        input[type='submit'] {
            height: 40px;
            background-color: blue;
            color: #FFF;
            border: none;
            font-weight: bold;
        }

        .btndangnhap {
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

        .btndangnhap:hover {
            background-color: #9999FF
        }

        .btndangnhap:active {
            background-color: #9999FF;
            box-shadow: 0 4px #666;
            transform: translateY(5px);
        }

        #fagotw{
            padding-top: 50px;
            color: gray;
        }

        #navDangky{
            padding-top: 130px;
        }

        @media screen and (max-width: 480px){
            #login{
                width: 310px;
            }

            #fontawe-user{
                padding-right: 285px;

            }

            #fontawe-pass{
                padding-right: 285px;
            }

            #showhidediv{
                padding-left: 270px;
            }

            #pass{
                margin-top: 5px;
            }

            #duytridangnhap{
                margin-top: 5px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--Form login--%>
        <div class="row" id="login">
        
            <%--Tên header login--%>
            <div class="row">
                <h1>ĐĂNG NHẬP</h1>
             </div> 

            <%--Tên đăng nhập--%>
            <div class="row">
                <div id="user" align="center">
                   <i class="fas fa-user" id="fontawe-user"></i>
                    <asp:TextBox runat="server" ID="txtUser" Font-Size="16px" placeholder="Tài khoản" Height="25px" Width="300px" />
                </div>

               <%-- Mật khẩu--%>
                <div id="pass" ng-app="GocNetwork" ng-controller="Mycontroller" align="center">
                    <i class="fas fa-lock" id="fontawe-pass"></i>
                    <asp:TextBox runat="server" TextMode="Password" ID="txtPass" Font-Size="16px" placeholder="Mật khẩu" Height="25px" Width="276px" ng-attr-type="{{showPassword ? 'text':'password'}}"/>
                    <div id="showhidediv" ng-click="toggleShowPassword()" ng-class="{'fas fa-eye':showPassword, 'fas fa-eye-slash':!showPassword}"></div>
                </div>
           </div>

            <%--Duy trì đăng nhập--%>
            <div class="row" id="duytridangnhap">
                <div align="center" >
                    <asp:CheckBox ID="ckbDuyTriDangNhap" runat="server"/> Duy trì đăng nhập 
                     <br /> <br />
                </div>
           </div>
           
            <%--Nút đăng nhập--%>
            <div class="row">
                <div id="button" align="center">
                    <asp:Button ID="btnDangNhap" CssClass="btndangnhap" runat="server" Text="ĐĂNG NHẬP" Width="300px" OnClick="BtnDangNhap_Click" />
                </div>
                <br />
            </div>

            <%--Quên mật khẩu--%>
            <div class="row">
                <div id="quenmatkhau" align="center">
                    <a href="QuenMatKhau.aspx" onlick="window.open('QuenMatKhau.aspx', 'Quên Mật Khẩu', 'width=500, height=100, top=300, left=500, fullscreen=no, resizable=0');">Quên mật khẩu?</a>
                    &emsp; &emsp; 
                    <a href="DoiMatKhau.aspx" onlick="window.open('DoiMatKhau.aspx', 'Đổi Mật Khẩu', 'width=500, height=100, top=300, left=500, fullscreen=no, resizable=0');">Đổi mật khẩu</a>
                </div>
            </div>

            <%--Đăng nhập bằng Facebook, Google, Twitter--%>
            <div class="row" id="fagotw" align="center">
                <asp:Label ID="FaGoTw" runat="server">Hoặc Đăng Nhập</asp:Label>
                <br /><br />

                <a onclick="alert('Chức năng đang phát triển!');">
                    <i class="fab fa-facebook fa-3x" style="color: #3B5998"></i>
                </a>

                <a onclick="alert('Chức năng đang phát triển!');">
                    <i class="fab fa-google-plus fa-3x" style="color: #EA4335; padding: 0px 10px 0px 10px"></i>
                </a>

                <a onclick="alert('Chức năng đang phát triển!');">
                    <i class="fab fa-twitter-square fa-3x" style="color: #1DA1F2"></i>
                </a>   
            </div>

            <%--Nút chuyển hướng đăng ký--%>
            <div class="row">
                <div id="navDangky" align="center">
                  <asp:Label ID="question" runat="server">Bạn chưa có Tài Khoản?</asp:Label>
                    <br />
                  <a href="DangKi.aspx" onlick="window.open('DangKi.aspx', 'Đăng Ký', fullscreen=no, resizable=0');">ĐĂNG KÝ</a>
                </div>
            </div>
        </div>  
    </form>
    <%--Xóa quảng cáo host--%>
    <script src="Presentation/Script/RemoveAds.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>
