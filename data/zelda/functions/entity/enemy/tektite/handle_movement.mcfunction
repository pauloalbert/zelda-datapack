execute if score @s AnimationTimer matches 0.. run function zelda:entity/enemy/tektite/jump_random
execute at @s if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:air run scoreboard players set @s State 0
execute if score @s AnimationTimer >= @s behavior3 unless block ~ ~-0.1 ~ #zelda:air run function zelda:entity/enemy/tektite/render