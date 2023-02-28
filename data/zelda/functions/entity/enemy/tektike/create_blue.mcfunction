#r
summon armor_stand ~ ~ ~ {CustomName:'"blue tektike"',Invisible:1b, Small:1b, Tags:["tektike","controller","blue","enemy","SPAWN_TEMP","TYPE_A"],Passengers:[{id:"block_display",CustomName:'"blue tektike"',block_state:{Name:"tube_coral_block"},"transformation":{"translation":[0.5f,0.25f,0.5f],scale:[1f,1f,1f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]},Tags:["tektike","display","blue","enemy"]}, {id:"interaction",CustomName:'"bested by blue tektike"',Tags:["tektike","hitbox","blue","hurts_player","enemy"]}]}

#Define stats:
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 2
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 2
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 2
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0
tag @s remove SPAWN_TEMP
