


#say @s 
#Kill all dead enemies
execute as @e[tag=tektite,tag=controller] at @s if score @s StunTimer matches 0.. run function zelda:entity/enemy/tektite/handle_movement
execute as @e[tag=armos,tag=controller] at @s if score @s StunTimer matches 0.. run function zelda:entity/enemy/armos/handle_movement