
## Headbox
tag @e[type=interaction,tag=headbox] remove headbox_taken
execute as @a[tag=player,gamemode=adventure] at @s anchored eyes positioned ^ ^ ^ run function zelda:game/headbox_tp
kill @e[type=interaction,tag=headbox,tag=!headbox_taken]

## Player
execute as @a[tag=player,gamemode=adventure] at @s run function zelda:game/tick_player

## Game Shit
execute if score GAME Freeze matches 2.. run scoreboard players remove GAME Freeze 1
execute if score GAME Freeze matches 1 run function zelda:item/freeze/stop_freeze

## Entity
execute as @e at @s if data entity @s Tags[0] run function zelda:game/tick_entity



## Dev
execute as @a[gamemode = !adventure] run function zelda:game/effects/developer_effects