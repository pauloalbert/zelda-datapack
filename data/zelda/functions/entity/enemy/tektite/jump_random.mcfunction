#run by tektite at @s,

#Set animation timer randomly:
scoreboard players operation in math = @s EnemyConstant0
scoreboard players operation in1 math = @s EnemyConstant1
function math:rng/range
scoreboard players operation @s AnimationTimer = out math

#get random direction
scoreboard players set in math 0
scoreboard players set in1 math 359
function math:rng/range
scoreboard players operation @s Direction = out math
scoreboard players operation in math = @s Direction

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s Direction

#random distance magnitude
scoreboard players operation in math = @s EnemyConstant4
scoreboard players operation in1 math = @s EnemyConstant5
function math:rng/range
scoreboard players operation @s behavior1 = out math

#random jump height
scoreboard players operation in math = @s EnemyConstant2
scoreboard players operation in1 math = @s EnemyConstant3
function math:rng/range
scoreboard players operation @s behavior2 = out math


###jump_forward(Direction, behavior1, behavior2)
execute as @s at @s run function zelda:entity/enemy/tektite/jump_forward

#Rotate display and hitbox to match armor stand
tag @s add passenger_filter
execute on passengers run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=passenger_filter,limit=1,sort=nearest] Rotation[0]
tag @s remove passenger_filter