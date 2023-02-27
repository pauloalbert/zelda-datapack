###Point here is to make the block/item_display show the proper model at the correct angle.
execute if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"sculk_catalyst"},interpolation_duration:30, transformation:{scale:[1f, 1f, 1f]},interpolation_start:-1}
execute if score @s State matches 1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"sculk_sensor"}, interpolation_duration:2, transformation:{scale:[0.5f, 1.8f, 0.5f]},interpolation_start:-1}
execute if score @s State matches 2 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:"sculk_sensor"}, interpolation_duration:10, transformation:{scale:[1f, 1f, 1f]},interpolation_start:-1}

execute if score @s State matches -1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:""},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]},interpolation_start:-1}
