#I'ma assume it's only a melee hit, player_hitting_filter 
#run by raycast, as enemy
#todo better option
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 1
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 2
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 4

execute as @s at @a[tag=player_hitting_filter] run function zelda:entity/enemy/damage/took_damage
