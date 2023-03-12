###Run as tektite
###Called by execute

#region roll random number
scoreboard players set in math 1
scoreboard players set in1 math 10
function math:rng/range
tellraw @a[tag=debugger] {"score":{"name":"out","objective":"math"}}
#endregion

#region Do tektite action
execute if score out math matches 1..1 run function zelda:entity/enemy/tektite/idle
execute if score out math matches 2..7 run function zelda:entity/enemy/tektite/jump_random
execute if score out math matches 8..10 run function zelda:entity/enemy/tektite/jump_to_player
#endregion