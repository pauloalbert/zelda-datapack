#Gets called as @s (player) at @s? when a player hits anything in #player_attackable
#Currently, i always assume I hit the head interaction for now
advancement revoke @s only zelda:player_hurt_entity

scoreboard players set @s raycast_recursion 40
execute as @s at @s anchored eyes run function zelda:player/raycast
