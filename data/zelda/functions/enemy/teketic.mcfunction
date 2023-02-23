#i'm going to assume enemy functions are run at @s at @s etc.

execute as @s at @s run function zelda:misc/get_nearest_player
data modify entity @s Motion[0] set from entity @p Score

execute store result entity @s Motion[0] double 1 run scoreboard players get @s gNPX
execute store result entity @s Motion[1] double 1 run scoreboard players get @s gNPY
