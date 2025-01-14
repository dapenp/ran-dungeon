#player tick
execute as @a at @s run function dungeondm:player_tick
#test lock
execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[0.0f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[-89.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[89.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn
#execute as @e[type=armor_stand,tag=lock] if data entity @s {HandItems:[{id:"minecraft:trial_key"}],Rotation:[179.9f]} at @s run function dungeondm:dungeongen/1st_hallway_spawn

execute if entity @e[type=armor_stand,nbt={Invisible:1b}] run function dungeondm:tags/tags

                                              #======
                                              # Trap
                                              #======
execute as @a at @s if entity @e[type=marker,tag=trap,distance=..0.5] run function dungeondm:traps/spike_trap_active
#execute as @a at @s unless entity @e[type=marker,tag=trap,distance=..0.5] run function dungeondm:traps/spike_trap_deactive
execute as @a at @s if entity @e[type=marker,tag=trap,distance=..1,limit=1] run function dungeondm:traps/spike_trap_deactive

execute as @e[tag=portal_room] at @s if entity @p[distance=..5] run function dungeondm:traps/portal_active
execute as @e[type=marker,tag=room_portal_entrance] at @s if entity @p[distance=..5] run function dungeondm:traps/portal_damage


execute as @e[tag=trigger] run function dungeondm:tags/tags

                                              #===============
                                              # Portal Spawner
                                              #===============
execute as @a[tag=spawner] unless entity @e[tag=portal_mob,distance=..10] at @s run scoreboard players set @s wave_triggered 0
execute as @a[scores={portal_active=1, wave_in_progress=0}] run function dungeondm:spawners/portal_start_wave
#execute as @a[scores={portal_active=1, wave_in_progress=0}] run scoreboard players set @s wave_in_progress 1
execute as @a[scores={portal_progress=..0}] run function dungeondm:spawners/portal_end_trial