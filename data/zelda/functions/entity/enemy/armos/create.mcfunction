
summon armor_stand ~ ~ ~ {CustomName:'"armos"',Invisible:1b, Small:1b, Tags:["armos","controller","enemy","SPAWN_TEMP","TYPE_X"],Passengers:[{id:"block_display",block_state:{Name:"end_stone_bricks"},Tags:["armos","display","enemy"]}, {id:"interaction",CustomName:'"bested by armos"',Tags:["armos","hitbox","hurts_player","enemy"],width:0.9f,height:0.9f}]}

scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 3
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 2
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 2
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0
tag @e[distance=..1] remove SPAWN_TEMP