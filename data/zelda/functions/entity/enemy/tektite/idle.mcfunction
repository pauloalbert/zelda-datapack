###Tektite action
###Called by execute_next_action
# Sit for a random amount of time
scoreboard players operation in math = @s -25
scoreboard players operation in1 math = @s -5
function math:rng/range
scoreboard players operation @s AnimationTimer = out math

# Render moving tektite
scoreboard players set @s State 0
function zelda:entity/enemy/tektite/render