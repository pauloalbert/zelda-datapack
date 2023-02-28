#Assumes @s. direction is forward, jump height is behavior2 (100) magnitude is behavior1
scoreboard players operation in math = @s Direction
function math:trig/cos
scoreboard players operation out math *= @s behavior1
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get out math
function math:trig/sin
scoreboard players operation out math *= @s behavior1
execute store result entity @s Motion[0] double -0.00001 run scoreboard players get out math
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s behavior2