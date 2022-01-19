<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/Home.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GocNetwork.About" %>
<%@ Register Src="~/Presentation/UserControls/BaiHocMoi.ascx" TagPrefix="uc1" TagName="BaiHocMoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentContent" runat="server">

<style>
	p
	{
		letter-spacing: normal;
		line-height: 1.5;
		font-size: 16px;
		/*text-align: justify;*/
	}
</style>
    <h1>Vài nét về môn học</h1>
	<br/>
<p><strong>I. CCNA (Cisco Certified Network Associate)</strong></p>

<p>CCNA là chữ viết tắt của Cisco Certified Network Associate, là chứng chỉ 
quốc tế do hãng sản xuất thiết bị mạng hàng đầu thế giới - Cisco - cấp. 
Những kỹ sư, chuyên viên mạng được nhận chứng chỉ CCNA được công nhận 
trên toàn thế giới, họ được chứng nhận là có một nền tảng kiến thức về 
mạng (networking) bao gồm mạng cục bộ (LAN) mạng diện rộng (WAN) và 
Internet.Có chứng chỉ CCNA cũng chứng tỏ kỹ sư / chuyên viên có khả năng
 cấu hình và vận hành LAN, WAN, và dịch vụ truy cập quay số từ xa cho 
các mạng nhỏ (thông thường dưới 100 nốt mạng), và khả năng ứng dụng các 
giao thức cũng như công nghệ như: IP, IGRP, serial, frame-relay, IP RIP,
 Vlan, Ethernet, Access-list ... Chương trình CCNA phù hợp với nhiều đối
 tượng, từ các bạn học sinh / sinh viên có mong muốn và mục tiêu trở 
thành các kỹ sư hệ thống mạng, các nhà quản trị, các nhân viên kinh 
doanh thiết bị mạng ....</p>

<p><strong>1.1 Mục tiêu khóa học:</strong></p>

<p>- Chương trình CCNA phù hợp với nhiều đối tượng: kỹ thuật viên ngành mạng, những người chịu trách nhiệm cấu hình và hỗ trợ vận hành mạng, các bạn học sinh, sinh viên mong muốn trở thành chuyên viên, kỹ sư hệ thống mạng, các nhà quản trị, các nhân viên kinh doanh thiết bị mạng muốn cập nhật kiến thức… Tập trung vào việc cung cấp các kỹ năng và những kiến thức cần thiết để người học có thể  nắm bắt được mô hình mạng trong thực tế triển khai như thế nào. Đồng thời có thể thiết lập, vận hành và xử lý sự cố cho những môi trường mạng của các doanh nghiệp. Qua khóa học sẽ giúp học viên có thể tự tin trong việc cấu hình các thiết bị SWITCH, ROUTER  của Cisco cũng như của các hãng khác. Học viên có thể thiết lập các kết nối ra môi trường mạng diện rộng (WAN) , và triển khai bảo mật trên môi trường mạng. Sau khóa học, học viên hoàn toàn đủ tự tin trong việc vận hành hệ thống mạng tại các doanh nghiệp và đủ khả năng lấy chứng chỉ quốc tế CCNA của cisco.</p>

<p>- Sau khóa học, các bạn học viên đủ tự tin, đủ kiến thức để có thể quản trị tốt hệ thống mạng tại doanh nghiệp của mình.</p>

<p>- Học viên nắm được kiến thức lõi trong từng loại thiết kế mô hình mạng, chọn thiết bị tối ưu (Switch, Router, Firewall, …) phù hợp với đối tượng khách hàng (SMB, Enterprise, Banking, …)</p>
	<br/>
<p><strong>1.2 Chương trình dành cho những ai?</strong></p>

<p>- Chương trình dành cho những kỹ thuật viên mạng, những người chịu trách nhiệm cấu hình và hỗ trợ vận hành mạng. Bên cạnh đó chương trình cũng hướng vào các đối tượng là các nhà quản lý, các người bán sản phẩm, họ là những người muốn trang bi thêm những kiến thức về mạng. Chương trình cũng hướng tới các đối tượng đang muốn đạt đựơc các chứng chỉ có giá trị quốc tế như CCENT, CCNA, và các chứng chỉ cao hơn của Cisco. Đảm bảo học viên hoàn toàn đủ tự tin về khả năng kiến thức đáp ứng tốt nhu cầu công việc trong lĩnh vực quản trị hạ tầng mạng.</p>
	<br/>
<p><strong>1.3 Kiến thức cần trang bị:</strong></p>

<p>- Học viên cần có một số kiến thức cơ bản về mạng và mong muốn học về cách sử dụng và cấu hình thiết bị mạng Cisco và chuẩn bị kiến thức để thi chứng chỉ quốc tế CCNA.</p>

<p>- Học viên có khả năng đọc và hiểu tài liệu tiếng Anh.</p>
	<br/>
<p><strong>1.4 Một số nội dung cơ bản trong chương trình:</strong></p>

<p>+ Mô hình OSI và các giao thức</p>

<p>+ Địa chỉ IP, và subnet masks</p>

<p>+ Các thiết bị trong Mạng LAN và WAN</p>

<p>+ Cấu hình cho Bộ định tuyến (Router) căn bản</p>

<p>+ Định tuyến và các giao thức định tuyến</p>

<p>+ Bảo mật hệ thống mạng căn bản</p>

<p>+ Cấu hình định tuyến nâng cao</p>

<p>+ Lý thuyết và thực thi chuyển mạch LAN và VLAN</p>

<p>+ Thiết kế LAN & chuyển mạch LAN nâng cao</p>
	
<p>+ Lý thuyết và thiết kế WAN</p>
	
<p>+ Các công nghệ WAN: PPP, frame relay</p>

<p>+ Xử lý sự cố mạng</p>

<p><strong>II. MCSA (Microsoft Certified System Administrator)</strong></p>

<p>Microsoft Certified Solutions Associate (MCSA): Windows Server là chứng chỉ chứng nhận bạn đủ điều kiện đảm nhiệm các vị trí như  kỹ sư máy tính/ quản trị hệ thống hoặc một chuyên gia mạng máy tính. Đây là bước đầu tiên trên con đường trở thành Chuyên gia Giải pháp được Chứng nhận của Microsoft và là điều kiện tiên quyết để lấy tiếp chứng chỉ MCSE: Cloud Platform and Infrastructure.</p>

<p><strong>2.1 Mục tiêu khóa học:</strong></p>

<p>Hoàn Tất Chương Trình, Học Viên Đủ Khả Năng:</p>

<p>- Cài Đặt, Vận Hành, Bảo Trì Hệ Thống Mạng Máy Tính Trên Nền Tảng Microsoft Windows Server 2012.</p>

<p>- Trở thành Chuyên Gia trong lãnh vực "An Ninh Mạng Máy Tính".</p>

<p>- Vượt qua các Kỳ Thi Quốc Tế do Microsoft Tổ Chức để nhận Chứng Chỉ MCSA 2012 (Microsoft Certified Solution Associate) có Giá Trị Toàn Cầu.</p>
	<br/>
<p><strong>2.2 Chương trình dành cho những ai?</strong></p>

<p>Chương trình dành cho những kỹ thuật viên mạng, những người chịu trách nhiệm cấu hình và hỗ trợ vận hành mạng. Bên cạnh đó chương trình cũng hướng vào các đối tượng là các nhà quản lý, các người bán sản phẩm, họ là những người muốn trang bi thêm những kiến thức về mạng. Chương trình cũng hướng tới các đối tượng đang muốn đạt đựơc các chứng chỉ có giá trị quốc tế như MCSA, MCSE các chứng chỉ cao hơn của Microsoft. Đảm bảo học viên hoàn toàn đủ tự tin về khả năng kiến thức đáp ứng tốt nhu cầu công việc trong lĩnh vực quản trị mạng.</p>
	<br/>
<p><strong>2.3 Kiến thức cần trang bị:</strong></p>

<p>Học viên cần có một số kiến thức cơ bản về mạng Đã học Mạng Căn Bản hoặc đã có kiến thức tương đương</p>

<p>Học viên có khả năng đọc và hiểu tài liệu tiếng Anh.</p>

<p><strong>2.4. Một số nội dung cơ bản trong chương trình:</strong></p>

<p>- Sau khi học xong các bạn có thể đăng ký thi ngay các chứng chỉ của Microsoft</p>

<p>- Hiểu rõ và thành thạo các kỹ năng về cấu trúc hạ tầng, thiết kế và quản trị hệ thống mạng</p>
	
<p>- Có khả năng quản trị hạ tầng hệ thống Windows Server trong môi trường mạng doanh nghiệp.</p>

<p>- Có đủ kiến thức và khả năng triển khai và cấu hình các dịch vụ cơ bản của Windows Server: Active Directory, các dịch vụ mạng phổ biến (DHCP, DNS, VPN…)</p>
	<br/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDuongDan" runat="server">
    <div style="margin-left: 10px; margin-top: 5px;">
        <asp:Label ID="lblduongdan" runat="server" Font-Bold="true"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRight" runat="server">
    <uc1:BaiHocMoi runat="server" ID="BaiHocMoi" />
</asp:Content>


