from paper.functions.sql import sql_opeartor

def check_user(user_name, user_password):
    flag = False
    if user_name == 'hello' and user_password == 'i am ok':
        flag = True
    return flag

#由于文章的标题中和类别中可能会有许多奇奇怪怪的字符，所以将他们使用base64编码
import base64

def base64encode(string):
    try:
        string = string.encode('utf-8')
        ans = base64.b64encode(string)
        ans = bytes.decode(ans)
    except:
        ans = ''
    return ans

def base64decode(string):
    try:
        string = string.encode()
        ans = base64.b64decode(string).decode('utf-8')
    except:
        ans = ''
    return ans

def base32encode(string):
    try:
        string = string.encode('utf-8')
        ans = base64.b32encode(string)
        ans = bytes.decode(ans)
    except:
        ans = ''
    return ans

def base32decode(string):
    try:
        string = string.encode()
        ans = base64.b32decode(string).decode('utf-8')
    except:
        ans = ''
    return ans

if __name__ == '__main__':
    print(base32encode('未分类'))
    print(base32encode('Why Blog'))
