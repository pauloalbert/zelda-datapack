particle ambient_entity_effect
playsound zelda:item/bounce master @a ~ ~ ~

execute store result score @s behavior2 run data get entity @s Rotation[0] 100
execute store result score @s behavior3 run data get entity @s Rotation[1] 100

#do the flips and the tP
execute unless block ~ ~ ~0.01 air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~ ~ ~-0.01 air run scoreboard players operation @s behavior2 *= #-1 constant

execute unless block ~ ~0.01 ~ air run scoreboard players operation @s behavior3 *= #-1 constant
execute unless block ~ ~-0.01 ~ air run scoreboard players operation @s behavior3 *= #-1 constant

execute unless block ~-0.01 ~ ~ air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~0.01 ~ ~ air run scoreboard players operation @s behavior2 *= #-1 constant
execute unless block ~-0.01 ~ ~ air run scoreboard players operation @s behavior2 += #18000 constant
execute unless block ~0.01 ~ ~ air run scoreboard players operation @s behavior2 += #18000 constant

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s behavior2 
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s behavior3
