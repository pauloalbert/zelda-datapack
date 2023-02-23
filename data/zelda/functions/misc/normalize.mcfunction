#Prerequisites: run by an entity with misc_x misc_y misc_z two decimals (9.50 = 950)
#return: 
scoreboard players operation temp misc_x = @s misc_x
scoreboard players operation temp misc_y = @s misc_y
scoreboard players operation temp misc_z = @s misc_z

scoreboard players operation temp misc_x *= temp misc_x
scoreboard players operation temp misc_y *= temp misc_y
scoreboard players operation temp misc_z *= temp misc_z

scoreboard players operation in math = temp misc_x
scoreboard players operation in math += temp misc_y
scoreboard players operation in math += temp misc_z

execute as @s run function math:root100

scoreboard players operation @s misc_d = out math
#Division by zero i feel like i just ignore.
scoreboard players operation @s misc_x /= out math
scoreboard players operation @s misc_y /= out math
scoreboard players operation @s misc_z /= out math