###Point here is to make the block/item_display show the proper model at the correct angle.
execute if entity @s[tag=red] if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:1}},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f],translation:[0f,0.6f,0f],left_rotation:[0f,1f,0f,0f]}}
execute if entity @s[tag=red] if score @s State matches 1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:3}}, interpolation_duration:40, transformation:{scale:[1f,1f,1f],translation:[0f,0.5f,0f],left_rotation:[0f,1f,0f,0f]}}
execute if entity @s[tag=red] if score @s State matches 2 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:2}}, interpolation_duration:30, transformation:{scale:[1f, 2f, 1f],translation:[0f,1f,0f],left_rotation:[0f,1f,0f,0f]}}

execute if entity @s[tag=red] if score @s State matches 0 if score @s StunTimer matches ..-1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:2}}, transformation:{scale:[1f, 1f, 1f]}}

###Blue
execute if entity @s[tag=blue] if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:11}},interpolation_duration:0, transformation:{scale:[1f, 1f, 1f],translation:[0f,0.6f,0f],left_rotation:[0f,1f,0f,0f]}}
execute if entity @s[tag=blue] if score @s State matches 1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:13}}, interpolation_duration:40, transformation:{scale:[1f,0.6f,1f],translation:[0f,0.6f,0f],left_rotation:[0f,1f,0f,0f]}}
execute if entity @s[tag=blue] if score @s State matches 2 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:12}}, interpolation_duration:30, transformation:{scale:[1f, 1.4f, 1f],translation:[0f,1f,0f],left_rotation:[0f,1f,0f,0f]}}

execute if entity @s[tag=blue] if score @s State matches 0 if score @s StunTimer matches ..-1 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"piston",Count:1b,tag:{CustomModelData:12}},transformation:{scale:[1f, 1f, 1f]}}
