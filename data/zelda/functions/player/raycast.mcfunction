
particle crit

scoreboard players remove @s raycast_recursion 1
execute as @s positioned ^ ^ ^0.05 if score @s raycast_recursion matches 0..
