
###CONSTANTS
scoreboard players set #-1 constant -1
scoreboard players set #0 constant 0
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #6 constant 6
scoreboard players set #99 constant 99
scoreboard players set #100 constant 100
scoreboard players set #18000 constant 18000

###GAME ZELDA CONSTANTS
scoreboard objectives add zelda_constant dummy
scoreboard players set #ENEMY_HURT_TIME zelda_constant -10
scoreboard players set #BOOMERANGS_BOUNCE zelda_constant 1

###Game variables
scoreboard objectives add Freeze dummy
scoreboard objectives add Dungeon1Beaten dummy

###Enemies
#Camel case = these are respected non-volatile variables of the enemy.
scoreboard objectives add Direction dummy
scoreboard objectives add Health dummy
scoreboard objectives add Damage dummy
scoreboard objectives add State dummy
scoreboard objectives add AnimationTimer dummy
scoreboard objectives add HurtTimer dummy
scoreboard objectives add StunTimer dummy

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
scoreboard objectives add SuperAttackTimer custom:time_since_rest
scoreboard objectives add PlayerHealth health
scoreboard objectives add RoundedHealth dummy

scoreboard objectives add boomerang_id dummy
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

scoreboard players set GAME Freeze 0