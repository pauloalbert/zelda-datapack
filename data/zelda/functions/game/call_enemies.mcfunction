


#say @s 
#Kill all dead enemies
execute as @e[tag=tektite,tag=controller] at @s run function zelda:entity/enemy/tektite/handle_movement
execute as @e[tag=armos,tag=controller] at @s run function zelda:entity/enemy/armos/handle_movement