###Create armos
###Currently called by a temp function

# Create the armos
summon armor_stand ~ ~-1 ~ {CustomName:'"armos"',Invisible:1b, Small:1b, Tags:["armos","controller","enemy","SPAWN_TEMP","TYPE_X"],Passengers:[{id:"block_display",block_state:{Name:"end_stone_bricks"},Tags:["armos","display","enemy"]}, {id:"interaction",width:0.9f,height:1.3f,CustomName:'"bested by armos"',Tags:["armos","hitbox","hurts_player","enemy"]}]}

# Created by a block, needs respective tag for animation
execute if block ~ ~ ~ minecraft:bricks run tag @e[distance=..1,tag=SPAWN_TEMP] add red
execute if block ~ ~ ~ minecraft:mossy_stone_bricks run tag @e[distance=..1,tag=SPAWN_TEMP] add green
execute if block ~ ~ ~ minecraft:quartz_bricks run tag @e[distance=..1,tag=SPAWN_TEMP] add white

# Make the block dissapear, while not killing the player immediately
fill ~ ~ ~ ~ ~ ~ barrier replace #zelda:armos_blocks

# Set stats for waking up
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] HurtTimer -50
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] AnimationTimer -50
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] State 1

# Set stats for doing damage
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] Health 3
scoreboard players set @e[distance=..2,tag=SPAWN_TEMP] Damage 2
execute as @e[distance=..2,tag=SPAWN_TEMP] on passengers if entity @s[tag=hitbox] run scoreboard players set @s Damage 2
execute as @e[distance=..2,tag=SPAWN_TEMP] run function zelda:entity/enemy/armos/render

# Armos randomly can be fast
###Currently, odds are 1/3
execute if predicate zelda:third run tag @e[distance=..2,tag=SPAWN_TEMP] add fast
tag @e[distance=..2] remove SPAWN_TEMP