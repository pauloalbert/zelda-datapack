###Run on message_controller
###Called by nothing currently

#message_slice takes the first letter from message_end
#message_end has the remaining letters in the message
#behavior0 stores 1/0 if there are any letters left
execute store success score @s behavior0 run data modify entity @s data.message_slice append string entity @s data.message_end 0 1
data modify entity @s data.message_end set string entity @s data.message_end 1

# Convert the array of letters into a string using an item (I know, its fucking stupid)
#sets message_slice to name of item
item modify block ~ ~-6 ~ container.0 zelda:convert_nbt
#concat name of item to    text_display.text
execute on vehicle run data modify entity @s text set from block ~ ~-6 ~ Items[0].tag.display.Name
playsound zelda:effects.text neutral @a ~ ~-1 ~