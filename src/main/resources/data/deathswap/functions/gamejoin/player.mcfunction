# 检测是否开始
execute if entity @e[tag=game_core,tag=ready] run tellraw @a[tag=waiting] [{"text":"[INFO]游戏正在开始，请不要重复点击-.-","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=game_core,tag=!ready,scores={ds_ply_t=2..}] run function deathswap:countdown/ready
execute if entity @e[tag=game_core,tag=!ready,scores={ds_ply_t=..1}] run function deathswap:gamejoin/fail