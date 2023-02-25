kill @e[tag=cave_1]
kill @e[tag=message_display]
kill @e[tag=message_controller]
summon marker -534.5 60.01 -2008.01 {Tags:["cave_1", "message_controller"],data:{message_slice:[],message:"IT'S DANGEROUS TO GO ALONE! TAKE THIS.",message_end:""}}


#data merge entity @e[type=marker,tag=cave_1,limit=1] {data:{message_slice:[],message:"It's Dangerous to go alone, Take this!",message_end:""}}
execute as @e[type=marker,tag=message_controller] run data modify entity @s data.message_end set from entity @s data.message
execute as @e[type=marker,tag=message_controller] at @s run setblock ~ ~-6 ~ stone
execute as @e[type=marker,tag=message_controller] at @s run setblock ~ ~-6 ~ chest{Items:[{Slot:0b,id:"book",Count:1b}]}
execute as @e[type=marker,tag=message_controller] at @s run summon text_display ~ ~ ~ {Tags:["message_display"],billboard:"fixed",Rotation:[90f,0f]}
execute as @e[type=marker,tag=message_controller] at @s run data merge entity @e[type=text_display,tag=message_display,sort=nearest,limit=1] {transformation:{scale:[1.5f,1.5f,1.5f]}}


