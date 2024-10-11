                               #=============
                               #shulker spawn
                               #============
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[0.0f]} unless data entity @s {Rotation:[90.0f]} unless data entity @s {Rotation:[-90.0f]} unless data entity @s {Rotation:[270.0f]} unless data entity @s {Rotation:[180.0f]} at @s run summon shulker ~ ~-2 ~-5 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["north"]}
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[270.0f]} at @s run summon shulker ~-5 ~-2 ~ {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["west"]}
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[-90.0f]} at @s run summon shulker ~-5 ~-2 ~ {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["west"]}
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[90.0f]} at @s run summon shulker ~5 ~-2 ~ {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["east"]}
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[180.0f]} at @s run summon shulker ~ ~-2 ~5 {NoGravity:1b,NoAI:1b,AttachFace:0b,Tags:["south"]}

                               #==========
                               #tag remove
                               #==========
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[0.0f]} at @s run tag @s remove lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[270.0f]} at @s run tag @s remove lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[-90.0f]} at @s run tag @s remove lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[90.0f]} at @s run tag @s remove lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[180.0f]} at @s run tag @s remove lock

                               #===============
                               #room generation
                               #===============
execute as @e[type=shulker,tag=north] at @s unless entity @e[type=shulker,tag=hallnorth,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=west] at @s unless entity @e[type=shulker,tag=hallwest,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=east] at @s unless entity @e[type=shulker,tag=halleast,distance=..10] run function dungeondm:dungeongen/room_gen
execute as @e[type=shulker,tag=south] at @s unless entity @e[type=shulker,tag=hallsouth,distance=..10] run function dungeondm:dungeongen/room_gen