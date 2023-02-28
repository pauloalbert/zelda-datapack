#Player config:
execute as @a[tag=player] run function zelda:game/effects/health_attribute
execute as @a[tag=player] run function zelda:game/effects/defence_attribute
#effects
function zelda:game/effects/hunger
function zelda:game/effects/constant_effects


#Game Shit
scoreboard players add @e[tag=controller] AnimationTimer 1
scoreboard players add @e[tag=controller] HurtTimer 1


tag @e[type=interaction, tag=headbox] remove headbox_taken_filter
execute as @a[tag=player,gamemode=!creative] at @s anchored eyes run function zelda:game/headbox_tp


#Damage enemies
function zelda:player/damage/execute_enemy_damage
#Player damage
function zelda:player/damage/execute_damage

#Control enemies
function zelda:game/call_enemies