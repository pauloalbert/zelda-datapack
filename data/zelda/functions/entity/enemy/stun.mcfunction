### Stun an enemy (boomerang)
###Run as enemy
###Called by boomerang/execute

# Prevent future Animation frames decreasing and executes called
scoreboard players set @s StunTimer -60

# Freeze armor stand in the air
data merge entity @s[type=armor_stand] {NoGravity:1b}

# Play effects if stunned
execute unless score @s Health matches 0 at @s run particle flame ~ ~2 ~ 0.2 0.2 0.2 0.01 10
execute unless score @s Health matches 0 at @s run playsound zelda:effects.enemy_hit hostile @a ~ ~ ~ 0.85 1.2

# Kill self if 0 HP (bats/gels)
execute if score @s Health matches 0 run function zelda:entity/enemy/kill