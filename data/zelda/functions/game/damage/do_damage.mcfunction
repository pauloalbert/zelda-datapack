###Executed on attacker, player has player_damage_filter tag
execute if score @s Damage = #1 constant run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 1 zelda:name_insert by @s
execute if score @s Damage = #2 constant run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 2 zelda:name_insert by @s
execute if score @s Damage = #4 constant run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 4 zelda:name_insert by @s
execute if score @s Damage = #8 constant run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 8 zelda:name_insert by @s
execute if score @s Damage = #16 constant run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 16 zelda:name_insert by @s
execute unless score @s Damage matches -2147483648..2147483647 run tellraw @a[tag=debugger] ["","Damage of: ",{"selector":"@s","hoverEvent":{"action":"show_text","contents":[{"nbt":"CustomName","entity":"@s"}]}}," is Unset."]