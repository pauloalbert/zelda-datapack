###Run by player at headlevel/ raycast location
###Called by do_attack, Called by raycast

# Punch any enemy in the 0.05 hitbox
tag @s add player_hitting_filter
execute if entity @e[type=interaction,dx=0,tag=hitbox] positioned ~-0.95 ~-0.95 ~-0.95 as @e[type=interaction,dx=0,tag=hitbox] on vehicle run function zelda:entity/enemy/damage/hurt_melee
tag @s remove player_hitting_filter

#.execute if entity @e[type=interaction,dx=0] positioned ~0.95 ~0.95 ~0.95 if entity @e[type=interaction,dx=0] run particle flame
#.execute as @s if score @s raycast_recursion matches 0 run particle flame

# Throw a blade on the last frame.
execute as @s run function zelda:player/caclulate_rounded_health
execute as @s[scores={SuperAttackTimer=0..}] positioned ^ ^ ^ if score @s raycast_recursion matches 0 if score @s RoundedHealth >= @s MaxHealth run function zelda:player/attack/do_super_attack

# Recursion
execute as @s unless block ^ ^ ^0.05 #zelda:passable_blocks run particle crit
scoreboard players remove @s raycast_recursion 1
execute as @s positioned ^ ^ ^0.05 if score @s raycast_recursion matches 0.. if block ~ ~ ~ #zelda:passable_blocks run function zelda:player/attack/attack_raycast
