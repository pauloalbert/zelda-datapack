#I'ma assume it's only a melee hit, player_hitting_filter 
#run by 
#todo better option
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 1
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 2
execute unless score @s HurtTimer matches ..-1 if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword"}},tag=player_hitting_filter] run scoreboard players remove @s Health 4

execute as @s if score @s Health matches ..0 run function zelda:entity/enemy/kill
execute unless score @s HurtTimer matches ..-1 at @s unless score @s Health matches ..0 run playsound zelda:effects.enemy_hit hostile @a ~ ~ ~

#Knock back if not invulnerable, if not dead, if not frozen
execute unless score @s HurtTimer matches ..-1 as @s at @a[limit=1,tag=player_hitting_filter] unless score @s Health matches ..0 run function zelda:entity/enemy/damage/knockback
execute if score @s HurtTimer matches 0.. run scoreboard players operation @s HurtTimer = #ENEMY_HURT_TIME zelda_constant
