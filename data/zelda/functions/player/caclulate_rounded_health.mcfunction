execute store result score @s RoundedHealth run data get entity @s Health 100
#scoreboard players operation @s RoundedHealth = @s PlayerHealth
#scoreboard players operation @s RoundedHealth *= #100 constant
scoreboard players operation @s RoundedHealth += #99 constant
scoreboard players operation @s RoundedHealth /= #100 constant