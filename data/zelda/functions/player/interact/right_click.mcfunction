###Run as player at player

#
# This command runs the correct item function based on the players item in hand.
# (The first command is if held directly, other is if right clicked a sword)


# Boomerangs:
execute as @s[nbt={SelectedItem:{id:"minecraft:oak_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:item/boomerang/create
execute as @a[nbt={SelectedItem:{tag:{sword:1}},Inventory:[{Slot:1b,id:"minecraft:oak_trapdoor"}]}] at @s run function zelda:item/boomerang/create

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_trapdoor"}},scores={AttackTimer=-5..}] at @s run function zelda:item/boomerang/create_blue
execute as @a[nbt={SelectedItem:{tag:{sword:1}},Inventory:[{Slot:1b,id:"minecraft:warped_trapdoor"}]}] at @s run function zelda:item/boomerang/create_blue
