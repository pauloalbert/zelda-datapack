advancement revoke @s only zelda:player_interacted
execute as @s[nbt={SelectedItem:{id:"minecraft:oak_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:entity/item/boomerang/create
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:entity/item/boomerang/create_blue


#execute if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}]