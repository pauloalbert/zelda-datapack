#temp test function
execute as pauloalbert as @e[type=marker,tag=message_controller,sort=nearest,limit=1] at @s run function zelda:entity/npc/tick_text
schedule function zelda:entity/npc/execute_player 2t
