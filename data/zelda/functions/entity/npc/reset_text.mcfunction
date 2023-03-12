###Resets every text in the world
###No callers yet
kill @e[tag=message_display]
kill @e[tag=message_controller]

#region define every single text in the game.
summon marker 18.99 18.2 -30.5 {Tags:["cave_1", "message_controller"],data:{message_slice:[],message:"IT'S DANGEROUS TO GO ALONE! TAKE THIS.",message_end:""}}


#endregion

### Mutual code to all markers, sets up the chests

execute as @e[type=marker,tag=message_controller] run data modify entity @s data.message_end set from entity @s data.message

execute as @e[type=marker,tag=message_controller] at @s run setblock ~ ~-6 ~ stone
execute as @e[type=marker,tag=message_controller] at @s run setblock ~ ~-6 ~ chest{Items:[{Slot:0b,id:"book",Count:1b}]}

execute as @e[type=marker,tag=message_controller] at @s run summon text_display ~ ~ ~ {Tags:["message_display"],Rotation:[0f,0f]}
#I split this apart since i'm too lazy to have the full transformation list above
execute as @e[type=marker,tag=message_controller] at @s run data merge entity @e[type=text_display,tag=message_display,sort=nearest,limit=1] {transformation:{scale:[2.25f,2.25f,2.25f]},line_width:150}


