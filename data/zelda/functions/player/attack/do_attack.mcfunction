###Run as player at player
###Called by left_click

#
# This function calls the raycast that hurts and the animation, aswell as handling COOLDOWNS
#

scoreboard players set @s AttackTimer -5

scoreboard players set @s raycast_recursion 35
execute as @s at @s anchored eyes run function zelda:player/attack/attack_raycast

execute as @s at @s anchored eyes positioned ^ ^ ^ run function zelda:player/attack/sword_animation