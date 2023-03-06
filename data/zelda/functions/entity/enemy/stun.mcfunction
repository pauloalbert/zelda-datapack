scoreboard players set @s StunTimer -60
execute unless score @s Health matches 0 at @s run particle flame ~ ~2 ~ 0.2 0.2 0.2 0.01 10
execute unless score @s Health matches 0 at @s run playsound zelda:effects.bomb_blow hostile @a ~ ~ ~ 0.85 1.7
execute if score @s Health matches 0 run function zelda:entity/enemy/kill