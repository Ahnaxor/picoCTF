# PW Crack 3

### Description

> Can you crack the password to get the flag?
> 
> Download the password checker [here](https://github.com/shmily-2010/picoCTF/blob/main/GeneralSkills/PWCrack3/level3.hash.bin) and you'll need the encrypted [flag](https://github.com/shmily-2010/picoCTF/blob/main/GeneralSkills/PWCrack3/level3.flag.txt.enc) and the [hash](https://github.com/shmily-2010/picoCTF/blob/main/GeneralSkills/PWCrack3/level3.py) in the same directory too.
> 
> There are 7 potential passwords with 1 being correct. You can find these by examining the password checker script.

### Solution

Đọc file python chúng ta có thể thấy trong file có một list password cho sẵn và chúng ta cần tìm ra password đúng để nhập. Vì vậy chúng ta sẽ chỉnh sửa code để có thể tìm ra flag:

```Python
# The strings below are 7 possibilities for the correct password. 
#   (Only 1 is correct)
pos_pw_list = ["8799", "d3ab", "1ea2", "acaf", "2295", "a9de", "6f3d"]

for pw in pos_pw_list:
    if hash_pw(pw) == correct_pw_hash:
        print("The password is : " + pw)
```

Và đây là password của chúng ta: 

![image](https://github.com/shmily-2010/picoCTF/assets/112896213/207c3e1a-de9a-4d5d-a557-d4c4895c0660)

Từ đó, chạy dòng code ```level_3_pw_check()``` chúng ta sẽ có được flag.

![image](https://github.com/shmily-2010/picoCTF/assets/112896213/f47082c0-b343-4db1-a5e4-b152bcdb76c8)

> Flag: `picoCTF{m45h_fl1ng1ng_6f98a49f}`

### Knowledge

**XOR ENCRYPTION**

- Thuật toán XOR là phương pháp mã hóa đơn giản nhưng hiệu quả, nên nó được sử dụng rất phổ biến
- XOR sử dụng một text và một key để mã hóa, và cũng sử dụng key đó để giải mã
  ![image](https://github.com/shmily-2010/picoCTF/assets/112896213/ebcc1114-dd87-4121-9bda-b8e6d7cd8ff1)
- XOR sẽ rất mạnh nếu:
  + Một khóa dài không lặp lại
  + Một khóa mới được tạo ngẫu nhiên và cho bất cứ giao tiếp nào
  + Khóa được giữ bí mật bởi cả người gửi và người nhận
- Nếu như key ngắn hơn text thì XOR sẽ xử lý như thế này:
  ![image](https://github.com/shmily-2010/picoCTF/assets/112896213/b2e9ee24-2f08-4292-a7bb-9e7343300009)

**MD5 HASH**

- MD5 là một thuật toán hàm băm lấy dữ liệu đầu vào có độ dài bất kì và thay đổi nó thành một dữ liệu có độ dài 16 byte. Đầu ra của MD5 luôn có độ dà là 128bit
- MD5 là sự cải tiến của MD4 với mục đích bảo mật
- MD5 được sử dụng để:
  + Xác thực tệp
  + Bảo mật ứng dụng web (thông tin người dùng, v.v)
  + Lưu trữ mật khẩu dưới dạng 128bit
- Cách hoạt động của MD5:
  1. Nối bit đệm: Dữ liệu gốc + Bit đệm = 512*k - 64
  2. Nối bit độ dài: Bit độ dài = 64 bit
  3. Khởi tạo bộ đệm: //Cần thời gian tìm hiểu thêm
  4. Xử lý dữ liệu: //Cần thời gian tìm hiểu thêm
- Ưu điểm:
  + MD5 nhanh hơn và đơn giản để hiểu
  + MD5 tạo mật khẩu mạnh ở dạng 16 byte
  + Để tích hợp thuật toán MD5, cần bộ nhớ thấp
  + Tạo một dữ liệu tóm tắt nhanh và dễ dàng cho dữ liệu gốc
- Nhược điểm:
  + MD5 sử dụng cùng một hàm băm cho các đầu vào khác nhau
  + MD5 bảo mật kém hơn SHA1
  + MD5 đã được coi là một thuật toán không an toàn
  + MD5 không phải thuật toán đối xứng hay bất đối xứng

 **SYMMETRIC/ ASYMMETRIC ALGORITHM**
