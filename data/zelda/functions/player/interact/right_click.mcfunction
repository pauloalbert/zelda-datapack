advancement revoke @s only zelda:player_interacted
#Boomerangs:
execute as @s[nbt={SelectedItem:{id:"minecraft:oak_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:entity/item/boomerang/create
execute as @a[nbt={SelectedItem:{tag:{sword:1}},Inventory:[{Slot:1b,id:"minecraft:oak_trapdoor"}]}] at @s run function zelda:entity/item/boomerang/create

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:entity/item/boomerang/create_blue
execute as @a[nbt={SelectedItem:{tag:{sword:1}},Inventory:[{Slot:1b,id:"minecraft:warped_trapdoor"}]}] at @s run function zelda:entity/item/boomerang/create_blue
