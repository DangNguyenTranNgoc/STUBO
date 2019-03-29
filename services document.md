# **Tài liệu đặc tả dịch vụ Web**
# Các service về khách hàng

## **User**

> Các API liên quan cho phép bạn làm việc với thông tin khách hàng như tạo, sửa trên từng cá nhân.

GET /message
---

+ Request
> <img src="./include/image/btn-get-01.svg" width="38" alt="GET" align="center"> /user

+ Thuộc tính

| Attribute | Type | Description |
| :--- | :----: | :--- |
| id | Integer | Mã khách hàng |
| name | string | Tên khách hàng |
| salt | string | Chuỗi ký tự bất kỳ để thêm vào mã hóa cùng với mật khẩu |


+ Response 200 (application/json)
```json
{
    "Hello World!"
}
```