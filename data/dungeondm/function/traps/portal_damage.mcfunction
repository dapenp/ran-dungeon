execute as @e[type=marker,tag=room_portal_entrance] at @s if entity @p[distance=..0.7] run damage @p 5 minecraft:explosion
execute as @e[type=marker,tag=room_portal_entrance] at @s if entity @p[distance=..0.7] run summon fireball ~ ~-1 ~ {Fire:1,ExplosionPower:1b,Invulnerable:1b,life:1,Motion:[0.0,1.0,0.0]}
execute as @e[type=marker,tag=room_portal_entrance] at @s if entity @p[distance=..0.7] run particle minecraft:explosion_emitter ~ ~ ~
execute as @e[type=marker,tag=room_portal_entrance] at @s if entity @p[distance=..1] run execute as @p[distance=..0.7] at @s positioned ^ ^ ^ run tp @s ^ ^1 ^
