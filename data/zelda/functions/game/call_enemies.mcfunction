


#say @s 
#Kill all dead enemies
execute as @e[tag=tektike,tag=controller,scores={AnimationTimer=0..}] run function zelda:entity/enemy/tektike/jump_random
