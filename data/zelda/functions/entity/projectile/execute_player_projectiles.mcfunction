scoreboard players operation GAME Damage = @s Damage
execute as @e[tag=enemy,tag=hitbox,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[tag=enemy,tag=hitbox,dx=0] on vehicle run function zelda:entity/enemy/damage/hurt_projectile
execute positioned ^ ^ ^0.2 as @e[tag=enemy,tag=hitbox,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[tag=enemy,tag=hitbox,dx=0] on vehicle run function zelda:entity/enemy/damage/hurt_projectile
execute positioned ^ ^ ^0.4 as @e[tag=enemy,tag=hitbox,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[tag=enemy,tag=hitbox,dx=0] on vehicle run function zelda:entity/enemy/damage/hurt_projectile
execute positioned ^ ^ ^0.6 as @e[tag=enemy,tag=hitbox,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[tag=enemy,tag=hitbox,dx=0] on vehicle run function zelda:entity/enemy/damage/hurt_projectile
execute positioned ^ ^ ^0.8 as @e[tag=enemy,tag=hitbox,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @s[tag=enemy,tag=hitbox,dx=0] on vehicle run function zelda:entity/enemy/damage/hurt_projectile
execute if score GAME Damage = #0 constant run kill @s
tp @s ^ ^ ^1
execute unless block ~ ~ ~ #zelda:air run kill @s
#tellraw @a[tag=debugger] {"score":{"name":"@s","objective":"Damage"}}