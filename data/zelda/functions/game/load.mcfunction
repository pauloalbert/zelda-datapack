
###CONSTANTS
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #6 constant 6
scoreboard players set #8 constant 8
scoreboard players set #16 constant 16

###Enemies
#Camel case = these are respected non-volatile variables of the enemy.
scoreboard objectives add Direction dummy
scoreboard objectives add Health dummy
scoreboard objectives add Damage dummy

scoreboard objectives add behavior0 dummy

###Player
scoreboard objectives add Hunger food

#Misc (load every refresh)
function zelda:misc/_load
function zelda:entity/enemy/_load

###Misc
#getNearestPlayer scoreboards
#volatile on player!, these are return values.
scoreboard objectives add misc_x dummy
scoreboard objectives add misc_y dummy
scoreboard objectives add misc_z dummy
scoreboard objectives add misc_d dummy

#scoreboard objectives add misc dummy
#general purpose input output^