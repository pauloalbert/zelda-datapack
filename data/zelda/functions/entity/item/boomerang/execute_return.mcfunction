tag @s add boomerang_filter
execute as @a if score @s boomerang_id = @e[tag=boomerang_filter,limit=1,sort=nearest] boomerang_id run tag @s add boomerang_player_filter
tag @s remove boomerang_filter

execute facing entity @a[tag=boomerang_player_filter,limit=1] eyes run tp @s ^ ^ ^0.7
