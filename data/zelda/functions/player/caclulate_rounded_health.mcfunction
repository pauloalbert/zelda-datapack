###Run as player, Called by attack_raycast
###Modifies: @s RoundedHealth

# Take player health nbt, round up, set scoreboard to be the result
# This is because player health is a float, Health scoreboard rounds down.
# for example, health of 5.1 with max of 6 should be able to shoot.
#(visually its 6 hearts still)

execute store result score @s RoundedHealth run data get entity @s Health 100
#.scoreboard players operation @s RoundedHealth = @s PlayerHealth
#.scoreboard players operation @s RoundedHealth *= #100 constant
scoreboard players operation @s RoundedHealth += #99 constant
scoreboard players operation @s RoundedHealth /= #100 constant