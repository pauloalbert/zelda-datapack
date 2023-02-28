
###CONSTANTS
scoreboard players set #-1 constant -1
scoreboard players set #0 constant 0
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #6 constant 6

###GAME CONSTANTS
scoreboard objectives add zelda_constant dummy
scoreboard players set #ENEMY_HURT_TIME zelda_constant -10

###Enemies
#Camel case = these are respected non-volatile variables of the enemy.
scoreboard objectives add Direction dummy
scoreboard objectives add Health dummy
scoreboard objectives add Damage dummy
scoreboard objectives add State dummy
scoreboard objectives add AnimationTimer dummy
scoreboard objectives add HurtTimer dummy

scoreboard objectives add behavior0 dummy
scoreboard objectives add behavior1 dummy
scoreboard objectives add behavior2 dummy
scoreboard objectives add behavior3 dummy
scoreboard objectives add EnemyConstant0 dummy
scoreboard objectives add EnemyConstant1 dummy
scoreboard objectives add EnemyConstant2 dummy
scoreboard objectives add EnemyConstant3 dummy
scoreboard objectives add EnemyConstant4 dummy
scoreboard objectives add EnemyConstant5 dummy


###Player
scoreboard objectives add Hunger food
scoreboard objectives add MaxHealth dummy
scoreboard objectives add RingLevel dummy
scoreboard objectives add raycast_recursion dummy
scoreboard objectives add AttackTimer custom:time_since_rest

#controlled by do damage
scoreboard objectives add health_wrong deathCount
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