execute if score @s AnimationTimer matches 0.. if score @s State matches 1 run scoreboard players set @s State 0
execute unless score @s AnimationTimer matches 0.. if score @s State matches 0 run function zelda:entity/enemy/armos/walk_forward
execute if score @s AnimationTimer matches 0.. run function zelda:entity/enemy/armos/turn_around
execute if score @s AnimationTimer matches 0.. run scoreboard players set @s AnimationTimer -11
function zelda:entity/enemy/armos/render