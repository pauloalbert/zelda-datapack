###Create red octorok at current location
#Enemy constants:

summon armor_stand ~ ~ ~ {CustomName:'"red octorok"',Invisible:1b, Small:1b, Tags:["octorok","controller","red","enemy","SPAWN_TEMP","TYPE_A","ANIMATED","STUNNABLE"],Passengers:[{id:"item_display",Tags:["octorok","display","red","enemy"]}, {id:"interaction",CustomName:'"killed by red octorok"',Tags:["octorok","hitbox","red","hurts_player","enemy"]}]}

# Define stats:
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] AnimationTimer -20
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Health 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] Damage 1
execute as @e[distance=..1,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 1
scoreboard players set @e[distance=..1,tag=SPAWN_TEMP] State 0

# Remove tag
execute as @e[distance=..1,tag=SPAWN_TEMP] run function zelda:entity/enemy/octorok/render
tag @e[distance=..1,tag=SPAWN_TEMP] remove SPAWN_TEMP
