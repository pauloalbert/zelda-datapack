#Gets called as @s (player) at @s? when a player hits anything in #player_attackable
#Currently, i always assume I hit the head interaction for now
advancement revoke @s only zelda:player_hurt_interactable
execute as @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}},scores={AttackTimer=0..}] at @s run function zelda:player/do_attack
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}},scores={AttackTimer=0..}] at @s run function zelda:player/do_attack
execute as @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}},scores={AttackTimer=0..}] at @s run function zelda:player/do_attack
