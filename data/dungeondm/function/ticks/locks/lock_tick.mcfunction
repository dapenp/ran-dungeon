execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[0.0f]} unless data entity @s {Rotation:[180.0f]} at @s if entity @e[type=shulker,tag=block,distance=..11,dx=0,dz=-11] run kill @s
execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[180.0f]} at @s if entity @e[type=shulker,tag=block,distance=..11,dx=0,dz=11] run kill @s
execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[90.0f]} at @s if entity @e[type=shulker,tag=block,distance=..11,dx=11,dz=0] run kill @s
execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[-90.0f]} at @s if entity @e[type=shulker,tag=block,distance=..11,dx=-11,dz=0] run kill @s
execute as @e[type=armor_stand,tag=lock] if data entity @s {Rotation:[270.0f]} at @s if entity @e[type=shulker,tag=block,distance=..11,dx=-11,dz=0] run kill @s

                                              #============
                                              # Lock state
                                              #============
#deactive                                              
execute as @e[type=armor_stand,tag=lock] at @s unless entity @p[distance=..2] run data merge entity @s {ShowArms:0b,ArmorItems:[{},{},{},{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"dungeondm:lock_close_lv0"}}]}
execute as @e[type=armor_stand,tag=lock] at @s unless entity @p[distance=..2] at @s run tag @s remove lock_active
execute as @e[type=armor_stand,tag=lock] at @s unless entity @p[distance=..2] unless entity @s[tag=played_vault_sound] run playsound minecraft:block.vault.deactivate ambient @a[distance=..10] ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=lock] at @s unless entity @p[distance=..2] unless entity @s[tag=played_vault_sound] run tag @s add played_vault_sound
execute as @e[type=armor_stand,tag=lock] at @s if entity @p[distance=..2] run tag @s remove played_vault_sound
#active
execute as @e[type=armor_stand,tag=lock] at @s if entity @p[distance=..2] unless entity @e[type=!armor_stand,tag=gatekeeper_mob,distance=..5] run data merge entity @s {ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"dungeondm:lock_active_lv0"}}]}
execute as @e[type=armor_stand,tag=lock] at @s if entity @p[distance=..2] unless entity @e[type=!armor_stand,tag=gatekeeper_mob,distance=..5] unless entity @s[tag=lock_active] run playsound minecraft:block.vault.activate ambient @a[distance=..10] ~ ~ ~ 1 1 1
#mob deactive
execute as @e[type=armor_stand,tag=lock] at @s if entity @p[distance=..2] unless entity @e[type=!armor_stand,tag=gatekeeper_mob,distance=..5] unless entity @s[tag=lock_active] run tag @s add lock_active
execute as @e[type=armor_stand,tag=lock] at @s if entity @e[type=!armor_stand,tag=gatekeeper_mob,distance=..5] run data merge entity @s {ShowArms:0b,ArmorItems:[{},{},{},{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697002}}]}