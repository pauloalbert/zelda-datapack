
tag @s add player_hitting_filter
execute if entity @e[type=interaction,dx=0,tag=hitbox] positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=interaction,dx=0,tag=hitbox] run function zelda:entity/enemy/damage/hurt_melee
tag @s remove player_hitting_filter

#execute if entity @e[type=interaction,dx=0] positioned ~0.95 ~0.95 ~0.95 if entity @e[type=interaction,dx=0] run particle flame

execute as @s if score @s raycast_recursion matches 0 run particle flame
scoreboard players remove @s raycast_recursion 1
execute as @s positioned ^ ^ ^0.05 if score @s raycast_recursion matches 0.. if block ~ ~ ~ minecraft:air run function zelda:player/raycast
