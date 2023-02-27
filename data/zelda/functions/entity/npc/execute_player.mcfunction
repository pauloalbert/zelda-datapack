#temp test function
execute as pauloalbert at @s as @e[type=marker,tag=message_controller,sort=nearest,limit=1] at @s run function zelda:entity/npc/tick_text
execute as pauloalbert at @s if score @e[type=marker,tag=message_controller,sort=nearest,limit=1] behavior0 matches 1 run schedule function zelda:entity/npc/execute_player 2t
