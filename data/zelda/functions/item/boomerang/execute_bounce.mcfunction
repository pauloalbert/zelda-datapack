
scoreboard players set @s State -1

execute unless block ^ ^ ^0.01 passable_blocks run function zelda:item/boomerang/execute_bounce_2
tellraw @a[tag=debugger] {"score":{"name":"@s","objective":"behavior0"}}
tp @s ^ ^ ^0.01
scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 0.. as @s at @s run function zelda:item/boomerang/execute_bounce