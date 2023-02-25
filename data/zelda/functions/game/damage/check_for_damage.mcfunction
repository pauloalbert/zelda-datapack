###executed as player.

tag @s add player_damage_filter
#create two hitboxes around the player, see if any entity resides in both.
execute positioned ~-0.3 ~ ~-0.3 run tag @e[tag=hurts_player,dx=0,dy=1,dz=0] add hurt_a_filter
execute positioned ~-0.7 ~-0.2 ~-0.7 run tag @e[tag=hurts_player,dx=0,dy=1,dz=0] add hurt_b_filter
execute positioned ~-0.7 ~-0.2 ~-0.7 as @e[tag=hurt_b_filter,tag=hurt_a_filter, dx=1,dy=1,dz=1] at @s run function zelda:game/damage/do_damage

#Practically tag @e remove filters (optimized-ish)
execute positioned ~-0.7 ~-0.2 ~-0.7 run tag @e[dx=1,dy=1,dz=1] remove hurt_a_filter
execute positioned ~-0.7 ~-0.2 ~-0.7 run tag @e[dx=1,dy=1,dz=1] remove hurt_a_filter
tag @s remove player_damage_filter

#tellraw pauloalbert {"text":"dookie"}