###Run as player, at end of raycast
###Called by raycast in the last iteration

#Set time of the player before the next is run.
scoreboard players set @s SuperAttackTimer -20
playsound zelda:effects.sword_shoot player @a ~ ~ ~
#Create the sword
execute as @s run function zelda:entity/projectile/create_player_sword