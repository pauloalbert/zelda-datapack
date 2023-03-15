###Tektite action
###Called by execute_next_action
#Faces nearest player and jumps a random amount
tp @s ~ ~ ~ facing entity @p[tag=player]
execute store result score @s Direction run data get entity @s Rotation[0]


# random distance magnitude
scoreboard players operation in math = @s EnemyConstant4
scoreboard players operation in1 math = @s EnemyConstant5
function math:rng/range
scoreboard players operation @s behavior1 = out math

# random jump height
scoreboard players operation in math = @s EnemyConstant2
scoreboard players operation in1 math = @s EnemyConstant3
function math:rng/range
scoreboard players operation @s behavior2 = out math
#endregion

scoreboard players set @s AnimationTimer -35

###jump_forward(Direction, behavior1, behavior2)
execute as @s at @s run function zelda:entity/enemy/tektite/jump_forward
#Rotate display and hitbox to match armor stand
execute at @s on passengers if entity @s[tag=display] run tp @s ~ ~ ~ ~ 0
function zelda:entity/enemy/tektite/render