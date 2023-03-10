###Executed on attacker, player has player_damage_filter tag
###Called by check_for_hitboxes

#health_wrong decides which damage to do.
execute as @s at @s if score @e[type=player,tag=player_damage_filter,sort=nearest,limit=1] health_wrong matches 1.. run function zelda:player/damage/damage_invulnerable
#I don't execute if here since the player is already hitstunned
function zelda:player/damage/damage_normal
