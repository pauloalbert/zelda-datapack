###Called by call_enemies
###Runs movement and choosing next state

# Run while waking up
execute if score @s State matches 1 run function zelda:entity/enemy/armos/waking_up

# Do movement:

   ## do fast steps if fast tag is present
execute if entity @s[tag=fast] if score @s State matches 0 run scoreboard players add @s AnimationTimer 2
execute if entity @s[tag=fast] if score @s State matches 0 if score @s AnimationTimer matches ..-1 run function zelda:entity/enemy/armos/step_forward_fast

   ## Move forward/decide if to turn.
execute if entity @s[tag=!fast] if score @s State matches 0 if score @s AnimationTimer matches ..-1 run function zelda:entity/enemy/armos/step_forward

# Do turning:
execute if score @s State matches 0 unless score @s AnimationTimer matches ..-1 run function zelda:entity/enemy/armos/execute_next_action

# Render:
function zelda:entity/enemy/armos/render