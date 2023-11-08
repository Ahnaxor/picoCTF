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
