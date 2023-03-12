###execute as @e[tag=message_controller] mutex
###Mutual code to all markers, sets up text and text display

# Copy message to message_end
data modify entity @s data.message_end set from entity @s data.message

# Create the chest item beneath the location
setblock ~ ~-6 ~ stone
setblock ~ ~-6 ~ chest{Items:[{Slot:0b,id:"book",Count:1b}]}

# Create and link the text.
summon text_display ~ ~ ~ {Tags:["message_display"],Rotation:[0f,0f]}
ride @s mount @e[type=text_display,tag=message_display,sort=nearest,limit=1]

execute on vehicle run data merge entity @s {transformation:{scale:[2.25f,2.25f,2.25f]},line_width:150}


