#r
summon armor_stand ~ ~ ~ {CustomName:'"red tektike"',Invisible:1b, Small:1b, Tags:["tektike","controller","red","enemy","SPAWN_TEMP","TYPE_A"],Passengers:[{id:"block_display",CustomName:'"red tektike"',block_state:{Name:"sculk_catalyst"},"transformation":{"translation":[0.5f,0.25f,0.5f],scale:[1f,1f,1f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]},Tags:["tektike","display","red","enemy"]}, {id:"interaction",CustomName:'"killed by red tektike"',Tags:["tektike","hitbox","red","hurts_player","enemy"]}]}

scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 1
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0
tag @s remove SPAWN_TEMP
