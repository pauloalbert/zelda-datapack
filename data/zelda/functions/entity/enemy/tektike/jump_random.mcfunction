#run by tektite at @s,

#get random direction
scoreboard players set in math 0
scoreboard players set in1 math 359
function math:rng/range
scoreboard players operation @s Direction = out math
scoreboard players operation in math = @s Direction

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s Direction

#random jump height
#get random direction
scoreboard players set in math 40
scoreboard players set in1 math 80
function math:rng/range
scoreboard players operation @s behavior0 = out math

###jump_forward(Direction, behavior0)
execute as @s at @s run function zelda:entity/enemy/tektike/jump_forward

tag @s add passenger_filter
execute on passengers run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=passenger_filter,limit=1,name="red tektike",sort=nearest] Rotation[0]
tag @s remove passenger_filter