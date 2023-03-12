

execute if entity @s[tag=red] if score @s State matches 0 on passengers if entity @s[tag=display] run data merge entity @s {item:{id:"ink_sac",Count:1b,tag:{CustomModelData:1}}, transformation:{translation:[0f, 0.5f, 0f],left_rotation:[0f,0f,0f,1f]}}
