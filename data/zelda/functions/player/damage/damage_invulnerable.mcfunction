###Execute as attacker, player has player_damage_filter tag
###Called by do_damage

damage @a[tag=player_damage_filter,sort=nearest,limit=1] 0.00000001 zelda:name_insert_bypass_invincibility by @s
execute if score @s Damage matches 0..1 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 1 zelda:name_insert_bypass_invincibility by @s
execute if score @s Damage matches 2..2 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 2 zelda:name_insert_bypass_invincibility by @s
execute if score @s Damage matches 4..4 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 4 zelda:name_insert_bypass_invincibility by @s
execute if score @s Damage matches 8..8 run damage @a[tag=player_damage_filter,sort=nearest,limit=1] 8 zelda:name_insert_bypass_invincibility by @s

execute unless score @s Damage matches -2147483648..2147483647 run tellraw @a[tag=debugger] ["","Damage of: ",{"selector":"@s","hoverEvent":{"action":"show_text","contents":[{"nbt":"CustomName","entity":"@s"}]}}," is Unset."]
execute if score @s Damage matches 0 run tellraw @a[tag=debugger] ["","Damage of: ",{"selector":"@s","hoverEvent":{"action":"show_text","contents":[{"nbt":"CustomName","entity":"@s"}]}}," is Zero."]

#This scoreboard is 1 until damage_invulnerable is invoked, resets on death.
scoreboard players set @a[tag=player_damage_filter,sort=nearest,limit=1] health_wrong 0
