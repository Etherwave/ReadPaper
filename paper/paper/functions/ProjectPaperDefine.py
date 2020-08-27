import markdown
import codecs
import re
import os
from functools import cmp_to_key
import datetime
from paper.functions.funtion import base32encode, base32decode
from paper.functions.sql import sql_opeartor

class Project:

    def __init__(self, Project_Name='', Abstract=''):
        self.Project_Name = Project_Name
        self.Project_Name_encode = base32encode(self.Project_Name)
        self.Abstract = Abstract
        self.url = "/Project/{0}/".format(self.Project_Name_encode)

class Paper:
    
    def __init__(self, Project_Name, Paper_Name="", Abstract=""):
        self.Project_Name = Project_Name
        self.Project_Name_encode = base32encode(Project_Name)
        self.Paper_Name = Paper_Name
        self.Paper_Name_encode = base32encode(Paper_Name)
        self.Abstract = Abstract
        self.url = "/Paper/{0}/{1}/".format(self.Project_Name_encode, self.Paper_Name_encode)

class Simple_Paper:

    def __init__(self, no=-1, Project_Name="", Paper_Name=""):
        self.no = no
        self.Project_Name = Project_Name
        self.Project_Name_encode = base32encode(Project_Name)
        self.Paper_Name = Paper_Name
        self.Paper_Name_encode = base32encode(Paper_Name)
        self.url = "/Paper/{0}/{1}/".format(self.Project_Name_encode, self.Paper_Name_encode)




def exist_Project(Project_Name=''):
    '''
    用来查看一个项目是否存在
    由于项目标题，内容的不确定性，计划使用base64加密数据库中存储的文字，保证sql中不含有特殊字符如',\等
    这样的特殊字符会造成sql执行错误，从而发生不可预知的错误。
    :param Project_Name: 项目名称
    :return:
    '''
    sql = "select 1 from Project where Project_Name='{0}';".format(Project_Name)
    data = sql_opeartor().query(sql)
    ans = (len(data)>=1)
    return ans

def exist_Paper(Project_Name, Paper_Name):
    sql = "select 1 from Paper " \
          "where Project_Name = '{0}' and Paper_Name = '{1}'".\
        format(Project_Name, Paper_Name)
    data = sql_opeartor().query(sql)
    ans = (len(data) >= 1)
    return ans

def create_a_Project(Project_Name='', Abstract=''):
    sql = "insert into Project values('{0}', '{1}');".format(Project_Name, Abstract)
    sql_opeartor().execute(sql)

def create_a_Paper(Project_Name, Paper_Name, Abstract):
    sql = "insert into Paper values ('{0}', '{1}', '{2}');".\
        format(Project_Name, Paper_Name, Abstract)
    sql_opeartor().execute(sql)

def update_Project(old_Project_Name, Project_Name, Abstract):
    sql = "update Project " \
          "set Project_Name = '{0}', Abstract = '{1}' " \
          "where Project_Name = '{2}';".format(
        Project_Name, Abstract, old_Project_Name)
    sql_opeartor().execute(sql)

def update_Paper(Project_Name, old_Paper_Name, Paper_Name, Abstract):
    sql = "update Paper " \
          "set Paper_Name = '{0}', Abstract = '{1}' " \
          "where Project_Name = '{2}' and Paper_Name= '{3}';".\
        format(Paper_Name, Abstract, Project_Name, old_Paper_Name)
    sql_opeartor().execute(sql)

def delete_Project(Project_Name=''):
    sql = "delete from Project where Project_Name='{0}';".format(Project_Name)
    sql_opeartor().execute(sql)

def delete_Paper(Project_Name, Paper_Name):
    sql = "delete from Paper " \
          "where Paper.Project_Name = '{0}' and " \
          "Paper.Paper_Name = '{1}';".format(Project_Name, Paper_Name)
    sql_opeartor().execute(sql)

def get_all_Project():
    sql = "select Project_Name, Abstract from Project;"
    data = sql_opeartor().query(sql)
    Projects = []
    for i in data:
        Projects.append(Project(base32decode(i[0]), base32decode(i[1])))
    return Projects

def get_Project_Abstract(Project_Name):
    sql = "select Abstract from Project where Project_Name = '{0}';".format(Project_Name)
    data = sql_opeartor().query(sql)
    Abstract = base32decode(data[0][0])
    return Abstract

def get_Paper_Abstract(Project_Name, Paper_Name):
    sql = "select Abstract from Paper " \
          "where Project_Name = '{0}' and " \
          "Paper_Name = '{1}';".format(Project_Name, Paper_Name)
    data = sql_opeartor().query(sql)
    Abstract = base32decode(data[0][0])
    return Abstract

def get_all_Project_Name():
    sql = "select Project_Name from Project;"
    data = sql_opeartor().query(sql)
    Project_Names = []
    for i in data:
        Project_Names.append(base32decode(i[0]))
    return Project_Names

def get_Project_sub_all_Simple_Paper(Project_Name):
    sql = "select Project_Name, Paper_Name " \
          "from Paper where Project_Name = '{0}';".format(Project_Name)
    data = sql_opeartor().query(sql)
    papers = []
    for i in range(len(data)):
        papers.append(Simple_Paper(i, base32decode(data[i][0]), base32decode(data[i][1])))
    return papers

def get_Project(Project_Name):
    sql = "select Project_Name, Abstract " \
          "from Project where Project_Name = '{0}';".format(Project_Name)
    data = sql_opeartor().query(sql)
    return Project(base32decode(data[0][0]), base32decode(data[0][1]))

def get_Paper(Project_Name, Paper_Name):
    sql = "select Project_Name, Paper_Name, Abstract " \
          "from Paper where Project_Name = '{0}' and Paper_Name = '{1}';".\
        format(Project_Name, Paper_Name)
    data = sql_opeartor().query(sql)
    return Paper(base32decode(data[0][0]), base32decode(data[0][1]), base32decode(data[0][2]))


if __name__ == '__main__':
    # a = get_Project_sub_all_Simple_Paper("42IJZZ5UULT25F7GWOKQ====")
    # print(len(a))
    # Project_Name = "asdasd"
    # Abstract = "123124"
    # create_a_Project(Project_Name, Abstract)
    Abstract = get_Paper_Abstract("42IJZZ5UULT25F7GWOKQ====", "5C62N2F6Q3ULPL7FX2CORJ4E4WEJFZ42QTTJLMHFVWTONKFB4WPIXZMPRLT25F7GWOK6PO545C73A===")
    print(Abstract)


