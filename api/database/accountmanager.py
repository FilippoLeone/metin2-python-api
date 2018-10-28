from database.connection import connect 
# account.account

# id,login,password,social_id,email,create_time,is_testor,status,securitycode,newsletter,
# empire,name_checked,availDt,mileage,cash,gold_expire,silver_expire,safebox_expire,autoloot_expire,
# fish_mind_expire,marriage_fast_expire,money_drop_rate_expire,total_cash,total_mileage,channel_company

# data = {'id' : 1, 'login' : 'Test', 'password': md5 }


class ToWebSite:
    def get_account(id):
        conn = connect("account")
        cursor = conn.cursor()
        query = """select `login`,`availDt`,`status` from `account` where `id`={};""".format(id)
        cursor.execute(query)
        data = cursor.fetchone()
        return data
        # 1 == 'admin'



class ToGameServer:
    def register(data):
        print(data)

    def change_status(data):
        pass

    def delete(data):
        pass

    def apply_premium(data):
        pass

    def password_change(data):
        pass






#print("Connection object: {}".format(connect("account")))