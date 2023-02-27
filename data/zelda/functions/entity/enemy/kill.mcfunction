#run on controller
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0 40 normal
execute as @s at @s run function zelda:entity/item/try_spawn
execute on passengers run kill @s
kill @s
