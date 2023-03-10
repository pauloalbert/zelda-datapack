###Run as hurt enemy, at projectile
###Called by execute_player_projectiles

#GAME-Damage is a temp variable to kill the projectile who hurt this enemy.
scoreboard players operation @s Health -= GAME Damage
scoreboard players set GAME Damage 0

function zelda:entity/enemy/damage/took_damage