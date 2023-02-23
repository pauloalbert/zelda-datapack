###This function returns the pos to the nearest player.

#Prerequisites: run as entity getting the direction.

#return: nearestPlayerArguments for player's [gNPX, gNPY, gNPZ] for [dx,dy,dz] respectively, saved under the entity which called the func
execute store result score @s misc_x run data get entity @s Pos[0] 100
execute store result score @s misc_y run data get entity @s Pos[1] 100
execute store result score @s misc_z run data get entity @s Pos[2] 100

tag @p add nearestPlayer_filter
execute store result score @p[tag=nearestPlayer_filter] misc_x run data get entity @p[tag=nearestPlayer_filter] Pos[0] 100
execute store result score @p[tag=nearestPlayer_filter] misc_y run data get entity @p[tag=nearestPlayer_filter] Pos[1] 100
execute store result score @p[tag=nearestPlayer_filter] misc_z run data get entity @p[tag=nearestPlayer_filter] Pos[2] 100

scoreboard players operation @s misc_x -= @p[tag=nearestPlayer_filter] misc_x
scoreboard players operation @s misc_y -= @p[tag=nearestPlayer_filter] misc_y
scoreboard players operation @s misc_z -= @p[tag=nearestPlayer_filter] misc_z

scoreboard players operation @s misc_x *= #-1 constant
scoreboard players operation @s misc_y *= #-1 constant
scoreboard players operation @s misc_z *= #-1 constant

tag @p remove nearestPlayer_filter

