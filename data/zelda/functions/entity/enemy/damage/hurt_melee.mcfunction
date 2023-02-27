#I'ma assume it's only a melee hit, player_hitting_filter 
#run by 
#todo better option
execute if entity @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 1
execute if entity @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 2
execute if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 4

execute as @s if score @s Health matches ..0 run function zelda:entity/enemy/kill

execute as @s at @a[limit=1,tag=player_hitting_filter] unless score @s Health matches ..0 on vehicle run function zelda:entity/enemy/damage/knockback
