#run by tektite at @s,

#get random direction
scoreboard players set in math 0
scoreboard players set in1 math 359
function math:rng/range
scoreboard players operation @s direction = out math
scoreboard players operation in math = @s direction

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s direction

#get forward direction
execute as @s at @s run function zelda:entity/enemy/tektike/jump_forward