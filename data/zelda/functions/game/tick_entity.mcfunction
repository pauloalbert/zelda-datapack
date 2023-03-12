###Run all entity related commands


## Animation timers
scoreboard players add @s[tag=!STUNNABLE,tag=ANIMATED] AnimationTimer 1
execute unless score @s[tag=STUNNABLE] StunTimer matches ..-1 if score GAME Freeze matches 0 run scoreboard players add @s AnimationTimer 1

scoreboard players add @s[tag=controller] StunTimer 1
scoreboard players add @s[tag=controller] HurtTimer 1

## Items
execute as @s[tag=boomerang] run function zelda:item/boomerang/execute

## Projectiles
execute as @s[tag=projectile,tag=hurts_enemy] run function zelda:entity/projectile/execute_player_projectiles

## Enemies
execute if score @s[tag=tektite,tag=controller] StunTimer matches 0.. run function zelda:entity/enemy/tektite/execute
execute if score @s[tag=armos,tag=controller] StunTimer matches 0.. run function zelda:entity/enemy/armos/execute
execute if score @s[tag=octorok,tag=controller] StunTimer matches 0.. run function zelda:entity/enemy/octorok/execute