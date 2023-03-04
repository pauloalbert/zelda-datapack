#r
summon armor_stand ~ ~ ~ {CustomName:'"red tektite"',Invisible:1b, Small:1b, Tags:["tektite","controller","red","enemy","SPAWN_TEMP","TYPE_A"],Passengers:[{id:"item_display",CustomName:'"red tektite"',item:{id:"piston",Count:1b,tag:{CustomModelData:1b}},"transformation":{"translation":[0f,0.6f,0f],scale:[1f,1f,1f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]},Tags:["tektite","display","red","enemy"]}, {id:"interaction",CustomName:'"killed by red tektite"',Tags:["tektite","hitbox","red","hurts_player","enemy"]}]}

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

tag @s remove SPAWN_TEMP
