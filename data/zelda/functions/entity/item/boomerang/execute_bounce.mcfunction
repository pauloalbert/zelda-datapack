
scoreboard players set @s State -1

execute if block ^ ^ ^0.1 air run function zelda:entity/item/boomerang/execute_bounce_2

tp @s ^ ^ ^0.01
scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 0.. run function zelda:entity/item/boomerang/execute_bounce