import MySQLdb

class sql_opeartor():

    def __init__(self):
        self.db = MySQLdb.connect("localhost", "root", "123456", "paper", charset='utf8mb4')
        self.cur = self.db.cursor()

    def close(self):
        self.db.close()

    def execute(self, sql):
        try:
            # 执行SQL语句
            self.cur.execute(sql)
            # 向数据库提交
            self.db.commit()
        except:
            # 发生错误时回滚
            self.db.rollback()

    def query(self, sql):
        try:
            # 执行SQL语句
            self.cur.execute(sql)
            # 向数据库提交
            self.db.commit()
        except:
            # 发生错误时回滚
            self.db.rollback()
        results_tuple = self.cur.fetchall()
        results_list = []
        for result in results_tuple:
            ans = []
            for item in result:
                ans.append(item)
            results_list.append(ans)
        return results_list

    def create_table(self, table_data=''):
        sql = "create table {0};".format(table_data)
        self.execute(sql)

    def delete_table(self, table_name=''):
        sql = 'delete from {0}'.format(table_name)
        self.execute(sql)

    def drop_table(self, table_name):
        sql = 'drop table {0}'.format(table_name)
        self.execute(sql)

    def show_table(self, table_name=''):
        sql = 'select * from {0}'.format(table_name)
        self.execute(sql)


if __name__ == '__main__':
    # data = sql_opeartor().query('show tables;')
    data = sql_opeartor().query('select Project_Name, Abstract from Project;')
    print(data)

