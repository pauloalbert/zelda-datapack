data modify entity @s data.message_slice append string entity @s data.message_end 0 1
data modify entity @s data.message_end set string entity @s data.message_end 1

#Convert the array of letters into a string using an item (I know, its fucking stupid)
item modify block ~ ~ ~ container.0 zelda:convert_nbt
#Set string to it
data modify entity @e[type=text_display,tag=cave_1,limit=1] text set from block ~ ~ ~ Items[0].tag.display.Name
execute at @e[type=text_display,tag=cave_1] run playsound zelda:effects.text neutral @a ~ ~ ~
