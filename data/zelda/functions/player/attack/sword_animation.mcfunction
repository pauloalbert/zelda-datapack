###run as player at @s
###Called by do_attack or scheduled by sword_animation?

#
# Everything visual on the sword that appears infront of the player
# Currently, the sword dissapears by being called again by this function.
###TODO: always tp sword to player, "kill it" by going invisible.

playsound zelda:effects.sword_slash player @a ~ ~ ~

#Create the sword display
execute if entity @s[type=player] run summon item_display ^ ^-0.25 ^0.32 {Tags:["sword_display"],item:{id:"minecraft:wooden_sword",Count:1b},transformation:{translation:[0f,0.5f,0.4f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}} 
data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] Rotation set from entity @s Rotation

execute if entity @s[type=player] run schedule function zelda:player/attack/sword_animation 4t
execute unless entity @s[type=player] run kill @e[type=item_display,tag=sword_display]
