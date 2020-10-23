create database QuanLiBanHang
go

use QuanLiBanHang
go

create table NhanVien
(
	MaNV varchar(10),
	TenNV nvarchar(30),
	NamSinh date,
	GioiTinh nvarchar(10),
	DiaChi nvarchar(50),
	SDT int,
	Primary key (MaNV),
)

create table Account
(
	username varchar(20),
	passwords varchar(20),
	MaNV varchar(10),
)

create table KhachHang
(
	MaKH varchar(10),
	TenKH nvarchar(30),
	GioiTinh nvarchar(10),
	DiaChi nvarchar(50),
	SDT int,
	Primary key (MaKH)
)

create table HangHoa
(
	MaHangHoa varchar(10),
	TenHang nvarchar(20),
	DonGia int,
	SoLuong int,
	MaNV varchar(10),
	Primary key (MaHangHoa),
)

create table HoaDon
(
	MaHoaDon varchar(20),
	KhachHang nvarchar(20),
	NhanVienlap nvarchar(20),
	NgayLap date,
	MaNV varchar(10),
	MaHangHoa varchar(10),
	MaKH varchar(10),
	Primary key (MaHoaDon),
	foreign key(MaHangHoa) references HangHoa(MaHangHoa), /* khoa nay sai*/
	foreign key(MaNV) references NhanVien(MaNV),
	foreign key(MaKH) references KhachHang(MaKH),
)

create table ChiTietHoaDon
(
	MaHoaDon varchar(20),
	MaHangHoa nvarchar(20),
	DonGia int,
	SoLuong int,
	Primary key (MaHangHoa,MaHoaDon),
	foreign key(MaHoaDon) references HoaDon(MaHoaDon)/* thieu khoa ngoai*/
)


insert into Account values('nhanvien1','123','01')
insert into Account values('nhanvien2','123','02')
insert into Account values('nhanvien2','123','03')
insert into Account values('cuahangtruong','123','04')


insert into khachhang values('01','Đặng Đăng Duy','M', 'Q.Tân Bình', '09311')
insert into khachhang values('02','Lê Tuấn Kiệt','M', 'Q.7', '09312')
insert into khachhang values('03','Lữ Trọng Phú','M', 'Q.Thủ Đức', '09313')
insert into khachhang values('04','Lê Thị Minh','F', 'Q.Bình Thạnh', '09314')

insert into NhanVien values('01','Lê Huỳnh Long','2000','M', 'Q.8','08311')
insert into NhanVien values('02','Nguyễn Phúc Luân','2000','M', 'Q.1','08312')
insert into NhanVien values('03','Phạm Hồng Nhung','2000','F', 'Q.Bình Tân','08313')
insert into NhanVien values('04','Trần Nhân Tài','2000','M', 'Q.Tân Phú','08314')

insert into HangHoa values('01','Chocopie','30000','1','01')
insert into HangHoa values('02','Aquafina','10000','2','02')
insert into HangHoa values('03','Ly mì Hảo Hảo','6000','1','03')
insert into HangHoa values('04','Snack bắp','8000','2','04')





