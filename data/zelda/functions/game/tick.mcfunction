#Player config:
execute as @a[tag=player] run function zelda:game/effects/health_attribute
execute as @a[tag=player] run function zelda:game/effects/defence_attribute

#effects
function zelda:game/effects/hunger
function zelda:game/effects/constant_effects


#Game Shit



#Damage enemies
function zelda:player/damage/execute_enemy_damage
#Player damage
function zelda:player/damage/execute_damage

#Control enemies
#function zelda:game/call_enemies