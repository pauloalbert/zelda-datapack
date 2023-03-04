###Point here is to make the block/item_display show the proper model at the correct angle.
execute if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"end_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @s behavior1 = @s AnimationTimer
scoreboard players operation @s behavior1 /= #4 constant
scoreboard players operation @s behavior1 %= #2 constant

execute if score @s State matches 1 if score @s behavior1 matches 0 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"end_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=red] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=green] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"mossy_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=white] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"quartz_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}

tag @s add passenger_filter
execute on passengers run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=passenger_filter,limit=1,sort=nearest] Rotation[0]
tag @s remove passenger_filter