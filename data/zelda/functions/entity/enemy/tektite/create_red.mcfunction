###Create red tektike at current location
#Enemy constants:
#1-2: Animation time for jump
#3-4: height range
#5-6: distance range
summon armor_stand ~ ~ ~ {CustomName:'"red tektite"',Invisible:1b, Small:1b, Tags:["tektite","controller","red","enemy","SPAWN_TEMP","TYPE_A"],Passengers:[{id:"item_display",Tags:["tektite","display","red","enemy"]}, {id:"interaction",CustomName:'"killed by red tektite"',Tags:["tektite","hitbox","red","hurts_player","enemy"]}]}

#Define stats:
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 1
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0

#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant0 -35
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant1 -13
#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant2 30
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant3 75
#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant4 20
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant5 90
execute as @e[distance=..1,tag=SPAWN_TEMP] run function zelda:entity/enemy/tektite/render
tag @e[distance=..1,tag=SPAWN_TEMP] remove SPAWN_TEMP
