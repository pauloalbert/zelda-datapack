### This function is run as long as the armos hasn't woken up yet
execute if score @s AnimationTimer matches -36.. run fill ~ ~ ~ ~ ~ ~ air replace barrier
execute if score @s AnimationTimer matches 0 run scoreboard players set @s State 0