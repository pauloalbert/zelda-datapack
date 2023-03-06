advancement revoke @s only zelda:player_interacted
execute as @s[nbt={SelectedItem:{id:"minecraft:oak_trapdoor"}},scores={AttackTimer=0..}] at @s run function zelda:entity/item/boomerang/create