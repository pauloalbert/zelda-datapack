summon item_display ~ ~ ~ {Tags:[hurts_enemy,controller,sword,TEMP_SPAWN,projectile],item:{id:"netherite_sword",Count:1b},"transformation":{"translation":[0f,0f,0f],scale:[1f,1f,1f],left_rotation:[0f,0.74f,0.74f,0f],right_rotation:[0f,0f,0f,1f]}}
execute positioned ~ ~ ~ rotated as @s run tp @e[tag=TEMP_SPAWN] ~ ~ ~ ~ ~
scoreboard players set @e[tag=TEMP_SPAWN] Damage 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run scoreboard players set @e[tag=TEMP_SPAWN] Damage 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players set @e[tag=TEMP_SPAWN] Damage 4

tag @e remove TEMP_SPAWN