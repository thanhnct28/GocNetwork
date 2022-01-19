<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GocNetwork.Default" %>

<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="TinHot" %>
<%@ Register Src="~/Presentation/UserControls/BaiHoc.ascx" TagPrefix="uc1" TagName="BaiHoc" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">

    <script src="Presentation/Script/jquery-1.11.1.min.js"></script>
    <link href="Presentation/Style/SlideShow.css" rel="stylesheet" />
    <script type="text/javascript">  
        $(document).ready(function () {
            initSlideShow();
        });
        function initSlideShow() {
            if ($(".slideshow div").length > 1) {
                var transationTime = 5000;
                $(".slideshow div:first").addClass('active');
                setInterval(slideChangeImage, transationTime);
            }
        }
        function slideChangeImage() {
            var active = $(".slideshow div.active");
            if (active.length == 0) {
                active = $(".slideshow div:last");
            }
            var next = active.next().length ? active.next() : $(".slideshow div:first");
            active.addClass('lastactive');
            next.css({ opacity: 0.0 })
                    .addClass('active')
                    .animate({ opacity: 1.0 }, 1500, function () {
                        active.removeClass("active lastactive");                      z
                    });
        }
    </script>
     
    <%--Hạt chuyển động trang Default --%>
    <script src="Presentation/Script/particles.js"></script>
    <script>
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 160,
                    "density": {
                        "enable": true,
                        "value_area": 800
                    }
                },
                "color": {
                    "value": "#002046"
                },
                "shape": {
                    "type": "circle",
                    "stroke": {
                        "width": 0,
                        "color": "#000000"
                    },
                    "polygon": {
                        "nb_sides": 5
                    },
                    "image": {
                        "src": "img/github.svg",
                        "width": 100,
                        "height": 100
                    }
                },
                "opacity": {
                    "value": 1,
                    "random": true,
                    "anim": {
                        "enable": true,
                        "speed": 1,
                        "opacity_min": 0,
                        "sync": false
                    }
                },
                "size": {
                    "value": 3,
                    "random": true,
                    "anim": {
                        "enable": false,
                        "speed": 4,
                        "size_min": 0.3,
                        "sync": false
                    }
                },
                "line_linked": {
                    "enable": false,
                    "distance": 150,
                    "color": "#002046",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 1,
                    "direction": "none",
                    "random": true,
                    "straight": false,
                    "out_mode": "out",
                    "bounce": false,
                    "attract": {
                        "enable": false,
                        "rotateX": 600,
                        "rotateY": 600
                    }
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": true,
                        "mode": "bubble"
                    },
                    "onclick": {
                        "enable": true,
                        "mode": "repulse"
                    },
                    "resize": true
                },
                "modes": {
                    "grab": {
                        "distance": 400,
                        "line_linked": {
                            "opacity": 1
                        }
                    },
                    "bubble": {
                        "distance": 250,
                        "size": 0,
                        "duration": 2,
                        "opacity": 0,
                        "speed": 3
                    },
                    "repulse": {
                        "distance": 400,
                        "duration": 0.4
                    },
                    "push": {
                        "particles_nb": 4
                    },
                    "remove": {
                        "particles_nb": 2
                    }
                }
            },
            "retina_detect": true
        });
    </script>

    <div class="row">
        <div class="slideshow">
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3em30QU7W8yiNKh1ARfNiId1d26lmPZUAepgllTY2urcwXgBB002VKkikp-bYdIRAAd3Q-vJt-P0BF80zpV-RsZ1dv27lEqmEwn3cxKesv79Kk3qHeeqTfYEC4QE6f9fuAuYUBY-F8f-Uahvdyltt_D=w1024-h710-no?authuser=1" alt=""  />
                </a>
            </div>
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3fW74mj1CksYR9lvnoWSc8N-w5mEUd_bgvYZKkBf7iytTvqamlHb4lN0KvziCjg1UQXMITuj89QvtFZOa2dVDYKRy_e4QyB-zKAf8NvucViCLkwRng_cm0Ts6rBgXaOFIVB23QhDYCb61VY_R1IuN1W=w1000-h644-no?authuser=1" alt="" />
                </a>
            </div>
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3eYaXoS0eg53cWmFsUAk6MQ_5NBm6MxHZL8cR2eHtTMJ7BFU2PCnDttoasGf6Zh79WY1zacW_F67W6yy9XQO3UAUcQv8PIGJE-kkfSE6sTEvQYJqzb4GocEcPU88LAEWGaFaHTm5KHWWvfy7DilOTGa=w952-h617-no?authuser=1" alt="" />
                </a>
            </div>
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3e9RyRe7YxXi9j5jqdzKOZWOawXnnv15noYkHN3RDMbH__vrAdfY0Ev1WH4OCYpoMQ8LKlRgoorjY_Dn5cW0FrXJWXKlvdSQ_tntRYvlXZtWt_ztJ2AybHy4-vxXrUPL2a-Xi5WoqHCvlGEMuujOssv=w1666-h937-no?authuser=1" alt="" />
                </a>
            </div>
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3fsne-pdr-Zj1Z4_9jfIRZGbNmDMXFdGrXjqP0sBSUqRfV3JRSshpFG5rWGGjamFgNmlA-C7kFoBu0hvECK7ovvxKXw_9A8kE9H2jH9CA5z7U8p6fg5xDSWNf6n69JLvcasU4hzcQdijsekGpMMRomk=w512-h341-no?authuser=1" alt="" />
                </a>
            </div>
            <div>
                <a href="#">
                    <img src="https://lh3.googleusercontent.com/pw/ACtC-3cPj6hmWN0NU5neHR_ZH7rEVXNCzS3haez3K_9Y5WvcIYWjEfnxNn--Ka-oLl1adsA3Q6YWxqtIw5uJ399OwcpVqeeaCNt_Jx3BOWwXsj2xEO7JaRjy9dtHF3UXL7ACAYBs8Y6_tMBSPk6onzukYHYg=w1426-h937-no?authuser=1" alt="" />
                </a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="tieudiem">
            <i class="fa fa-th-list" aria-hidden="true"></i>
            <span>Lý do bạn nên chọn ngành quản trị mạng</span>
        </div>
    </div>
    
    <div class="row" id="article_list">
        <div class="col-lg-12">
            <div class="article_item">
                <div> 
                    <image src="Presentation/Images/office.svg" style="width: 153px; height: 165px"> </image>
                    <h1>Đây là một ngành nghề bắt buộc phải có trong tất cả các ngành công nghiệp</h1>
                </div>
                <p>Cho dù các doanh nghiệp đang hoạt động trong lĩnh vực khác nhau như: kinh doanh, sản xuất hay các dịch vụ ăn uống, khoa học hay thậm chí là các hoạt động phi lợi nhuận thì Mạng là không thể thiếu cho hoạt động của hầu hết các doanh nghiệp lớn. Vì thế mà quản trị mạng cũng không thể thiếu.</p>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="article_item">
                <div>
                    <image src="Presentation/Images/learning.svg" style="width: 153px; height: 165px"> </image>
                    <h1>Từng bước học hỏi -  nhu cầu tuyển dụng không ngừng phát triển</h1>
                </div>
                <p>Công việc quản trị mạng chia ra làm nhiều cấp độ khác nhau. Nhưng trong thực tế,  hầu hết hệ thống mạng của các công ty không được xây dựng trong một lúc mà phải mất thời gian khá lâu. Điều này có nghĩa là các chi tiết trong công việc quản trị hệ thống công ty sẽ được đào tạo  từ từ. Bạn sẽ không phải lo lắng mới ra trường chưa thạo việc.</p>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="article_item">
                <div>
                    <image src="Presentation/Images/job.svg" style="width: 153px; height: 165px"> </image>
                    <h1>Bạn có thể linh hoạt chọn cách làm việc cho mình cũng như địa điểm làm việc</h1>
                </div>
                <p>Nơi làm việc có thể tại văn phòng công ty, nhưng nó cũng có thể là ngay tại nhà bạn. Điều này là linh hoạt bởi bạn chủ yếu quản lý hệ thống qua mạng internet.</p>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="article_item">
                <div>
                    <image src="Presentation/Images/working.svg" style="width: 153px; height: 165px"> </image>
                    <h1>Đây là một thách thức dành cho những kỹ năng của bạn</h1>
                </div>
                <p>Người quản trị thường được đánh giá là có những suy nghĩ đột phá khi giải quyết những vấn đề khó khăn. Trước một khó khăn họ cần tỉnh táo để đưa ra quyết định đúng đắn nhất. Đó là một trong những kỹ năng cần thiết.</p>
            </div>
        </div>
    </div>  
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:TinHot runat="server" ID="TinHot" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <asp:Label ID="lblduongdan" Font-Bold="true" runat="server" Text="Trang Chủ"></asp:Label>
</asp:Content>
