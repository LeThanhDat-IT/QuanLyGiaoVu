use QuanLyGiaoVu
go
--1. Danh sách mã số, họ tên sinh viên và tên những môn học mà những sinh viên
--có đăng ký học và có kết quả thi.
select sv.masv,hosv, tensv, tenmh,diem
from sinhvien sv join dangky dk on sv.masv= dk.masv
				 join monhoc mh on dk.mamh=mh.mamh
				 join ketqua kq on sv.masv=kq.masv
--2. Danh sách tên của tất cả các môn học và tên giảng viên phụ trách lý thuyết
--tương ứng, nếu có.
select mh.mamh,tenmh, hoten, phutrach
from monhoc mh join giangday gd on mh.mamh=gd.mamh
			   join giangvien gv on gd.magv=gv.magv
where phutrach=N'LT'
--3. Cho biết mã số và họ tên giảng viên không có thân nhân nào.
select gv.magv, hoten ,hotentn
from giangvien gv left join thannhan tn on gv.magv=tn.magv
where hotentn is null
--4. Danh sách những sinh viên và tên những môn học đã đăng ký học nhưng không
--có kết quả thi của môn học.
select sv.masv, tensv, diem
from sinhvien sv join dangky dk on sv.masv=dk.masv
				 join monhoc mh on dk.mamh=mh.mamh
				 join ketqua kq on sv.masv=kq.masv
where diem is null
--5. Danh sách tên của những môn học đã được phân công giảng dạy trong học kỳ
--1 năm ‘2014-2015’ nhưng không có sinh viên đăng ký.
select mh.mamh,tenmh, hocky
from sinhvien sv join dangky dk on sv.masv=dk.masv
				 join monhoc mh on dk.mamh=mh.mamh
where hocky=N'2014-2015' and dk.masv is null
--6. Tạo danh sách có mã số và họ tên giảng viên dạy lý thuyết môn học tên là ‘Cơ
--sở dữ liệu’ trong học kỳ 2, 2014-2015.
select gv.magv, hoten, phutrach, tenmh, hocky, namhoc
from giangvien gv join giangday gd on gv.magv=gd.magv
				  join monhoc mh on gd.mamh=mh.mamh
where phutrach=N'LT' and hocky= 2 and tenmh=N'Cơ sở dữ liệu' and namhoc=N'2014-2015'
--7. Tạo danh sách có mã số, họ tên các giảng viên và mã môn học mà giảng viên
--được hoặc không được phân công giảng dạy lý thuyết trong năm 2014-2015.
select gv.magv, hoten, mh.mamh, tenmh, phutrach,namhoc
from  giangvien gv left join giangday gd on gv.magv=gd.magv
				  left join monhoc mh on gd.mamh=mh.mamh
where namhoc=N'2014-2015'