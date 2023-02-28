#Player config:
execute as @a[tag=player] run function zelda:game/effects/health_attribute
execute as @a[tag=player] run function zelda:game/effects/defence_attribute
#effects
function zelda:game/effects/hunger
function zelda:game/effects/constant_effects


#Game Shit
scoreboard players add @e[tag=controller] AnimationTimer 1
scoreboard players add @e[tag=controller] HurtTimer 1


tag @e[type=interaction,tag=headbox] remove headbox_taken
execute as @a[tag=player,gamemode=!creative] at @s anchored eyes positioned ^ ^ ^ run function zelda:game/headbox_tp
kill @e[type=interaction,tag=headbox,tag=!headbox_taken]

#Damage enemies
function zelda:player/damage/execute_enemy_damage
#Player damage
function zelda:player/damage/execute_damage

#Control enemies
function zelda:game/call_enemies