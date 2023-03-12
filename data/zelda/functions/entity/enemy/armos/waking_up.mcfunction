### This function is run as long as the armos hasn't woken up yet
#Temp: fill with air every frame. (scared of scenarios where stun/freeze skips these frames)
execute if score @s AnimationTimer matches -44.. run fill ~ ~1 ~ ~ ~1 ~ air replace barrier
execute if score @s AnimationTimer matches 0 run scoreboard players set @s State 0