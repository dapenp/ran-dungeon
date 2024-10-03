say spawn
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}]} at @s run summon shulker ~ ~-2 ~-5 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["north"]}
tag @e[type=armor_stand,tag=lock] remove lock
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=west] at @s unless entity @e[type=shulker,tag=hallwest,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=east] at @s unless entity @e[type=shulker,tag=halleast,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=south] at @s unless entity @e[type=shulker,tag=hallsouth,distance=..10] run function dungeondm:dungeongen/room_gen