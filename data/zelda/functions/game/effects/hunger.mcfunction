###Simple three state controller for keeping hunger in the 2-6 range
execute unless score @s Hunger <= #6 constant run effect give @s hunger 1 200 true
execute unless score @s Hunger > #2 constant run effect give @s saturation 1 1 true

#This piece of code won't work, since if the players hunger was not set, 
#effect give @a[scores={Hunger=6..}] hunger 1 200 true 