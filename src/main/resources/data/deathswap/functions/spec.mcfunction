# 观战系统
execute if entity @e[tag=game_core,tag=!ingame] run tellraw @s [{"text":"[INFO]游戏还没开始呢-.-想玩的话请点击上方的木牌进入等待区","color":"red","bold":true,"italic":false}]
execute if entity @e[tag=game_core,tag=ingame] run tellraw @s [{"text":"[INFO]你已成功进入观战模式，现在跟随着一名玩家","color":"green","bold":true,"italic":false}]
execute if entity @e[tag=game_core,tag=ingame] run gamemode spectator @s
execute if entity @e[tag=game_core,tag=ingame] run tp @s @a[tag=ingame,limit=1,sort=random]