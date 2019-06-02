Webservices
===========

GIỚI THIỆU
====
Là một thành phần thuộc luận văn tốt nghiệp đề tài "Book Online". Webservice cung cấp các chức năng thao tác với hệ thống và cơ sở dữ liệu. Được xây dựng dựa trên Oracle SOA Suite 12c và hoạt động trên máy chủ Weblogic.

Hướng dẫn cài đặt
----------------
Các bạn vui lòng tham khảo hướng dẫn cài đặt ở [link sau](https://docs.google.com/document/d/1O_k8r3JOXMeDWBqN8y5NaVocXxu-mPnCBLKtbaP-iBA/edit?usp=sharing)

Yêu cầu thêm
------------
Các nhóm có yêu cầu thêm webservice, đưa yêu cầu tại [link sau](https://docs.google.com/spreadsheets/d/1j9Frzclw5lVHv_q74zs8ymbm25YsynnqoQis2Bju3NY/edit?usp=sharing)

Định dạng Request/Response
-------------------------
Mặc định, hệ thống sẽ trả về định dạng JSON. Các yêu cầu từ client cũng nên sử dụng định dạng JSON trong phần Request Body. Các yêu cầu thành công sẽ trả về trạng thái `HTTP 200 ok`.

Định dạng thông tin trả về:

- Ngày tháng được định dạng theo chuẩn [ISO8601](https://vi.wikipedia.org/wiki/ISO_8601): `YYYY-MM-DDTHH:MM:SS`
- IDs trả về có kiểu Integers.
- Số thập phân sẽ được ngăn cách bởi dấu phẩy (VD: 12.3).
- Số tiền như tổng tiền, giá sách, ... sẽ được trả về dưới dạng chuỗi viết liền (VD: "123000").
- Các số khác sẽ có kiểu Integers.
- Các trường trống nên có kiểu `null` hoặc để trống ("") thay vì bỏ qua nó.

Lỗi
---
Đôi khi bạn sẽ gặp lỗi khi truy cập dịch vụ. Có 4 lỗi phổ biến là:
|Lỗi|Ý nghĩa|
|:--|:------|
|`400 Bad Request`| Yêu cầu không hợp lệ (VD: yêu cầu phương thức không được hổ trợ). |
|`401 Unauthorized`| Lỗi xác thực hoặc không có quyền truy cập. |
|`404 Not Found`| Không tìm thấy thông tin được yêu cầu. |
|`500 Internal Server Error` | Lỗi máy chủ. |

Ngoài ra có nhiều lỗi khác nữa được liệt kê [tại đây](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

Phân trang
----------
Đối với cách danh sách dài, hệ thống sẽ mặc định phân trang với 10 phần tử mỗi trang.
Khi lấy danh sách, nếu như không có tham số theo sau, hệ thống sẽ mặc định trả về 10 phần tử đầu tiên theo thứ tự thời gian. VD:
> GET /users

Các bạn có thể chỉ định trang với tham số `?page=`
> GET /users?page=2

Tổng số phần tử và tổng số trang sẽ được trả về tại phần `HTTP Header` với tham số `STUBO-Total` và `STUBO-TotalPages`.

Test
----
Để test thử hoạt động của Server, các bạn có thể tải file [tại đây](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/test) và Deploy lên server.

XÁC THỰC
====

KHÁCH HÀNG
====

Tạo thành viên mới
------------------
> Đang xây dựng

Cập nhật thông tin thành viên
-----------------------------

### Cập nhật thông tin thành viên
> Đang xây dựng

### Cập nhật tài khoản thanh toán
> Đang xây dựng

### Cập nhật hạn thành viên
> Đang xây dựng

Lấy thông tin thành viên
------------------------

### Lấy thông tin thành viên
> Đang xây dựng

### Lấy hạn thành viên
> Đang xây dựng

Xác thực thành viên
-------------------
> Đang xây dựng

Lấy thông tin tài khoản thanh toán
----------------------------------
> Đang xây dựng

SÁCH
====

Lấy thông tin một cuốn sách
---------------------------

### Lấy toàn bộ thông tin
> Đang xây dựng

### Lấy link tải sách
> Đang xây dựng

### Lấy dung lượng sách
> Đang xây dựng

Lấy danh sách sách
------------------
> Đang xây dựng

DANH MỤC
====

Lấy thông tin danh mục
----------------------
> Đang xây dựng

Lấy danh sách danh mục
----------------------
> Đang xây dựng

TÁC GIẢ
====

Lấy thông tin tác giả
---------------------
> Đang xây dựng

Lấy danh sách tác giả
---------------------
> Đang xây dựng

NHÀ XUẤT BẢN
====

Lấy thông tin nhà xuất bản
--------------------------
> Đang xây dựng

Lấy danh sách nhà xuất bản
--------------------------
> Đang xây dựng

GIỎ HÀNG
====

Tạo giỏ hàng
------------
> Đang xây dựng

Cập nhật giỏ hàng
----------------
> Đang xây dựng

Lấy thông tin giỏ hàng
----------------------
> Đang xây dựng

Hủy giỏ hàng
------------
> Đang xây dựng

ĐƠN HÀNG
====

Tạo đơn hàng
------------
> Đang xây dựng

Cập nhật đơn hàng
----------------
> Đang xây dựng

Lấy thông tin đơn hàng
----------------------
> Đang xây dựng

DANH SÁCH YÊU THÍCH
====

Tạo danh sách yêu thích
-----------------------
> Đang xây dựng

Cập nhật danh sách yêu thích
-----------------------------
> Đang xây dựng

Lấy danh sách yêu thích
-----------------------
> Đang xây dựng

Hủy danh sách yêu thích
-----------------------
> Đang xây dựng

ĐÁNH GIÁ SÁCH
====

Tạo đánh giá
------------
> Đang xây dựng

Cập nhật đánh giá
-----------------
> Đang xây dựng

Lấy đánh giá
------------
> Đang xây dựng

SÁCH ĐÃ MUA
====

Thêm sách đã mua
----------------
> Đang xây dựng

Cập nhật sách đã mua
--------------------
> Đang xây dựng

Lấy thông tin sách đã mua
-------------------------

### Lấy thông tin sách đã mua
> Đang xây dựng

### Lấy số trang đã đọc
> Đang xây dựng

### Lấy thời hạn đọc sách
> Đang xây dựng

Lấy danh sách sách đã mua
-------------------------
> Đang xây dựng
