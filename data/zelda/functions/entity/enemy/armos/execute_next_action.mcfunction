###Decides what to do every full block, resets timer till next block

#doesn't move on turnaround frame, so in next it will be -10 so 10 steps
scoreboard players set @s AnimationTimer -11
#Currently, a third chance of changing direction (and a 1/4th of getting the same result)
execute if predicate zelda:half run function zelda:entity/enemy/armos/turn_around