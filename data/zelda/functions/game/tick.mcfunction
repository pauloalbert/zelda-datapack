#Player config:
execute as @a[tag=player] run function zelda:game/effects/health_attribute
execute as @a[tag=player] run function zelda:game/effects/defence_attribute
#effects
function zelda:game/effects/hunger
function zelda:game/effects/constant_effects


execute as @e[tag=player,gamemode=adventure] at @s run function zelda:game/temp_player_checks

#Game Shit
execute if score GAME Freeze matches 2.. run scoreboard players remove GAME Freeze 1
execute if score GAME Freeze matches 1 run function zelda:entity/item/freeze/stop_freeze

scoreboard players add @e[tag=boomerang] AnimationTimer 1
execute if score GAME Freeze matches 0 as @e[tag=controller] unless score @s StunTimer matches ..-1 run scoreboard players add @s AnimationTimer 1
execute as @e[tag=controller] run scoreboard players add @s StunTimer 1
scoreboard players add @e[tag=controller] HurtTimer 1


tag @e[type=interaction,tag=headbox] remove headbox_taken
execute as @a[tag=player,gamemode=adventure] at @s anchored eyes positioned ^ ^ ^ run function zelda:game/headbox_tp
kill @e[type=interaction,tag=headbox,tag=!headbox_taken]

#Damage enemies
function zelda:player/damage/execute_enemy_damage
#Player damage
function zelda:player/damage/execute_damage

#Control enemies
function zelda:game/call_projectiles
function zelda:game/call_enemies

execute as @e[tag=boomerang] at @s run function zelda:entity/item/boomerang/execute