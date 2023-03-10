### Executed by player at player
### Called by advancement, when a player left clicks

#
# Handles attacking if the player is holding the right item.
#

execute as @s[nbt={SelectedItem:{tag:{sword:1}}},scores={AttackTimer=0..}] at @s run function zelda:player/attack/do_attack
