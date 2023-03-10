###Run as tektite
###Called by execute

scoreboard players set in math 1
scoreboard players set in1 math 10

#Roll random number and act accordingly
execute if score out math matches 1..2 run function zelda:entity/enemy/tektite/idle
execute if score out math matches 3..7 run function zelda:entity/enemy/tektite/jump_random
execute if score out math matches 8..10 run function zelda:entity/enemy/tektite/jump_to_player
