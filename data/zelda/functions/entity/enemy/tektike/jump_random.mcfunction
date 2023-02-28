#run by tektite at @s,

#Set animation timer randomly:
scoreboard players set in math -50
scoreboard players set in1 math -13
function math:rng/range
scoreboard players operation @s AnimationTimer = out math

#get random direction
scoreboard players set in math 0
scoreboard players set in1 math 359
function math:rng/range
scoreboard players operation @s Direction = out math
scoreboard players operation in math = @s Direction

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s Direction

#random jump height
#get random direction
scoreboard players set in math 30
scoreboard players set in1 math 80
function math:rng/range
scoreboard players operation @s behavior0 = out math

###jump_forward(Direction, behavior0)
execute as @s at @s run function zelda:entity/enemy/tektike/jump_forward

#Rotate display and hitbox to match armor stand
tag @s add passenger_filter
execute on passengers run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=passenger_filter,limit=1,sort=nearest] Rotation[0]
tag @s remove passenger_filter