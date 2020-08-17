import os
import codecs
import MySQLdb

class sql_opeartor():
    db = MySQLdb.connect("localhost", "root", "123456", "blog", charset='utf8mb4')
    cur = db.cursor()

    @classmethod
    def execute(cls, sql):
        try:
            # 执行SQL语句
            cls.cur.execute(sql)
            # 向数据库提交
            cls.db.commit()
        except:
            # 发生错误时回滚
            cls.db.rollback()

    @classmethod
    def query(cls, sql):
        try:
            # 执行SQL语句
            cls.cur.execute(sql)
            # 向数据库提交
            cls.db.commit()
        except:
            # 发生错误时回滚
            cls.db.rollback()
        results_tuple = cls.cur.fetchall()
        results_list = []
        for result in results_tuple:
            ans = []
            for item in result:
                ans.append(item)
            results_list.append(ans)
        return results_list

    @classmethod
    def create_table(cls, table_data=''):
        sql = "create table {0};".format(table_data)
        cls.execute(sql)

    @classmethod
    def delete_table(cls, table_name=''):
        sql = 'delete from {0}'.format(table_name)
        cls.execute(sql)

    @classmethod
    def drop_table(cls, table_name):
        sql = 'drop table {0}'.format(table_name)
        cls.execute(sql)

    @classmethod
    def show_table(cls, table_name=''):
        sql = 'select * from {0}'.format(table_name)
        cls.execute(sql)

def create_an_article(article_title, article_category, article_content):
    sql = "insert into article values('{0}', '{1}', '{2}');".format(
        article_title, article_category, article_content.replace("'", "''")
    )
    sql_opeartor.execute(sql)

def read_article(md_path):
    file = codecs.open(md_path, "r", encoding='utf-8')
    data = file.read()
    file.close()
    return data

def delete_article_table():
    table_name = 'article'
    sql_opeartor.delete_table(table_name)

def move_data():
    data_path = '/home/MyBlog/static/blog/data'
    # data_path = 'D:/python/MyBlog/static/blog/data'
    for root, dirs, files in os.walk(data_path):
        for file in files:
            path = os.path.join(root, file)
            # linux 是/ windows是\\
            article_category = path[path.find('data/')+5:path.rfind('/')]
            article_title = path[path.rfind('/')+1:-3]
            # article_category = path[path.find('data\\')+5:path.rfind('\\')]
            # article_title = path[path.rfind('\\')+1:-3]
            article_content = read_article(path)
            create_an_article(article_title, article_category, article_content)

if __name__ == '__main__':
    delete_article_table()
    move_data()
