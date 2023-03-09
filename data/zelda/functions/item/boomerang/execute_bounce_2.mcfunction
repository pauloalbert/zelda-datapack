particle crit
playsound zelda:effects.bomb_blow master @a ~ ~ ~ 0.85 2
execute unless block ~ ~ ~ air run tellraw @a[tag=debugger] {"text": "IN A BLOCK"}
execute unless block ~ ~ ~ air run scoreboard players set @s State 1
execute store result score @s behavior2 run data get entity @s Rotation[0] 100
execute store result score @s behavior3 run data get entity @s Rotation[1] 100
tellraw @a[tag=debugger] [{"text":"before: "},{"score":{"name":"@s","objective":"behavior2"}}]
#do the flips and the tP
execute unless block ~-0.01 ~ ~ air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~0.01 ~ ~ air run scoreboard players operation @s behavior2 *= #-1 constant

execute unless block ~ ~0.01 ~ air run scoreboard players operation @s behavior3 *= #-1 constant
execute unless block ~ ~-0.01 ~ air run scoreboard players operation @s behavior3 *= #-1 constant

execute unless block ~ ~ ~-0.01 air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~ ~ ~0.01 air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~ ~ ~-0.01 air run scoreboard players operation @s behavior2 += #18000 constant
tellraw @a[tag=debugger] [{"text":"mid: "},{"score":{"name":"@s","objective":"behavior2"}}]

execute unless block ~ ~ ~0.01 air run scoreboard players operation @s behavior2 += #18000 constant
tellraw @a[tag=debugger] [{"text":"after: "},{"score":{"name":"@s","objective":"behavior2"}}]

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s behavior2 
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s behavior3
