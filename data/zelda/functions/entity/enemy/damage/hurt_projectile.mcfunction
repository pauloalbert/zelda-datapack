#run by enemy taking damage, at projectile, set GAME Damage to 0 to kill killer
scoreboard players operation @s Health -= GAME Damage
scoreboard players set GAME Damage 0

function zelda:entity/enemy/damage/took_damage