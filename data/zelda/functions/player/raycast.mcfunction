
tag @s add player_hitting_filter
execute if entity @e[type=interaction,dx=0,tag=hitbox] positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=interaction,dx=0,tag=hitbox] on vehicle run function zelda:entity/enemy/damage/hurt_melee
tag @s remove player_hitting_filter

#execute if entity @e[type=interaction,dx=0] positioned ~0.95 ~0.95 ~0.95 if entity @e[type=interaction,dx=0] run particle flame

execute as @s if score @s raycast_recursion matches 0 run particle flame
execute as @s unless block ^ ^ ^0.05 #zelda:air run particle crit
scoreboard players remove @s raycast_recursion 1
execute as @s positioned ^ ^ ^0.05 if score @s raycast_recursion matches 0.. if block ~ ~ ~ #zelda:air run function zelda:player/raycast
