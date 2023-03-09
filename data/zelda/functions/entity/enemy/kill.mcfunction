#run on controller (location not guarranteed)
execute at @s run playsound zelda:effects.enemy_die hostile @a ~ ~ ~
execute at @s run particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0 40 normal
execute as @s at @s run function zelda:item/try_spawn
execute on passengers run kill @s
kill @s
