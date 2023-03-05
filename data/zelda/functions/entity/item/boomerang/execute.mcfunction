#execute as @e[tag=enemy,dx=0] positioned ~ ~ ~ if entity @s[dx=0] run function zelda:STUN

execute if score @s AnimationTimer matches 0.. run scoreboard players set @s State 1
execute if score @s State matches 0 run function zelda:entity/item/boomerang/execute_normal
execute if score @s State matches 1 run function zelda:entity/item/boomerang/execute_return

#animation
#execute store result entity @s Rotation[0] float 35 run say hi