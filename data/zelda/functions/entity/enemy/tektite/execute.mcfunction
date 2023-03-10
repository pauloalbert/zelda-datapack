###Called by call_enemies
###Runs any miscallaneous stuff and then runs movements

#Unstun entity
execute if score @s StunTimer matches 0 run data merge entity @s {NoGravity:0b}

###
#Run Movement on animation reset
###
execute if score @s AnimationTimer matches 0.. run function zelda:entity/enemy/tektite/execute_next_action

#~Handle entity animations. (not clean rn)
execute at @s if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:passable_blocks run scoreboard players set @s State 0
execute at @s if score @s AnimationTimer matches -4..-1 run scoreboard players set @s State 1
#Ensure the animated state doesn't happen if entity is stunned

execute if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:passable_blocks run function zelda:entity/enemy/tektite/render