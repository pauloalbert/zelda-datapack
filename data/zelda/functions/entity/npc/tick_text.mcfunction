data modify entity @s data.message_slice append string entity @s data.message_end 0 1
data modify entity @s data.message_end set string entity @s data.message_end 1

#Convert the array of letters into a string using an item (I know, its fucking stupid)
item modify block ~ ~-6 ~ container.0 zelda:convert_nbt
#Set string to it
data modify entity @e[type=text_display,limit=1,distance=..1,sort=nearest,tag=message_display] text set from block ~ ~-6 ~ Items[0].tag.display.Name
playsound zelda:effects.text neutral @a ~ ~-1 ~