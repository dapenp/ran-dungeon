#north rooms
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] at @s run tag @s add hallnorth
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] at @s run tag @s remove north
execute as @e[type=shulker,tag=hallnorth] at @s run place template dungeondm:testhall ~-1 ~1 ~-1

execute as @e[type=shulker,tag=hallnorth] at @s run summon shulker ~ ~ ~-8 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["north"]}
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..6] at @s run place template dungeondm:testroom ~-3 ~1 ~

execute as @e[type=shulker,tag=north] at @s run kill @s

#west rooms
execute as @e[type=shulker,tag=west] at @s unless entity @e[type=shulker,tag=hallwest,distance=..10] at @s run tag @s add hallwest
execute as @e[type=shulker,tag=west] at @s unless entity @e[type=shulker,tag=hallwest,distance=..10] at @s run tag @s remove west
execute as @e[type=shulker,tag=hallwest] at @s run place template dungeondm:testhall ~-1 ~1 ~1 counterclockwise_90

execute as @e[type=shulker,tag=hallwest] at @s run summon shulker ~-8 ~ ~ {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["west"]}
execute as @e[type=shulker,tag=west] at @s unless entity @e[type=shulker,tag=hallwest,distance=..6] at @s run place template dungeondm:testroom ~1 ~1 ~3 counterclockwise_90

execute as @e[type=shulker,tag=west] at @s run kill @s
#east rooms
execute as @e[type=shulker,tag=east] at @s unless entity @e[type=shulker,tag=halleast,distance=..10] at @s run tag @s add halleast
execute as @e[type=shulker,tag=east] at @s unless entity @e[type=shulker,tag=halleast,distance=..10] at @s run tag @s remove east
execute as @e[type=shulker,tag=halleast] at @s run place template dungeondm:testhall ~1 ~1 ~-1 clockwise_90

execute as @e[type=shulker,tag=halleast] at @s run summon shulker ~8 ~ ~ {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["east"]}
execute as @e[type=shulker,tag=east] at @s unless entity @e[type=shulker,tag=halleast,distance=..6] at @s run place template dungeondm:testroom ~ ~1 ~-3 clockwise_90

execute as @e[type=shulker,tag=east] at @s run kill @s
#south rooms
execute as @e[type=shulker,tag=south] at @s unless entity @e[type=shulker,tag=hallsouth,distance=..10] at @s run tag @s add hallsouth
execute as @e[type=shulker,tag=south] at @s unless entity @e[type=shulker,tag=hallsouth,distance=..10] at @s run tag @s remove south
execute as @e[type=shulker,tag=hallsouth] at @s run place template dungeondm:testhall ~1 ~1 ~ 180

execute as @e[type=shulker,tag=hallsouth] at @s run summon shulker ~3 ~ ~7 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["south"]}
execute as @e[type=shulker,tag=south] at @s unless entity @e[type=shulker,tag=hallsouth,distance=..6] at @s run place template dungeondm:testroom ~ ~1 ~ 180

execute as @e[type=shulker,tag=south] at @s run kill @s