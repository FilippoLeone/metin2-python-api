from database.connection import connect 


# skill_level 




class ToWebSite:
    def get_player(self, id):
        conn = connect("player")
        cursor = conn.cursor()
        query = """select `id`, `account_id`, `name`, `job`, `alignment`, `level`, `ht`, `st`, `iq`, `dx`, `last_play`, 
                `exp`, `map_index`, `x`,`y`, `playtime`, `level_step`, HEX(`skill_level`) AS skill_level, 
                `skill_group`, `horse_level` from `player` where `account_id`={}""".format(id)
        data = cursor.fetchmany()
        for character in data:
            print(character)
        return data


