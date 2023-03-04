execute as @s if score @s Health matches ..0 run function zelda:entity/enemy/kill
execute unless score @s HurtTimer matches ..-1 at @s unless score @s Health matches ..0 run playsound zelda:effects.enemy_hit hostile @a ~ ~ ~

#Knock back if not invulnerable, if not dead, if not frozen
execute unless score @s HurtTimer matches ..-1 as @s unless score @s Health matches ..0 run function zelda:entity/enemy/damage/knockback
execute if score @s HurtTimer matches 0.. run scoreboard players operation @s HurtTimer = #ENEMY_HURT_TIME zelda_constant