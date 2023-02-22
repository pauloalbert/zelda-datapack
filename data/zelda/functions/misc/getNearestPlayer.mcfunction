###This function returns the pos to the nearest player.

###Prerequisites: run as entity getting the direction.

###return, nearestPlayerArguments for players [gNPX, gNPY, gNPZ] for [dx,dy,dz] respectively
execute store result score @s gNPX run data get entity @s Pos[0]
execute store result score @s gNPY run data get entity @s Pos[1]
execute store result score @s gNPZ run data get entity @s Pos[2]

tag @p add nearestPlayer_filter
execute store result score @p[tag=nearestPlayer_filter] gNPX run data get entity @p[tag=nearestPlayer_filter] Pos[0]
execute store result score @p[tag=nearestPlayer_filter] gNPY run data get entity @p[tag=nearestPlayer_filter] Pos[1]
execute store result score @p[tag=nearestPlayer_filter] gNPZ run data get entity @p[tag=nearestPlayer_filter] Pos[2]

scoreboard players operation @s gNPX -= @p[tag=nearestPlayer_filter] gNPX
scoreboard players operation @s gNPY -= @p[tag=nearestPlayer_filter] gNPY
scoreboard players operation @s gNPZ -= @p[tag=nearestPlayer_filter] gNPZ

tag @p remove nearestPlayer_filter