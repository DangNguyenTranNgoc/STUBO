Webservices
===========

GIỚI THIỆU
====
Là một thành phần thuộc luận văn tốt nghiệp đề tài "Book Online". Webservice cung cấp các chức năng thao tác với hệ thống và cơ sở dữ liệu. Được xây dựng dựa trên Oracle SOA Suite 12c và hoạt động trên máy chủ Weblogic.

Danh sách các request
---------------------
![Danh sách các request](./include/image/list_of_request.PNG)

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

Xác thực
--------

Một số API sử dụng JSON Web Tokens (jwt) để xác thực thành viên. Tham khảo tại link sau: [JSON Web Token](https://jwt.io/). Hệ thống sử dụng thuật toán [HS256](https://vi.wikipedia.org/wiki/SHA#SHA-256) để mã hóa jwt và [Base64](https://en.wikipedia.org/wiki/Base64) để mã hóa token của người dùng. Tất cả được hỗ trợ trong thư viện mã nguồn mở [JJWT](https://java.jsonwebtoken.io/). Token và jwt sẽ được trả về tại phần `HTTP Header` với tham số `STUBO-Token` và `STUBO-JWT`.

VD:

[JWT mẫu](https://jwt.io/#debugger-io?token=eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjM2MzIxMDIsInN1YiI6IlVzZXIiLCJpc3MiOiJTVFVCTyIsInVpZCI6IjMiLCJ1c24iOiJFcmljIiwiZXhwIjoxNTY0MTYwNDAwfQ.8YEcuJHZQDINQU3aITae8C4JT0iNCwHTNauTNQ_7XlU)

![JWT mẫu](./include/image/jwt.png)

### Thuộc tính trong JWT

|Thuộc tính|Mô tả||
|:-|:-|
|`alg`|Thuật toán mã hóa sửa dụng|
|`iat`|Ngày tạo (Đổi sang millisecond).|
|`sub`|Chủ đề của token.|
|`iss`|Tổ chức tạo và ký token.|
|`uid `|Mã người dùng.|
|`usn`|Tên người dùng.|
|`exp`|Ngày hết hạn (Đổi sang millisecond).|

### Thuộc tính trong bản token

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|
|`tokenId`|Integer(11)|Mã token.|
|`userId`|Integer(11)|Mã người dùng.|
|`tokenName`|String(128)|Tên token|
|`tokenPermissions`|String(10)|Quyền của token*|
|`tokenKey`|String(64)|Token|
|`tokenDateEnd`|DateTime|Ngày giờ token hết hiệu lực|
|`tokenDateCreated`|DateTime|Ngày giờ tạo.|

Test
----
Để test thử hoạt động của Server, các bạn có thể tải file [tại đây](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/test) và Deploy lên server.

Database
--------
Database (cập nhật ngày 26/06/2019) các bạn tải tại [link sau](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/database)

KHÁCH HÀNG
====

API cho phép tạo mới thành viên, lấy và cập nhật thông tin thành viên.
Link tải module:

- [Phiên bản mới nhất ngày 30/06/2019.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/user/retrieve%20a%20user/user_v2.4.jar)
- [Folder.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/user/)


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

Đăng nhập
---------

API đăng nhập thành viên

> <img src="./include/image/btn-post.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Authentication!1.0/login

> Tham số của API

```json
{
  "user_name" : "Tên đăng nhập.",
  "user_password" : "Mật khẩu"
}
```

> Trả về
```json
{
  "result": {
    "tokenKey": "qsQxOg1UWUuLTgzvX60L4pkVi0QxQdNSsYe4UjK8VSo9psyQZCJjNFkBKD0P0Veb",
    "jwtToken": "eyJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NjM2MzIxMDIsInN1YiI6IlVzZXIiLCJpc3MiOiJTVFVCTyIsInVpZCI6IjMiLCJ1c24iOiJFcmljIiwiZXhwIjoxNTY0MTYwNDAwfQ.8YEcuJHZQDINQU3aITae8C4JT0iNCwHTNauTNQ_7XlU"
  }
}
```

Tạo thành viên mới
------------------
> Đang xây dựng

Cập nhật thông tin thành viên
-----------------------------

### Cập nhật thông tin thành viên
> Đang xây dựng

### Cập nhật tài khoản thanh toán

API cập nhật tài khoản thành viên.

Tham số của API

|Tham số|Loại|Mô tả|
|:-|:-:|:-|
|`id`|Integer|Mã của thành viên|
|`money`|String|Số tiền thêm hoặc giảm|
|`add`|Integer|Đánh dấu thêm hoặc giảm\*|

\* Tham số `add`:

- 0: Cộng thêm (Mặc định).
- 1: Giảm bớt.

><img src="./include/image/btn-put.svg" height="15"> http://localhost:7101/soa-infra/resources/default/User!1.0/balance?id=5&money=20000

### Cập nhật hạn thành viên
> Đang xây dựng

Lấy thông tin thành viên
------------------------

### Lấy thông tin thành viên

API lấy thông tin thành viên dựa trên ID.

><img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/User!2.4/user?id=2

```json
{
    "user": [
        {
            "userId": 2,
            "userName": "snuff",
            "userEmail": "tyrell1981@gmail.com",
            "userFirstName": "Jones",
            "userLastName": "James",
            "userBirthDay": "1991-06-12T00:00:00.000+07:00",
            "userNewsLetter": false,
            "userActive": false,
            "userAvatar": "https://www.fakepersongenerator.com/Face/male/male20171084006419891.jpg",
            "userType": true,
            "userDateExpired": {
                "@nil": "true"
            },
            "userAddress": "Elkins, West Virginia(WV), 26241",
            "userBalance": "0"
        }
    ]
}
```

### Lấy hạn thành viên
> Đang xây dựng

Lấy thông tin tài khoản thanh toán
----------------------------------
> Đang xây dựng

SÁCH
====

API cho phép lấy thông tin sách (hay nhiều cuốn sách).
Link tải module:

- [Phiên bản mới nhất ngày 14/07/2019.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/category/category_v2.0.jar)
- [Folder.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/category)

Thuộc tính của sách
-------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`bookId`|Integer(11)|Mã của cuốn sách.|`READONLY`|
|`bookName`|String(128)|Tên sách.|`READONLY`|
|`bookIntroduce`|String|Giới thiệu sách.|`READONLY`|
|`bookSize`|String(10)|Khổ sách.|`READONLY`|
|`bookDateSubmitted`|Datetime|Ngày đăng.|`READONLY`|
|`bookCoverImage`|String|Link ảnh bìa.|`READONLY`|
|`bookStatus`|Integer(1)|Trạng thái sách.|`READONLY`|
|`bookDatePublish`|Datetime|Ngày xuất bản.|`READONLY`|
|`bookMass`|String(10)|khối lượng sách.|`READONLY`|
|`bookFormat`|String|Định dạng sách.|`READONLY`|
|`bookPageNumber`|Integer(11)|Số trang sách.|`READONLY`|
|`bookChapter`|Integer(11)|Số chương của sách.|`READONLY`|
|`bookLanguage`|String|Ngôn ngữ của sách.|`READONLY`|
|`bookPrice`|Double|Đơn giá.|`READONLY`|
|`bookListImage`|String|Danh sách hÌnh ảnh.|`READONLY`|
|`bookRate`|Double|Đánh giá sách.|`READONLY`|
|`bookTotalRate`|Integer(11)|Tổng số lượt đánh giá.|`READONLY`|
|`bookNormalPrice`|Double|Giá mua sách.|`READONLY`|
|`bookRentPrice`|Double|Giá thuê sách.|`READONLY`|
|`bookLink`|String|Link tải sách.|`READONLY`|
|`authorId`|Integer|Mã tác giả|`READONLY`|
|`authorName`|String|Tên tác giả|`READONLY`|
|`authorNote`|String|Ghi chú thông tin|`READONLY`|
|`authorImage`|String|Link ảnh tác giả|`READONLY`|
|`nxbId`|Integer(11)|Mã nhà xuất bản|`READONLY`|
|`nxbName`|String(128)|Tên nhà xuất bản.|`READONLY`|
|`nxbImage`|String|Link ảnh nhà xuất bản.|`READONLY`|
|`catogeryId`|Integer(11)|Mã danh mục.|`READONLY`|
|`categoryParentId`|Integer(11)|Mã danh mục cha.|`READONLY`|
|`catogeryName`|String(128)|Tên danh mục.|`READONLY`|
|`categoryImageLink`|String|Link Hình ảnh danh mục.|`READONLY`|
|`categorySlug`|String(128)|Tên danh mục đã bỏ đi dấu và khoảng cách.|`READONLY`|


Lấy thông tin một cuốn sách
---------------------------

### Lấy toàn bộ thông tin

API lấy thông tin một cuốn sách theo ID.

> <img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Book!2.0/book?id=12

```json
{
  "Book": [
    {
      "bookId": 12,
      "bookName": "Giáo Trình Thiết Kế Cơ Khí Với SOLIDWORKS Dùng Cho Các Phiên Bản 2019 - 2014",
      "bookIntroduce": "Sự phát triển nhanh chóng khoa học kỹ thuật nhất là lĩnh vực tin học đã hỗ trợ rất nhiều ngành nghề. Trong lĩnh vực thiết kế cơ khí, sự ra đời máy công cụ điều khiển bằng chương trình số với sự trợ giúp của máy tính (CNC) là một bước đột phá trong ngành cơ khí chế tạo. Hầu như các khu công nghiệp ở Việt Nam đều có các máy CNC để phục vụ sản xuất, bao gồm nhiều chủng loại loại máy khác nhau như máy phay, tiện, bào. mài, với số trục điều khiển từ 2 đến 3, 4, 5. Để khai thác và sử dụng thành thạo các chương trình CAD-CAM.",
      "bookSize": "",
      "bookDateSubmitted": "2019-07-13T15:43:40.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/75x75/ts/product/68/49/73/f4369b0794aee9d890de4e800d5be6f8.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:43:40.000+07:00",
      "bookMass": "0.6kg",
      "bookFormat": "pdf",
      "bookPageNumber": 232,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 140000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 0.0,
      "bookTotalRate": 0,
      "bookNormalPrice": 140000.0,
      "bookRentPrice": 15000.0,
      "bookLink": {
        "@nil": "true"
      },
      "stuboAuthor": {
        "authorId": "1",
        "authorName": "Phạm Quang Huy ",
        "authorNote": {
          "@nil": "true"
        },
        "authorImage": " "
      },
      "stuboNxb": {
        "nxbId": "4",
        "nxbName": "Trí Việt",
        "nxbImage": "https://www.vinabook.com/images/thumbnails/publisher/180x235/145027_firstnews.jpg"
      },
      "stuboCategory": {
        "categoryId": "10",
        "categoryParentId": "6",
        "categoryName": "Lập trình",
        "categoryImageLink": " ",
        "categorySlug": "lap-trinh"
      }
    }
  ]
}
```

### Lấy link tải sách
> Đang xây dựng

### Lấy danh sách chương
> Đang xây dựng

Lấy danh sách sách
------------------
API cho phép lấy thông tin danh sách các cuốn sách. Mặc định API sẽ trả về 10 cuốn sách đầu tiên theo thứ tự ID tăng dần. Để lấy 10 cuốn tiếp theo sử dụng thông số `page`.

> <img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Book!2.0/book

```json
{
  "Book": [
    {
      "bookId": 1,
      "bookName": " Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.",
      "bookSize": "14x20cm",
      "bookDateSubmitted": "2019-07-13T11:19:09.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T11:19:09.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 366,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 135000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.0,
      "bookTotalRate": 165,
      "bookNormalPrice": 135000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 2,
      "bookName": " Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Hòn Đá Phù Thủy - Tập 1 (Tái Bản 2017)\r\n\r\nKhi một lá thư được gởi đến cho cậu bé Harry Potter bình thường và bất hạnh, cậu khám phá ra một bí mật đã được che giấu suốt cả một thập kỉ. Cha mẹ cậu chính là phù thủy và cả hai đã bị lời nguyền của Chúa tể Hắc ám giết hại khi Harry mới chỉ là một đứa trẻ, và bằng cách nào đó, cậu đã giữ được mạng sống của mình. Thoát khỏi những người giám hộ Muggle không thể chịu đựng nổi để nhập học vào trường Hogwarts, một trường đào tạo phù thủy với những bóng ma và phép thuật, Harry tình cờ dấn thân vào một cuộc phiêu lưu đầy gai góc khi cậu phát hiện ra một con chó ba đầu đang canh giữ một căn phòng trên tầng ba. Rồi Harry nghe nói đến một viên đá bị mất tích sở hữu những sức mạnh lạ kì, rất quí giá, vô cùng nguy hiểm, mà cũng có thể là mang cả hai đặc điểm trên.",
      "bookSize": "14x20cm",
      "bookDateSubmitted": "2019-07-13T11:20:59.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/ts/product/92/77/b0/ec0a4054a5e85ea308d35f643c884c98.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T11:20:59.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 366,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 135000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.5,
      "bookTotalRate": 165,
      "bookNormalPrice": 135000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 3,
      "bookName": "Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Tên Tù Nhân Ngục Azkaban - Tập 3 (Tái Bản 2017)\r\n\r\nHarry Potter may mắn sống sót đến tuổi 13, sau nhiều cuộc tấn công của Chúa tể hắc ám.\r\n\r\nNhưng hy vọng có một học kỳ yên ổn với Quidditch của cậu đã tiêu tan thành mây khói khi một kẻ điên cuồng giết người hàng loạt vừa thoát khỏi nhà tù Azkaban, với sự lùng sục của những cai tù là giám ngục.\r\n\r\nDường như trường Hogwarts là nơi an toàn nhất cho Harry lúc này. Nhưng có phải là sự trùng hợp khi cậu luôn cảm giác có ai đang quan sát mình từ bóng đêm, và những điềm báo của giáo sư Trelawney liệu có chính xác?\r\n\r\n‘Câu chuyện được kể với trí tưởng tượng bay bổng, sự hài hước bất tận có thể quyến rũ cả người lớn lẫn trẻ em.’",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:10:22.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter.u5102.d20170425.t095624.709837.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:10:22.000+07:00",
      "bookMass": "1 kg",
      "bookFormat": "pdf",
      "bookPageNumber": 560,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 180000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.5,
      "bookTotalRate": 65,
      "bookNormalPrice": 180000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 4,
      "bookName": "Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái Bản 2017)\r\n\r\nKhi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Chúa tể Voldemort và sự trở lại của Dấu hiệu hắc ám khủng khiếp, Harry ý thức được rõ ràng rằng, Chúa tể Voldemort đang ngày càng mạnh hơn. Và để trở lại thế giới phép thuật, Chúa tể hắc ám cần phải đánh bại kẻ duy nhất sống sót từ lời nguyền chết chóc của hắn - Harry Potter. Vì lẽ đó, khi Harry bị buộc phải bước vào giải đấu Tam Pháp thuật uy tín nhưng nguy hiểm, cậu nhận ra rằng trên cả chiến thắng, cậu phải giữ được mạng sống của mình.\r\n\r\nBốn năm của Harry cũng như của chúng tôi ở trường Hogwarts thật vui nhộn, một thế giới đầy hài hước cùng nhiều hoạt động thú vị.",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:10:22.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:10:22.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 922,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 270000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.5,
      "bookTotalRate": 62,
      "bookNormalPrice": 270000.0,
      "bookRentPrice": 50000.0,
      "bookLink": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_20342017_033410.u4972.d20170426.t163428.208230.jpg",
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 5,
      "bookName": "Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Hội Phượng Hoàng - Tập 5 (Tái Bản 2017)\r\n\r\nHarry tức giận vì bị bỏ rơi ở nhà Dursley trong dịp hè, cậu ngờ rằng Chúa tể hắc ám Voldemort đang tập hợp lực lượng, và vì cậu có nguy cơ bị tấn công, những người Harry luôn coi là bạn đang cố che giấu tung tích cậu. Cuối cùng, sau khi được giải cứu, Harry khám phá ra rằng giáo sư Dumbledore đang tập hợp lại Hội Phượng Hoàng – một đoàn quân bí mật đã được thành lập từ những năm trước nhằm chống lại Chúa tể Voldemort. Tuy nhiên, Bộ Pháp thuật không ủng hộ Hội Phượng Hoàng, những lời bịa đặt nhanh chóng được đăng tải trên Nhật báo Tiên tri – một tờ báo của giới phù thủy, Harry lo ngại rằng rất có khả năng cậu sẽ phải gánh vác trách nhiệm chống lại cái ác một mình.\r\n\r\n‘Hoang đường nhưng không hoang tưởng, trí tưởng tượng của Rowling cùng sự táo bạo của cô đã tạo cho cô một phong cách riêng.’ - The Times.",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:10:22.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/h/a/harry-potter-va-hoi-phuong-hoang.u5102.d20170614.t140027.842314.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:10:22.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 1310,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 355000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.0,
      "bookTotalRate": 61,
      "bookNormalPrice": 355000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 6,
      "bookName": "Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Hoàng Tử Lai - Tập 06 (Tái Bản 2017)\r\n\r\nĐây là năm thứ 6 của Harry Potter tại trường Hogwarts. Trong lúc những thế lực hắc ám của Voldemort gieo rắc nỗi kinh hoàng và sợ hãi ở khắp nơi, mọi chuyện càng lúc càng trở nên rõ ràng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của mình. Nhưng liệu Harry đã sẵn sàng vượt qua những thử thách đang chờ đợi phía trước?\r\n\r\nTrong cuộc phiêu lưu tăm tối và nghẹt thở nhất của mình, J.K.Rowling bắt đầu tài tình tháo gỡ từng mắc lưới phức tạp mà cô đã mạng lên, cũng là lúc chúng ta khám phá ra sự thật về Harry, cụ Dumblebore, thầy Snape và, tất nhiên, Kẻ Chớ Gọi Tên Ra…\r\n\r\n‘Diễn biến nhanh, huyền bí, hấp dẫn và chặt chẽ trong từng chi tiết.'",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:10:22.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_29292017_042903.u5430.d20170714.t090946.716950.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:10:22.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 716,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 215000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.0,
      "bookTotalRate": 33,
      "bookNormalPrice": 215000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 7,
      "bookName": "Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)",
      "bookIntroduce": "Harry Potter Và Bảo Bối Tử Thần - Tập 07 (Tái Bản 2017)\r\n\r\nHarry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:10:22.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/n/x/nxbtre_full_11592017_085924.u5430.d20170714.t085343.684591.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:10:22.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 846,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": {
        "@nil": "true"
      },
      "bookPrice": 245000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.5,
      "bookTotalRate": 33,
      "bookNormalPrice": 245000.0,
      "bookRentPrice": 50000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 3,
        "authorName": "J. K. Rowling",
        "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
      },
      "Nxb": {
        "nxbId": 1,
        "nxbName": "Nhà Xuất Bản Trẻ",
        "nxbImage": "https://www.nxbtre.com.vn/css/skin/logo.png"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 8,
      "bookName": "Nhà Giả Kim",
      "bookIntroduce": "Nhà Giả Kim\r\n\r\nTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.\r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”\r\n\r\n- Trích Nhà giả kim",
      "bookSize": "13 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:43:40.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/media/catalog/product/i/m/img117.u3059.d20170616.t100547.729023.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:43:40.000+07:00",
      "bookMass": "0.4 kg",
      "bookFormat": "pdf",
      "bookPageNumber": 228,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 69000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 4.5,
      "bookTotalRate": 3416,
      "bookNormalPrice": 69000.0,
      "bookRentPrice": 15000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 11,
        "authorName": "Paulo Coelho",
        "authorNote": "Paulo Coelho sinh tại Rio de Janeiro (Brasil), vào trường luật ở đó, nhưng đã bỏ học năm 1970 để du lịch qua México, Peru, Bolivia và Chile, cũng như châu Âu và Bắc Phi. Hai năm sau ông trở về Brasil và bắt đầu soạn lời cho nhạc pop. Ông cộng tác với những nhạc sĩ pop như Raul Seixas. Năm 1974 ông bị bắt giam một thời gian ngắn vì những hoạt động chống lại chế độ độc tài lúc đó ở Brasil.\r\n\r\nSách của ông đã được bán ra hơn 86 triệu bản trên 150 nước và được dịch ra 56 thứ tiếng. Ông đã nhận được nhiều giải thưởng của nhiều nước, trong đó tác phẩm Veronika quyết chết (Veronika decide morrer) được đề cử cho Giải Văn chương Dublin IMPAC Quốc tế có uy tín.",
        "authorImage": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Coelhopaulo26012007-1.jpg/360px-Coelhopaulo26012007-1.jpg"
      },
      "Nxb": {
        "nxbId": 13,
        "nxbName": "Nhà xuất bản Văn học",
        "nxbImage": "http://www.nxbvanhoc.com//upload/banner/1376194032_top_website_70year.JPG"
      },
      "Category": {
        "categoryId": 1,
        "categoryParentId": 0,
        "categoryName": "Sách văn học",
        "categoryImageLink": " ",
        "categorySlug": "sach-van-hoc"
      }
    },
    {
      "bookId": 9,
      "bookName": "Những Nguyên Tắc Vàng Của Napoleon Hill",
      "bookIntroduce": "Những Nguyên Tắc Vàng Của Napoleon Hill\r\n\r\nNapoleon Hill là một tác giả được nhiều người yêu mếm và có số lượng lớn các quyển sách nổi tiếng viết về đề tài phát triển tiềm năng con người, giúp hàng triệu người đạt được thành công.\r\n\r\nNhững nguyên tắc vàng của Napoleon Hill tập hợp những bài viết của ông trong khoảng thời gian từ năm 1919 đến năm 1923. \"Những nguyên tắc vàng\" này chính là chiếc chìa khóa hữu dụng trong mọi thời đại, đưa độc giả đến với thành công bằng phương pháp mang tính thực tiễn cao.\r\n",
      "bookSize": "14",
      "bookDateSubmitted": "2019-07-13T15:43:40.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/75x75/ts/product/79/94/da/0a562e6d62a7a802a1ffde48804eebb2.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:43:40.000+07:00",
      "bookMass": "1kg",
      "bookFormat": "pdf",
      "bookPageNumber": 223,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 64000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 3.6,
      "bookTotalRate": 16,
      "bookNormalPrice": 64000.0,
      "bookRentPrice": 15000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 6,
        "authorName": " Napoleon Hill",
        "authorNote": "Napoleon Hill (Sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970) là một tác gia người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn \"thành công học\" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên \"Suy nghĩ và làm giàu\" (Think and Grow Rich) là. một trong những cuốn sách bán chạy nhất mọi thời đại. Trong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là \"Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành\".Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.Cuốn sách kinh điển suy nghĩ và làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/132172_napoleonhill.jpg"
      },
      "Nxb": {
        "nxbId": 4,
        "nxbName": "Trí Việt",
        "nxbImage": "https://www.vinabook.com/images/thumbnails/publisher/180x235/145027_firstnews.jpg"
      },
      "Category": {
        "categoryId": 2,
        "categoryParentId": 0,
        "categoryName": "Sách kinh tế",
        "categoryImageLink": " ",
        "categorySlug": "sach-kinh-te"
      }
    },
    {
      "bookId": 10,
      "bookName": "5 Nền Tảng Cho Thành Công - Napoleon Hill",
      "bookIntroduce": "5 Nền Tảng Cho Thành Công - Napoleon Hill\r\n\r\n Vì sao phải dành cả đời để học cách trở nên thành công, nếu như với những người thật sự khao khát, họ chỉ cần vài tuần lễ để tích lũy các nguyên tắc? Đây là điều có thể làm được, nếu bạn biết cách “đi đường tắt”, tập trung nghiên cứu kinh nghiệm của những người đã-thành-công, đã trải qua quá trình học học lâu dài và vất vả trước đó.\r\n\r\nNapoleon Hill đã dành 20 năm cuộc đời để gặp gỡ và phỏng vấn những người thành công nhất, như “vua thép” Andrew Carnegie, “vua phát minh” Thomas Edison, Henry Ford, Alexander Graham Bell… và hàng trăm tên tuổi tầm cỡ khác. Vừa tích lũy kinh nghiệm từ các câu chuyện tạo dựng sự nghiệp đầy sức mạnh, vừa chiêm nghiệm từ các sóng gió chính bản thân đã trải qua, Napoleon Hill đã đặt bút viết những cuốn sách có thể coi là tuyệt tác, đặt nền móng cho “khoa học của sự thành công”. Tác phẩm “Think and Grow Rich” (Nghĩ giàu làm giàu) của ông kể từ khi ra mắt vào năm 1937 đến nay luôn được coi là kim chỉ nam cho những người mong muốn vươn tới đỉnh cao. Cuốn sách đã được dịch ra hơn bốn mươi thứ tiếng và có ảnh hưởng tới hàng trăm triệu người, thường xuyên xuất hiện trên các giá sách về kinh doanh, truyền cảm hứng ở phạm vi toàn cầu.\r\n\r\nNapoleon Hill là khách mời danh dự của những buổi nói chuyện trên đài phát thanh và truyền hình Hoa Kỳ. Tác phẩm “5 nền tảng cho thành công” đã tập hợp các bản thảo phát thanh chưa từng được công bố do chính ông thực hiện. Đọc cuốn sách này, độc giả sẽ được trải nghiệm gần như nguyên văn những lời Napoleon đã chia sẻ trực tiếp với thính giả trên sóng radio - phương tiện truyền thông chân thực và phổ biến nhất bấy giờ. Nội dung chia sẻ nhấn mạnh vào “Big Five” - 5 nguyên tắc lớn trong số 17 nguyên tắc thành công Napoleon Hill đã đúc rút. Ông cũng không quên đưa ví dụ về cách mà các nguyên tắc này đã đưa các cá nhân, nổi tiếng có, bình dân có, đến điểm đích thành công. Napoleon kỳ vọng thính giả của mình vào thời điểm phát sóng, cũng như độc giả đọc sách ngày nay, có thể qua những gì ông chia sẻ mà khám phá ra “bí quyết tối quan trọng để đạt được thành tựu cá nhân”.",
      "bookSize": "14 x 20 cm",
      "bookDateSubmitted": "2019-07-13T15:43:40.000+07:00",
      "bookCoverImage": "https://salt.tikicdn.com/cache/550x550/ts/product/09/6d/99/cb623c3c2abb612326b78a6effdfddef.jpg",
      "bookStatus": true,
      "bookDatePublish": "2019-07-13T15:43:40.000+07:00",
      "bookMass": "0.5kg",
      "bookFormat": "pdf",
      "bookPageNumber": 308,
      "bookChapter": {
        "@nil": "true"
      },
      "bookLanguage": "Tiếng Việt",
      "bookPrice": 109000.0,
      "bookListImage": {
        "@nil": "true"
      },
      "bookRate": 0.0,
      "bookTotalRate": 0,
      "bookNormalPrice": 109000.0,
      "bookRentPrice": 20000.0,
      "bookLink": {
        "@nil": "true"
      },
      "Author": {
        "authorId": 6,
        "authorName": " Napoleon Hill",
        "authorNote": "Napoleon Hill (Sinh ngày 26 tháng 10 năm 1883 - mất ngày 8 tháng 11 năm 1970) là một tác gia người Mỹ, một trong những người sáng lập nên một thể loại văn học hiện đại đó là môn \"thành công học\" (là khoa học về sự thành công của cá nhân). Tác phẩm được cho là nổi tiếng nhất của ông có tên \"Suy nghĩ và làm giàu\" (Think and Grow Rich) là. một trong những cuốn sách bán chạy nhất mọi thời đại. Trong sự nghiệp của mình, ông cũng từng được trở thành một cố vấn cho Tổng thống Franklin D. Roosevelt. Câu nói nổi tiếng thể hiện tư tưởng của ông là \"Điều gì mà tâm trí có thể nhận thức và tin tưởng thì tâm trí có thể hoàn thành\".Napoleon Hill được xem là người có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân.Cuốn sách kinh điển suy nghĩ và làm giàu của ông đã giúp cho hàng triệu người trên thế giới thành công và nó có một ý nghĩa, vai trò vô cùng quan trọng trong cuộc đời của rất nhiều người thành công như W.Clement Stone, Og Mandino.",
        "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/132172_napoleonhill.jpg"
      },
      "Nxb": {
        "nxbId": 4,
        "nxbName": "Trí Việt",
        "nxbImage": "https://www.vinabook.com/images/thumbnails/publisher/180x235/145027_firstnews.jpg"
      },
      "Category": {
        "categoryId": 20,
        "categoryParentId": 2,
        "categoryName": "Sách doanh nhân",
        "categoryImageLink": " ",
        "categorySlug": "sach-doanh-nhan"
      }
    }
  ]
}
```

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
|`catogeryId`|String(11)|Mã danh mục.|`READONLY`|
|`categoryParentId`|String(11)|Mã danh mục cha.|`READONLY`|
|`catogeryName`|String(128)|Tên danh mục.|`READONLY`|
|`categoryImageLink`|String|Link Hình ảnh danh mục.|`READONLY`|
|`categorySlug`|String(128)|Tên danh mục đã bỏ đi dấu và khoảng cách.|`READONLY`|

Lấy thông tin danh mục
----------------------

API lấy thông tin danh mục thông qua ID.

> <img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/category_process!2.2/Category?id=5

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

> <img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/category_process!2.2/Category

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
Link tải module:

- [Phiên bản mới nhất ngày 26/06/2019.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/author/Author_v1.2.jar)
- [Folder.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/author)

Thuộc tính của tác giả
----------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`authorId`|Integer|Mã tác giả|`READONLY`|
|`authorName`|String|Tên tác giả|`READONLY`|
|`authorNote`|String|Ghi chú thông tin|`READONLY`|
|`authorImage`|String|Link ảnh tác giả|`READONLY`|

Lấy thông tin tác giả
---------------------

API cho phép lấy thông tin tác giả

><img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Author!1.2/Author?id=8

```json
{
  "author" : [ {
    "authorId" : 8,
    "authorName" : "Nguyễn Ngọc Thạch",
    "authorNote" : "Trong một năm, Nguyễn Ngọc Thạch được mọi người chú ý khi ra mắt 5 tập sách về những chủ đề hiện thực khác nhau. Từ Đời Callboy về thế giới đồng tính, Lòng dạ đàn bà, câu chuyện kinh dị của thập niên 60, cho đến Chuyển giới; Mẹ ơi, con đồng tính, và mới nhất là Chênh vênh hai lăm.\r\n\r\n\"Chênh vênh hai lăm, thực chất xuất phát từ những status mình hay viết trên facebook. Cách viết của nó cũng lạ, thường được mình viết khi chạy xe, nhìn ngắm xe cộ, đường xá, những con người đang cuộn mình mưu sinh của Sài Gòn. Cứ vậy rồi suy nghĩ, về đến nhà ngồi gõ một vài dòng chia sẻ trên facebook, được mọi người quan tâm, chia sẻ. Có bạn nói, sao Thạch không gom status ra một cuốn sách thử... vậy là mình làm theo.\r\n\r\nChênh vênh hai lăm cũng không theo một trình tự không gian, thời gian nào, chỉ là theo mạch của cảm xúc, trôi về đâu thì viết tới đó, nên có khi đọc xong, mọi người sẽ thấy sao mà nó... chênh vênh quá.\r\n\r\nChênh vênh hai lăm, đồng thời cũng là lời cảm ơn gởi đến gia đình, bạn bè, những người đã luôn ủng hộ trong suốt một năm qua, khi Thạch chập chững bước chân vào con đường viết lách. Hi vọng mọi người sẽ thích món quà nho nhỏ này.\"",
    "authorImage" : "https://www.vinabook.com/images/thumbnails/author/210x/151695_fulltacgianguyenngocthach745f9.jpg"
  } ]
}
```

Lấy danh sách tác giả
---------------------

API cho phép lấy danh sách tác giả.

><img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Author!1.2/Author

```json
{
    "author": [
        {
            "authorId": 1,
            "authorName": "Phạm Quang Huy ",
            "authorNote": {
                "@nil": "true"
            },
            "authorImage": " "
        },
        {
            "authorId": 2,
            "authorName": "Trần Thu Hà",
            "authorNote": {
                "@nil": "true"
            },
            "authorImage": " "
        },
        {
            "authorId": 3,
            "authorName": "J. K. Rowling",
            "authorNote": "J.K Rowling là bút danh của Joanne \"Jo\" Rowling, sinh ngày 31/7/1965, cư ngụ tại thủ đô Edinburgh,Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.\r\nBộ sách này được hàng triệu độc giả già trẻ trên thế giới yêu thích, nhận được nhiều giải thưởng liên tiếp và đến năm 2005 bán được 300 triệu bản trên toàn thế giới. Vào năm 2006, tạp chí Forbes xem bà là người phụ nữ giàu thứ hai trong lĩnh vực nghệ thuật giải trí chỉ sau Oprah Winfrey. Năm 2007, sau thành công vang dội của truyện Harry Potter 7 và phim Harry Potter 5, bà được tạp chí US Entertainment Weekly là 1 trong 25 nghệ sĩ của năm 2007. Bà đã được trao huân chương Bắc Đẩu Bội tinh vào ngày 3 tháng 2 năm 2009 vì tài năng xuất chúng về văn học thiếu nhi. Năm 2010 bà được trao Giải Văn học Hans Christian Andersen.",
            "authorImage": "https://www.vinabook.com/images/thumbnails/author/210x/133281_jk-rowling-sum2348620b.jpg"
        }
    ]
}
```

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

MUA SÁCH
====

API mua sách.
Link tải module:

- [Phiên bản mới nhất ngày 17/07/2019.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/author/Author_v1.2.jar)
- [Folder.](https://github.com/DangNguyenTranNgoc/STUBO/tree/master/deployments/author)

Thuộc tính của bảng sách đã mua
-------------------------------

|Thuộc tính|Loại|Mô tả||
|:-|:-|:-|-:|
|`bookshelfId`|Integer(11)|Mã sách đã mua.|`READONLY`|
|`bookshelfUserId`|Integer(11)|Mã người dùng.|`READ-WRITE`|
|`bookshelfBookId`|Integer(11)|Mã sách.|`READ-WRITE`|
|`bookshelfLastPage`|Integer(11)|Trang đã đọc gần đây nhất|`READ-WRITE`|
|`bookshelfBookmark`|String|Đánh dấu trang sách.|`READ-WRITE`|
|`bookshelfDateExp`|DateTime|Ngày hết hạn.|`READ-WRITE`|
|`bookshelfDateCreated`|DateTime|Ngày tạo.|`READONLY`|
|`bookshelfDateModified`|DateTime|Ngày chỉnh sửa gần nhất.|`READONLY`|

Mua sách
----------------

API mua sách.

|Thuộc tính|Loại|Mô tả|Ghi chú|
|:-|:-|:-|-:|
|`user_id`|Integer|Mã người dùng| > 0 |
|`book_id`|Integer|Mã sách| > 0 |
|`type`|String|Loại tác vụ|`buy` và `rent`|
|`day_rent`|Integer|Số ngày thuê| >= 0 |

> <img src="./include/image/btn-post.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Checkout!2.2/checkout

```json
{
  "result": "OK, thao tác thành công!"
}
```

Cập nhật sách đã mua
--------------------
> Đang xây dựng

Lấy danh sách sách đã mua
-------------------------

API lấy danh sách sách đã mua qua ID người dùng.

> <img src="./include/image/btn-get.svg" height="15"> http://104.197.88.103:7101/soa-infra/resources/default/Checkout!2.2/bookshelf?user_id=1

```json
{
  "result": {
    "Bookself": [
      {
        "bookshelfId": 2,
        "bookshelfUserId": 1,
        "bookshelfBookId": 2,
        "bookshelfLastPage": 0,
        "bookshelfBookmark": {
          "@nil": "true"
        },
        "bookshelfDateExp": {
          "@nil": "true"
        },
        "bookshelfDateCreated": "2019-07-17T00:06:07.000+07:00"
      },
      {
        "bookshelfId": 3,
        "bookshelfUserId": 1,
        "bookshelfBookId": 2,
        "bookshelfLastPage": 0,
        "bookshelfBookmark": {
          "@nil": "true"
        },
        "bookshelfDateExp": {
          "@nil": "true"
        },
        "bookshelfDateCreated": "2019-07-17T00:08:44.000+07:00"
      },
      {
        "bookshelfId": 8,
        "bookshelfUserId": 1,
        "bookshelfBookId": 1,
        "bookshelfLastPage": 0,
        "bookshelfBookmark": {
          "@nil": "true"
        },
        "bookshelfDateExp": "2019-07-22T12:44:40.000+07:00",
        "bookshelfDateCreated": "2019-07-17T12:44:40.000+07:00"
      },
      {
        "bookshelfId": 9,
        "bookshelfUserId": 1,
        "bookshelfBookId": 5,
        "bookshelfLastPage": 0,
        "bookshelfBookmark": {
          "@nil": "true"
        },
        "bookshelfDateExp": "2019-07-22T12:46:52.000+07:00",
        "bookshelfDateCreated": "2019-07-17T12:46:52.000+07:00"
      },
      {
        "bookshelfId": 10,
        "bookshelfUserId": 1,
        "bookshelfBookId": 2,
        "bookshelfLastPage": 0,
        "bookshelfBookmark": {
          "@nil": "true"
        },
        "bookshelfDateExp": {
          "@nil": "true"
        },
        "bookshelfDateCreated": "2019-07-17T15:33:57.000+07:00"
      }
    ]
  }
}
```