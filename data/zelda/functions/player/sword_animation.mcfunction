#run as player at @s
particle crit ~ ~ ~
execute if entity @s[type=player] run summon item_display ^ ^-0.25 ^0.25 {Tags:["sword_display"],item:{id:"minecraft:wooden_sword",Count:1b},transformation:{translation:[0f,0f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.7f,0.7f,0f],scale:[1f,1f,1f]}} 
data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] Rotation set from entity @s Rotation
#execute at @s as @e[type=item_display,tag=sword_display] positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[type=player] run schedule function zelda:player/sword_animation 4t
execute unless entity @s[type=player] run kill @e[type=item_display,tag=sword_display]
