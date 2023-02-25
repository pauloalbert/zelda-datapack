###Executed on attacker, player has player_damage_filter tag
execute if score @s Damage = #1 constant run damage @a[tag=player_damage_filter] 1 zelda:name_insert @s
execute if score @s Damage = #2 constant run damage @a[tag=player_damage_filter] 2 zelda:name_insert @s
execute if score @s Damage = #4 constant run damage @a[tag=player_damage_filter] 4 zelda:name_insert @s
execute if score @s Damage = #8 constant run damage @a[tag=player_damage_filter] 8 zelda:name_insert @s
execute if score @s Damage = #16 constant run damage @a[tag=player_damage_filter] 16 zelda:name_insert @s
