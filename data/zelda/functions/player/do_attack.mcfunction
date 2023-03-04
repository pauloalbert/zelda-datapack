execute if score @s AttackTimer matches 0.. run scoreboard players set @s AttackTimer -5

scoreboard players set @s raycast_recursion 35
execute as @s at @s anchored eyes run function zelda:player/raycast

execute as @s at @s anchored eyes positioned ^ ^ ^ run function zelda:player/sword_animation