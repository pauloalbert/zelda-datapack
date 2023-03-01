###Point here is to make the block/item_display show the proper model at the correct angle.
execute if entity @s[tag=red] if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:1}},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]}}
execute if entity @s[tag=red] if score @s State matches 1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:3}}, interpolation_duration:40, transformation:{scale:[1f,0.6f,1f]}}
execute if entity @s[tag=red] if score @s State matches 2 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:2}}, interpolation_duration:30, transformation:{scale:[1f, 1.4f, 1f]}}

execute if entity @s[tag=red] if score @s State matches -1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:""},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]},interpolation_start:-1}

###Blue
execute if entity @s[tag=blue] if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:11b,tag:{CustomModelData:11}},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]}}
execute if entity @s[tag=blue] if score @s State matches 1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:13b,tag:{CustomModelData:13}}, interpolation_duration:40, transformation:{scale:[1f,0.6f,1f]}}
execute if entity @s[tag=blue] if score @s State matches 2 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:12b,tag:{CustomModelData:12}}, interpolation_duration:30, transformation:{scale:[1f, 1.4f, 1f]}}

execute if entity @s[tag=blue] if score @s State matches -1 on passengers if entity @s[tag=display] run data merge entity @s {block_state:{Name:""},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f]},interpolation_start:-1}
