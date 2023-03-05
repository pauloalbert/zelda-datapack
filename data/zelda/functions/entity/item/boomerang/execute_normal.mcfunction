#Prepare the running of execute_bounce
#Execute bounce temp changes state to -1 so that we don't tp twice.
#Execute bounce runs on a loop on behaviour 0 (and also uses behavior2,3)
scoreboard players set @s State 0
scoreboard players set @s behavior0 20
execute unless block ^ ^ ^0.2 air if score #BOOMERANG_BOUNCE zelda_constant matches 1 run function zelda:entity/item/boomerang/execute_bounce
execute unless block ^ ^ ^0.2 air if score #BOOMERANG_BOUNCE zelda_constant matches 0 run scoreboard players set @s AnimationTimer 0

execute if score @s State matches 0 run tp @s ^ ^ ^0.2


