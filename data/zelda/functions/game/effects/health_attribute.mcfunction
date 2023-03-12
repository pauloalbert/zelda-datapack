#Reset for players who don't have a value
execute unless score @s MaxHealth matches 6.. run scoreboard players set @s MaxHealth 6

#region health ranges
execute if score @s MaxHealth matches 6 run attribute @s generic.max_health base set 6
execute if score @s MaxHealth matches 7..8 run attribute @s generic.max_health base set 8
execute if score @s MaxHealth matches 9..10 run attribute @s generic.max_health base set 10
execute if score @s MaxHealth matches 11..12 run attribute @s generic.max_health base set 12
execute if score @s MaxHealth matches 13..14 run attribute @s generic.max_health base set 14
execute if score @s MaxHealth matches 15..16 run attribute @s generic.max_health base set 16
execute if score @s MaxHealth matches 17..18 run attribute @s generic.max_health base set 18
execute if score @s MaxHealth matches 19..20 run attribute @s generic.max_health base set 20
execute if score @s MaxHealth matches 21..22 run attribute @s generic.max_health base set 22
execute if score @s MaxHealth matches 23..24 run attribute @s generic.max_health base set 24
execute if score @s MaxHealth matches 25..26 run attribute @s generic.max_health base set 26
execute if score @s MaxHealth matches 27..28 run attribute @s generic.max_health base set 28
execute if score @s MaxHealth matches 29..30 run attribute @s generic.max_health base set 30
execute if score @s MaxHealth matches 31..32 run attribute @s generic.max_health base set 32
#endregion