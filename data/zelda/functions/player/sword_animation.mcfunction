#run as player at @s
playsound zelda:effects.sword_slash player @a ~ ~ ~
#execute if entity @s[type=player] run summon item_display ^ ^-0.25 ^0.25 {Tags:["sword_display"],item:{id:"minecraft:air",Count:1b},transformation:{translation:[0f,0f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0.7f,0.7f,0f],scale:[1f,1f,1f]}} 
tp @e[type=item_display,tag=sword_display,limit=1,sort=nearest] ^ ^-0.25 ^0.25 ~ ~
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] item.id set value "minecraft:wooden_sword"
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] item.id set value "minecraft:stone_sword"
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] item.id set value "minecraft:iron_sword"

#execute at @s as @e[type=item_display,tag=sword_display] positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[type=player] run schedule function zelda:player/sword_animation 4t
execute unless entity @s[type=player] run data modify entity @e[type=item_display,tag=sword_display,limit=1,sort=nearest] item.id set value "minecraft:air"
#execute unless entity @s[type=player] run kill @e[type=item_display,tag=sword_display]
