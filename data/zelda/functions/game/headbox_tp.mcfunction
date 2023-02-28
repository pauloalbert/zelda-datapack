execute unless entity @e[type=interaction,tag=headbox,limit=1,sort=nearest,tag=!headbox_taken] run summon interaction ~ ~-0.5 ~ {Tags:["headbox"]}
execute as @e[type=interaction,tag=headbox,limit=1,sort=nearest,tag=!headbox_taken] run tp ~ ~-0.5 ~
tag @e[type=interaction,tag=headbox,limit=1,sort=nearest,tag=!headbox_taken] add headbox_taken
