###Point here is to make the block/item_display show the proper model at the correct angle.

# Calculate modulo for waking up animation
scoreboard players operation @s behavior1 = @s AnimationTimer
scoreboard players operation @s behavior1 /= #4 constant
scoreboard players operation @s behavior1 %= #2 constant


# Once the armos has woken up, give it a moving model
execute if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"end_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}

# Animate the flickering of the waking up armos
execute if score @s State matches 1 if score @s behavior1 matches 0 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"end_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=red] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=green] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"mossy_stone_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}
execute if entity @s[tag=white] if score @s State matches 1 if score @s behavior1 matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"quartz_bricks"},transformation:{scale:[1f, 1f, 1f],translation:[-0.5f,0.3f,-0.5f],left_rotation:[0f,0f,0f,1f]}}

# Rotate passenger as 
execute at @s on passengers if entity @s[tag=display] run tp @s ~ ~ ~ ~ 0