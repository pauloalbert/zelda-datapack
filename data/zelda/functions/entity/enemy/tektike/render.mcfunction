execute unless entity @e[type=block_display,tag=tektike] at @s run summon block_display ~ ~ ~ {CustomName:'"tektike"',block_state:{Name:"sculk_catalyst"},Tags:["tektike","display","red"]}
execute unless entity @e[type=interaction,tag=tektike] at @s run summon interaction ~ ~ ~ {CustomName:'"tektike"',Tags:["tektike","hitbox","red"]}

tp @e[type=block_display,sort=nearest,limit=1,tag=tektike] ~ ~1 ~
tp @e[type=interaction,sort=nearest,limit=1,tag=tektike] ~ ~1 ~