#player tick
execute as @a at @s run function dungeondm:player_tick
#test lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[0.0f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[-89.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[89.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[179.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn

execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[0.0f]} unless data entity @s {Rotation:[180.0f]} at @s if entity @e[type=shulker,tag=block,distance=..10,dx=0,dz=-10] run kill @s

