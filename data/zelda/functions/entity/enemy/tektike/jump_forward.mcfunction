#Assumes @s. direction is forward, jump height is behavior0 (100)
scoreboard players operation in math = @s Direction
function math:trig/cos
execute store result entity @s Motion[2] double -0.001 run scoreboard players get out math
function math:trig/sin
execute store result entity @s Motion[0] double -0.001 run scoreboard players get out math
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s behavior0