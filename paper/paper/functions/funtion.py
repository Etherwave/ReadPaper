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

def fix_formula_backslash(data):
    '''
    markdown md.convert的时候在公式中的\\会少一个变成\，
    :return:
    '''
    start_formula_mark = "<p>$$"
    end_formula_mark = "$$</p>"
    split_data = data.split("\n")
    formula_flag = 0
    for i in range(len(split_data)):
        if split_data[i] == start_formula_mark:
            formula_flag = 1
        if split_data[i] == end_formula_mark:
            formula_flag = 0
        if formula_flag == 1:
            if split_data[i].endswith("\\"):
                split_data[i] += "\\"
    ans = ""
    for i in range(len(split_data)):
        if i != 0:
            ans += "\n"
        ans += split_data[i]
    return ans

if __name__ == '__main__':
    print(base32encode('未分类'))
    print(base32encode('Why Blog'))
