<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="GocNetwork.QuenMatKhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quên mật khẩu Góc Network</title>
    <link rel="shortcut icon" type="image/png" href="Presentation/Images/Logo/logo.png"/>
    <style type="text/css">
        body {
            background-image: url("https://lh3.googleusercontent.com/pw/AM-JKLVKnP132YklhVTfbi4RLcVk8gVFFqswc5x0XrtEvGX9EAgMVJETJSI-uczdda3vPmSjh-l6_lQJuoyeEYX7inVOywL6GVgfYGKOYKyp49OoFi7aNPXdwt90atjA5MiqAgQAihNb-PhSuQHYB8gbCfxC=w1664-h937-no?authuser=1"); 
            height: 100%; 
            background-repeat: no-repeat;
            background-size: cover;
        }

        #quenmatkhau {
            background-color: #F0F8FF;
            margin: 150px auto;
            width: 400px;
            height: 280px;
            border: 2px solid blue;
            border-radius: 5px;
        }

        #quenmatkhau h1 {
            width: 100%;
            text-align: center;
            font-size: 28px;
        }

        #quenmatkhau #user, #pass {
            height: 50px;
        }

        input[type='submit'] {
            width: 120px;
            height: 40px;
            background-color: blue;
            color: #FFF;
            border: none;
            font-weight: bold;
        }

        .btnlaymatkhau {
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

         .btnlaymatkhau:hover {
            background-color: #9999FF
         }

         .btnlaymatkhau:active {
            background-color: #9999FF;
            box-shadow: 0 4px #666;
            transform: translateY(5px);
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="quenmatkhau">
            <h1>QUÊN MẬT KHẨU</h1>
            <div>
                <center>
                    Nhập Email Đăng ký của bạn:  <br /> <br /> <asp:TextBox ID="TxtEmail" runat="server" Font-Size="16px" Width="250px" Height="25px" ></asp:TextBox>
                    <br /><br />
                    <asp:Button ID="ButPwd" CssClass="btnlaymatkhau" runat="server" Text="LẤY MẬT KHẨU" OnClick="ButPwd_Click" />
                    <br /><br />
                     <asp:Label ID="Labmsg" runat="server"></asp:Label>
                </center>
            </div>
        </div>  
    </form>
    <%--Xóa quảng cáo host--%>
    <script src="Presentation/Script/RemoveAds.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>
