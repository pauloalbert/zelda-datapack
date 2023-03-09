execute if score @s AnimationTimer matches 0.. run function zelda:entity/enemy/tektite/jump_random
execute at @s if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:walkable_blocks run scoreboard players set @s State 0
execute at @s if score @s AnimationTimer matches -4..-1 run scoreboard players set @s State 1
execute if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:walkable_blocks run function zelda:entity/enemy/tektite/render