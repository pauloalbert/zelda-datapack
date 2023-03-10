#execute positioned ~-0.4 ~-0.15 ~-0.4 as @e[tag=enemy,dx=0,tag=hitbox] positioned ~-0.2 ~-0.7 ~-0.2 if entity @s[dx=0] on vehicle run function zelda:entity/enemy/stun
execute positioned ~-0.4 ~-0.15 ~-0.4 run tag @e[tag=enemy,dx=0,tag=hitbox] add boomerang_stun_filter
execute positioned ~-0.6 ~-0.85 ~-0.6 if entity @e[dx=0,tag=boomerang_stun_filter] run scoreboard players set @s AnimationTimer 0
execute positioned ~-0.6 ~-0.85 ~-0.6 as @e[dx=0,tag=boomerang_stun_filter] on vehicle run function zelda:entity/enemy/stun
tag @e[distance=..2,tag=enemy] remove boomerang_stun_filter

execute if score @s AnimationTimer matches 0.. run scoreboard players set @s State 1
execute if score @s State matches 0 run function zelda:item/boomerang/execute_normal
execute if score @s State matches 1 run function zelda:item/boomerang/execute_return

#animation
execute if entity @s run scoreboard players operation @s behavior2 = @s AnimationTimer
execute if entity @s run scoreboard players operation @s behavior2 %= #2 constant

execute if score @s behavior2 matches 0 run playsound zelda:effects.arrow_boomerang block @a ~ ~ ~ 0.7
#execute store result entity @s Rotation[0] float 35 run say hi
execute if entity @a[tag=boomerang_player_filter,limit=1,distance=..2] run kill @s
tag @a remove boomerang_player_filter