#north halls
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] at @s run tag @s add hallnorth
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] at @s run tag @s remove north
execute as @e[type=shulker,tag=hallnorth] at @s run place template dungeondm:testhall ~-1 ~1 ~-1

execute as @e[type=shulker,tag=hallnorth] at @s run summon shulker ~ ~ ~-8 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["north"]}
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..6] at @s run place template dungeondm:testspawn ~-3 ~1 ~