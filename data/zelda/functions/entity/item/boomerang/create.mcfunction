#run by player at himself
execute anchored eyes run summon item_display ^ ^ ^0.2 {Tags:["boomerang","blue","SPAWN_TEMP"],item:{id:"warped_trapdoor",Count:1b},transformation:{scale:[1f, 1f, 1f],translation:[0f,0.2f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] State 0
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] AnimationTimer -24

scoreboard players add GAME BoomerangIDCount 1
scoreboard players operation @e[distance=..2,tag=SPAWN_TEMP] boomerang_id = GAME BoomerangIDCount
scoreboard players operation @s boomerang_id = GAME BoomerangIDCount
data modify entity @e[tag=SPAWN_TEMP,limit=1,sort=nearest] Rotation set from entity @s Rotation
tag @e[distance=..2] remove SPAWN_TEMP