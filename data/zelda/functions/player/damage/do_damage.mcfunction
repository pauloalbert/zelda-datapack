###Executed on attacker, player has player_damage_filter tag
execute as @s at @s if score @e[type=player,tag=player_damage_filter,sort=nearest,limit=1] health_wrong matches 1.. run function zelda:player/damage/damage_invulnerable
function zelda:player/damage/damage_normal
