###Resets every text in the world
###No callers yet
kill @e[tag=message_display]
kill @e[tag=message_controller]

#region define every single text in the game.
summon marker 18.99 18.2 -30.5 {Tags:["cave_1", "message_controller"],data:{message_slice:[],message:"IT'S DANGEROUS TO GO ALONE! TAKE THIS.",message_end:""}}


#endregion

### Mutual code to all markers, sets up the chests
execute as @e[type=marker,tag=message_controller] at @s run function zelda:entity/npc/reset_text.mc
