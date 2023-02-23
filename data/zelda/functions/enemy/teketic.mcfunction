#i'm going to assume enemy functions are run at @s at @s etc.

execute as @s at @s run function zelda:misc/get_nearest_player
execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s misc_x
data modify entity @s Motion[1] set value 1d
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s misc_z
