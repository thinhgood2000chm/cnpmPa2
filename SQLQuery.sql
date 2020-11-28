create database QLCHDoChoi
use QLCHDoChoi
create table taiKhoan(
	stt int IDENTITY(1,1) ,
	TenNV nvarchar(50),
	Chuc_vu varchar(50),
	tenTK varchar(100) not null	,
	matkhau varchar(100),
	primary key (tenTK,stt),
	
)
insert into taikhoan values('Nguyen Van Dat','admin','Datadmin','123456')
insert into taikhoan values('Nguyen Van Hoang','employee','Hoangemployee','123456')
insert into taikhoan values('Nguyen Van Hoang','employee','Hoangpay','123456')

create table nhanVien(
	Ma_nv int IDENTITY(1,1) PRIMARY KEY,
	Ho_ten nvarchar(50),
	Diachi nvarchar(50),	
	Gioi_tinh bit,
	Chuc_vu varchar(50),
	Ngay_sinh datetime,
)
 
insert into nhanVien values('Nguyen Anh Tung','742 Le Van Luong','1','Nhan vien kho','10-24-1992')
insert into nhanVien values('Bui Cam Tu','20 Doi Can','0','Nhan vien ban hang','11-04-1991')
insert into nhanVien values('Bui Cam Tu','20 Doi Can',0,'Nhan vien ban hang','11-04-1991')
create table khachHang(
stt int IDENTITY(1,1), 
	Ma_kh char(5) not null, 
	Ho_ten nvarchar(50),
	SDT char(20),
	Gioi_tinh bit,
	Lan_mua int,
	primary key (Ma_kh)
)

insert into khachHang values('KH001','Bui Manh Dung','+840333751245','1',2)
insert into khachHang values('KH002','Nguyen Minh Nhat','+840333751275','1',5)



create table doChoi(
stt int IDENTITY(1,1), 
	Ma_sp char(5)  not null,
	Ten_sp nvarchar(50),
	Nsx nvarchar(50),
	Don_gia int,
	Loai_do_choi nvarchar(50),
	primary key(Ma_sp)
)

insert into doChoi values('sp01','Xe dieu khien tu xa','Thanh Hoa',500000,'tren 15 tuoi')
insert into doChoi values('sp02','Vit cao su','Ben Tre',7000,'tu 3 den 6 tuoi') 



create table HoaDon(
	stt int IDENTITY(1,1),
	Ma_kh char(5) not null, 
	Ma_sp char(5) ,
	Ho_ten nvarchar(50),
	SDT char(20),
	So_luong int,
	Gia_tien int,
	Tien_khach_tra int,
	Primary key(Ma_kh,Ma_sp),
	foreign key (Ma_kh) references khachHang(Ma_kh),
	foreign key (Ma_sp) references doChoi(Ma_sp)
)

insert into HoaDon values('KH001','sp01','Bui Manh Dung','+840333751245',1,500000,500000)
insert into HoaDon values('KH002','sp01','Bui Manh Dung','+840333751275',1,500000,500000)

use QLCHDoChoi

drop table khachHang
select * from nhanVien
select * from taiKhoan
drop table taiKhoan
select * from khachHang
select * from doChoi

delete from HoaDon
delete from doChoi
