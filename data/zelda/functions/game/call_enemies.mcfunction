


#say @s 
#Kill all dead enemies
execute as @e[tag=tektike,tag=controller] run function zelda:entity/enemy/tektike/jump_random

schedule function zelda:game/call_enemies 40t replace