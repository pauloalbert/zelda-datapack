###Point here is to make the block/item_display show the proper model at the correct angle.
execute unless score @s State matches -2147483648..2147483647 on passengers if entity @s[tag=display] run data merge @s {block_state:{Name:"sculk_catalyst"},interpolation_duration:30, transformation:{scale:[1f, 1f, 1f]}}
execute unless score @s State matches 1 on passengers if entity @s[tag=display] run data merge @s {block_state:{Name:"sculk_sensor"}, interpolation_duration:30, transformation:{scale:[0.5f, 1.8f, 0.5f]}}
execute unless score @s State matches 2 on passengers if entity @s[tag=display] run data merge @s {block_state:{Name:"sculk_sensor"}, interpolation_duration:30, transformation:{scale:[1f, 1f, 1f]}}

execute unless score @s State matches -1 on passengers if entity @s[tag=display] run data merge @s {block_state:{Name:""},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]}}
