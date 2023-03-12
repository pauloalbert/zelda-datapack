###Armos Action
###Called by execute_next_action
###Uses behavior0 (current facing direction 0-3)

#region Roll a random number

#The random number is 0..NUMBER_OF_FREE_DIRECTIONS - 1
scoreboard players set in math 0
scoreboard players set in1 math -1

## count free directions, add them to the range.max (in1)
execute if block ~ ~ ~1 #zelda:floor if block ~ ~1 ~1 #zelda:passable_blocks run scoreboard players add in1 math 1
execute if block ~ ~ ~-1 #zelda:floor if block ~ ~1 ~-1 #zelda:passable_blocks run scoreboard players add in1 math 1
execute if block ~-1 ~ ~ #zelda:floor if block ~-1 ~1 ~ #zelda:passable_blocks run scoreboard players add in1 math 1
execute if block ~1 ~ ~ #zelda:floor if block ~1 ~1 ~ #zelda:passable_blocks run scoreboard players add in1 math 1

## if in1 = -1 range will fail + means the armos has nowhere to go.
#rip bozo boxed like a fish.
execute if score in1 math matches -1 run function zelda:entity/enemy/remove
function math:rng/range

#endregion

#region Move the armos

#This segment translates the random number to a new direction
#It works by skipping directions which have a wall by adding a number
scoreboard players operation @s behavior0 = out math

#region big block
scoreboard players add @s behavior0 1
execute if block ~ ~ ~1 #zelda:floor if block ~ ~1 ~1 #zelda:passable_blocks run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 1.. run scoreboard players add @s behavior0 1
execute if block ~1 ~ ~ #zelda:floor if block ~1 ~1 ~ #zelda:passable_blocks if score @s behavior0 matches 2.. run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 2.. run scoreboard players add @s behavior0 1
execute if block ~ ~ ~-1 #zelda:floor if block ~ ~1 ~-1 #zelda:passable_blocks if score @s behavior0 matches 3.. run scoreboard players remove @s behavior0 1
execute if score @s behavior0 matches 3.. run scoreboard players add @s behavior0 1
execute if block ~-1 ~ ~ #zelda:floor if block ~-1 ~1 ~ #zelda:passable_blocks if score @s behavior0 matches 4.. run scoreboard players remove @s behavior0 1
execute if block ~-1 ~ ~ #zelda:floor if score @s behavior0 matches 4.. run tellraw @a[tag=debugger] {"text":"<TERMINAL ERROR>: armos turn_around reached an illegal state"}
#endregion big block
execute store result entity @s Rotation[0] float -90 run scoreboard players get @s behavior0

#endregion