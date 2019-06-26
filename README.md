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
- Số tiền như tổng tiền, giá sách, ... sẽ được trả về dưới dạng chuỗi viết liền. (VD: "123000")
- Các số khác sẽ có kiểu Integers.
- Các trường trống nên có kiểu `null` hoặc để trống ("") thay vì bỏ qua nó.
- Các id trống sẽ có giá trị là `0`. (VD: `"parent_id" : "0"`)

Lỗi
---
Đôi khi bạn sẽ gặp lỗi khi truy cập dịch vụ. Có 4 lỗi phổ biến là:

|Lỗi|Ý nghĩa|
|:-|:-|
|`400 Bad Request`|Yêu cầu không hợp lệ (VD: yêu cầu phương thức không được hổ trợ).|
|`401 Unauthorized`|Lỗi xác thực hoặc không có quyền truy cập.|
|`404 Not Found`|Không tìm thấy thông tin được yêu cầu.|
|`500 Internal Server Error`|Lỗi máy chủ.|

Ngoài ra có nhiều lỗi khác nữa được liệt kê [tại đây](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

Phân trang
----------
Đối với cách danh sách dài, hệ thống sẽ mặc định phân trang với 10 phần tử mỗi trang.
Khi lấy danh sách, nếu như không có tham số theo sau, hệ thống sẽ mặc định trả về 10 phần tử đầu tiên theo thứ tự thời gian. VD:
`GET /users`

Các bạn có thể chỉ định trang với tham số `?page=`
`GET /users?page=2`

Tổng số phần tử và tổng số trang sẽ được trả về tại phần `HTTP Header` với tham số `STUBO-TotalItems` và `STUBO-TotalPages`.
> VD:
```
Connection →close
Date →Sun, 16 Jun 2019 14:23:32 GMT
Content-Length →3745
Content-Type →application/json
X-ORACLE-DMS-ECID →ed16cb40-43c3-4a28-8f93-ee9ea3a8b7ec-0000024c
X-ORACLE-DMS-RID →0
STUBO-TotalItems →21
```

Test
----
Để test thử hoạt động của Server, các bạn có thể tải file [tại đây](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/test) và Deploy lên server.

Database
--------
Database các bạn tải tại [link sau](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/database)

KHÁCH HÀNG
====

API cho phép tạo mới thành viên, lấy và cập nhật thông tin thành viên.

Thuộc tính của khách hàng
-------------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`User_ID`|Integer(11)|Mã của mỗi khách hàng.|`READONLY`|
|`User_Name`|String(20)|Tên hiển thị, đăng nhập.|`READONLY`|
|`User_Password`|String(32)|Mật khẩu đã được mã hóa.|`READ-WRITE`|
|`User_First_Name`|String(20)|Họ của khách hàng.|`READ-WRITE`|
|`User_Last_Name`|String(20)|Tên của khách hàng.|`READ-WRITE`|
|`User_Salt`|String(10)|Chuỗi ký tự bất kỳ để thêm vào mã hóa cùng với mật khẩu.|`READ-WRITE`|
|`User_BirthDay`|Datetime|Ngày sinh của khách hàng.|`READ-WRITE`|
|`User_News_Letter`|Integer(1)|Đăng ký nhận tin quảng cáo.|`READ-WRITE`|
|`User_Active`|Integer(1)|Tình trạng tài khoản.|`READ-WRITE`|
|`User_Avatar`|String|Link đường dẫn ảnh đại diện.|`READ-WRITE`|
|`User_Type`|Integer(1)|Loại khách hàng.|`READ-WRITE`|
|`User_Date_Expired`|Datetime|Ngày hết hạn thành viên.|`READ-WRITE`|
|`User_Address`|String|Địa chỉ khách hàng.|`READ-WRITE`|
|`User_Account_Balance`|Integer(11)|Số tiền còn trong tài khoản.|`READ-WRITE`|

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

API cho phép lấy thông tin sách (hay nhiều cuốn sách).

Thuộc tính của sách
-------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`Book_Id`|Integer(11)|Mã của cuốn sách.|`READONLY`|
|`Book_Name`|String(128)|Tên sách.|`READONLY`|
|`Book_Introduce`|String|Giới thiệu sách.|`READONLY`|
|`Book_Size`|String(10)|Khổ sách.|`READONLY`|
|`Book_Date_Submitted`|Datetime|Ngày đăng.|`READONLY`|
|`Book_Cover_Image`|String|Link ảnh bìa.|`READONLY`|
|`Book_Status`|Integer(1)|Trạng thái sách.|`READONLY`|
|`Book_Date_Publish`|Datetime|Ngày xuất bản.|`READONLY`|
|`Book_Mass`|String(10)|khối lượng sách.|`READONLY`|
|`Book_Format`|String|Định dạng sách.|`READONLY`|
|`Book_Page_Number`|Integer(11)|Số trang sách.|`READONLY`|
|`Book_Chapter`|Integer(11)|Số chương của sách.|`READONLY`|
|`Book_Language`|String|Ngôn ngữ của sách.|`READONLY`|
|`Book_Price`|Double|Đơn giá.|`READONLY`|
|`Book_List_Image`|String|Danh sách hÌnh ảnh.|`READONLY`|
|`Book_Rate`|Double|Đánh giá sách.|`READONLY`|
|`Book_Total_Rate`|Integer(11)|Tổng số lượt đánh giá.|`READONLY`|
|`Book_Normal_Price`|Double|Giá mua sách.|`READONLY`|
|`Book_Rent_Price`|Double|Giá thuê sách.|`READONLY`|
|`Book_Link`|String|Link tải sách.|`READONLY`|
|`Book_capacity`|String|Dung lượng sách.|`READONLY`|

Lấy thông tin một cuốn sách
---------------------------

### Lấy toàn bộ thông tin
> Đang xây dựng

### Lấy link tải sách
> Đang xây dựng

### Lấy dung lượng sách
> Đang xây dựng

### Lấy danh sách chương
> Đang xây dựng

Lấy danh sách sách
------------------
> Đang xây dựng

DANH MỤC
====

API cho phép lấy thông tin một hoặc nhiều danh mục.
Link tải module:

- [Phiên bản mới nhất ngày 26/06/2019.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/category/category_v2.2.jar)
- [Folder.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/category)

Thuộc tính của danh mục
-----------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`Catogery_Id`|String(11)|Mã danh mục.|`READONLY`|
|`Catogery_Name`|String(128)|Tên danh mục.|`READONLY`|
|`Category_Image_Link`|String|Link Hình ảnh danh mục.|`READONLY`|

Lấy thông tin danh mục
----------------------

API lấy thông tin danh mục thông qua ID.

> <img src="./include/image/btn-get.svg" height="15"> http://localhost:7101/soa-infra/resources/default/category_process!1.0/Category?id=5

```json
{
    "category": [
        {
            "categoryId": "5",
            "categoryParentId": "0",
            "categoryName": "Sách Khoa học - Kỹ thuật",
            "categoryImageLink": " ",
            "categorySlug": "sach-khoa-hoc-ky-thuat"
        }
    ]
}
```

Lấy danh sách danh mục
----------------------

API lấy thông tin tất cả danh mục sách.

> <img src="./include/image/btn-get.svg" height="15"> http://localhost:7101/soa-infra/resources/default/category_process!1.0/Category

```json
{
    "category": [
        {
            "id": 1,
            "parentId": 0,
            "name": "Sách văn học",
            "imageLink": " ",
            "slug": "sach-van-hoc"
        },
        {
            "id": 2,
            "parentId": 0,
            "name": "Sách kinh tế",
            "imageLink": " ",
            "slug": "sach-kinh-te"
        },
        {
            "id": 3,
            "parentId": 0,
            "name": "Sách kỹ năng sống",
            "imageLink": " ",
            "slug": "sach-ky-nang-song"
        },
        {
            "id": 4,
            "parentId": 0,
            "name": "Sách Giáo khoa - Giáo trình",
            "imageLink": " ",
            "slug": "sach-giao-khoa-giao-trinh"
        },
        {
            "id": 5,
            "parentId": 0,
            "name": "Sách Khoa học - Kỹ thuật",
            "imageLink": " ",
            "slug": "sach-khoa-hoc-ky-thuat"
        }
    ]
}
```
TÁC GIẢ
====

API cho phép lấy thông tin của một hay nhiều tác giả.

Thuộc tính của tác giả
----------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`Author_Id`|Integer|Mã tác giả|`READONLY`|
|`Author_Name`|String|Tên tác giả|`READONLY`|
|`Author_Note`|String|Ghi chú thông tin|`READONLY`|
|`Author_Image`|String|Link ảnh tác giả|`READONLY`|

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

ĐƠN HÀNG
====

API cho phép lấy thông tin đơn hàng.

Các thuộc tính của đơn hàng
---------------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`Order_Id`|Integer(11)|Mã đơn hàng|`READONLY`|
|`Order_Qty`|Integer(11)|Số lượng sách|`READONLY`|
|`Order_PaymentType`|Integer(1)|Loại thanh toán.\*|`READONLY`|
|`Order_Voucher_Id`|Integer(11)|Mã Giảm giá|`READONLY`|
|`Order_SubTotal`|Double|Giá tạm tính|`READONLY`|
|`Order_ToTal`|Double|Giá thực|`READONLY`|
|`Order_Comment`|TEXT|Ghi chú đơn hàng|`READONLY`|
|`Order_Status`|Integer(1)|Tình trạng đơn hàng.\**|`READONLY`|
|`Order_Items`|Array|Danh sách sách thuộc đơn hàng.|`READONLY`|

\* Loại thanh toán:

- 0: Thanh toán ngân hàng.
- 1: Thanh toán bằng điểm thường.

** Tình trạng đơn hàng:

- -1: Đã hủy.
- 0: Đang chờ xử lý.
- 1: Chưa thanh toán.
- 2: Đã thanh toán.
- 3: Hoàn tất.

### Danh sách sách thuộc đơn hàng

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`Order_BookId`|Integer(11)|Mã sách.|`READONLY`|
|`Order_BookPrice`|Double|Giá sách.|`READONLY`|
|`Order_BookName`|String(128)|Tên sách.|`READONLY`|
|`Order_BookVoucherId`|Integer(11)|Mã giảm giá.|`READONLY`|
|`Order_Book_Sub_Total`|Double|Giá tạm tính.|`READONLY`|
|`Order_Book_Price_Total`|Double|Giá sau khi giảm.|`READONLY`|

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
