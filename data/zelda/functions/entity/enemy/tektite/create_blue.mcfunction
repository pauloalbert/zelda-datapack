#r
summon armor_stand ~ ~ ~ {CustomName:'"blue tektite"',Invisible:1b, Small:1b, Tags:["tektite","controller","blue","enemy","SPAWN_TEMP","TYPE_A"],Passengers:[{id:"item_display",CustomName:'"blue tektite"',item:{id:"piston",Count:1b,tag:{CustomModelData:11b}},"transformation":{"translation":[0f,0.6f,0f],scale:[1f,1f,1f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]},Tags:["tektite","display","blue","enemy"]}, {id:"interaction",CustomName:'"bested by blue tektite"',Tags:["tektite","hitbox","blue","hurts_player","enemy"]}]}

#Define stats:
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 1
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 2
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0

#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant0 -50
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant1 -18
#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant2 40
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant3 100
#Jump max jump min timer
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant4 40
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] EnemyConstant5 130

tag @s remove SPAWN_TEMP
