###Prerequisites: run by an entity with misc_x misc_y misc_z TWO DECIMALS (9.50 = 950)
###return: in misc_x misc_y misc_z, TWO DECIMALS PERCISION

#This whole following segment gets the tangent length
scoreboard players operation temp misc_x = @s misc_x
scoreboard players operation temp misc_y = @s misc_y
scoreboard players operation temp misc_z = @s misc_z

scoreboard players operation temp misc_x *= temp misc_x
scoreboard players operation temp misc_y *= temp misc_y
scoreboard players operation temp misc_z *= temp misc_z

scoreboard players operation in math = temp misc_x
scoreboard players operation in math += temp misc_y
scoreboard players operation in math += temp misc_z
scoreboard players operation in math /= #100 constant
execute as @s run function math:root100
scoreboard players operation @s misc_d = out math
 
tellraw @a[tag=debugger] {"score":{"name":"out","objective":"math"}}
tellraw @a[tag=debugger] {"score":{"name":"@s","objective":"misc_x"}}
tellraw @a[tag=debugger] {"score":{"name":"@s","objective":"misc_y"}}
tellraw @a[tag=debugger] {"score":{"name":"@s","objective":"misc_z"}}

scoreboard players operation out math /= #100 constant

#Division by zero i feel like i just ignore.
scoreboard players operation @s misc_x /= out math
scoreboard players operation @s misc_y /= out math
scoreboard players operation @s misc_z /= out math