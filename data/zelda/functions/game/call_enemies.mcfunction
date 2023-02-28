


#say @s 
#Kill all dead enemies
execute as @e[tag=tektite,tag=controller,scores={AnimationTimer=0..}] run function zelda:entity/enemy/tektite/jump_random
