scoreboard players set in1 math -1
scoreboard players set in math 0

execute if block ~ ~ ~1 #zelda:walkable_blocks if block ~ ~1 ~1 #zelda:walkable_blocks run scoreboard players add in1 math 1
execute if block ~ ~ ~-1 #zelda:walkable_blocks if block ~ ~1 ~-1 #zelda:walkable_blocks run scoreboard players add in1 math 1
execute if block ~-1 ~ ~ #zelda:walkable_blocks if block ~-1 ~1 ~ #zelda:walkable_blocks run scoreboard players add in1 math 1
execute if block ~1 ~ ~ #zelda:walkable_blocks if block ~1 ~1 ~ #zelda:walkable_blocks run scoreboard players add in1 math 1
execute if score in1 math matches -1 run function zelda:entity/enemy/remove
function math:rng/range
#scoreboard players operation out math -= @s behavior0

scoreboard players operation @s behavior0 = out math

scoreboard players add @s behavior0 1
execute if block ~ ~ ~1 #zelda:walkable_blocks if block ~ ~1 ~1 #zelda:walkable_blocks run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 1.. run scoreboard players add @s behavior0 1
execute if block ~1 ~ ~ #zelda:walkable_blocks if block ~1 ~1 ~ #zelda:walkable_blocks if score @s behavior0 matches 2.. run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 2.. run scoreboard players add @s behavior0 1
execute if block ~ ~ ~-1 #zelda:walkable_blocks if block ~ ~1 ~-1 #zelda:walkable_blocks if score @s behavior0 matches 3.. run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 3.. run scoreboard players add @s behavior0 1
execute if block ~-1 ~ ~ #zelda:walkable_blocks if block ~-1 ~1 ~ #zelda:walkable_blocks if score @s behavior0 matches 4.. run scoreboard players remove @s behavior0 1
execute if block ~-1 ~ ~ #zelda:walkable_blocks if score @s behavior0 matches 4.. run say TERMINAL ERROR

execute store result entity @s Rotation[0] float -90 run scoreboard players get @s behavior0