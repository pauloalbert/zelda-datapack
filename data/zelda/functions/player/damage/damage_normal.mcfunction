###run as enemy, player has the player_damage_filter
#* this function runs even if the player was invulnerable, however, wont do anything.
execute if score @s Damage matches 0..1 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 1 zelda:name_insert by @s
execute if score @s Damage matches 2..2 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 2 zelda:name_insert by @s
execute if score @s Damage matches 4..4 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 4 zelda:name_insert by @s
execute if score @s Damage matches 8..8 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 8 zelda:name_insert by @s
execute unless score @s Damage matches -2147483648..2147483647 run tellraw @a[tag=debugger] ["","Damage of: ",{"selector":"@s","hoverEvent":{"action":"show_text","contents":[{"nbt":"CustomName","entity":"@s"}]}}," is Unset."]
execute if score @s Damage matches 0 run tellraw @a[tag=debugger] ["","Damage of: ",{"selector":"@s","hoverEvent":{"action":"show_text","contents":[{"nbt":"CustomName","entity":"@s"}]}}," is Zero."]

#Should not alter health_wrong scoreboard