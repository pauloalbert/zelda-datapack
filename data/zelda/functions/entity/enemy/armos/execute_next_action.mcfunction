###Decides what to do every full block, resets timer till next block

#doesn't move on turnaround frame, so in next it will be -10 so 10 steps
scoreboard players set @s AnimationTimer -11

## Roll a number from 1-10
scoreboard players set in math 1
scoreboard players set in1 math 10
function math:rng/range
#endregion

## Turn or skip this check

#How this works currently is 1/2 (1-5) the armos turns normally.
#However for (6-10) the armos wont turn UNLESS a wall is blocking it's next move
#(The last two lines are mutually exclusive)
execute if score out math matches 1..5 run function zelda:entity/enemy/armos/turn_around
execute rotated ~ 0 if score out math matches 6..10 unless block ^ ^1 ^1 #zelda:passable_blocks run function zelda:entity/enemy/armos/turn_around
execute rotated ~ 0 if score out math matches 6..10 if block ^ ^1 ^1 #zelda:passable_blocks unless block ^ ^ ^1 #zelda:floor run function zelda:entity/enemy/armos/turn_around
#endregion