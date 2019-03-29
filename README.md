# **Tài liệu đặc tả dịch vụ Web**
# Mục lục

1. [Các service về khách hàng](#User)

# User

> Các API liên quan cho phép bạn làm việc với thông tin khách hàng như tạo, sửa trên từng cá nhân.

Thuộc tính
---

| Attribute | Type | Description |  |
| :--- | :----: | :--- | :---: |
| `id` | Integer | Mã khách hàng | `READ-ONLY` |
| `name` | string | Tên khách hàng | `READ-WRITE` |
| `salt` | string | Chuỗi ký tự bất kỳ để thêm vào mã hóa cùng với mật khẩu | `READ-ONLY` |

Lấy thông tin khách hàng
---

+ Request
> <img src="./include/image/btn-get-01.svg" width="38" alt="GET" align="center"> /user

+ Response 200 (application/json)
```json
{
    "Hello World!"
}
```