execute as @e[type=marker,tag=portal_room] unless entity @s[nbt={Rotation:[90.0f,0.0f]}] unless entity @s[nbt={Rotation:[-90.0f,0.0f]}] at @s run summon item_display ~ ~-0.5 ~ {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697009}}}
execute as @e[type=marker,tag=portal_room] unless entity @s[nbt={Rotation:[90.0f,0.0f]}] unless entity @s[nbt={Rotation:[-90.0f,0.0f]}] at @s run summon item_display ~ ~1.5 ~ {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697010}}}
execute as @e[type=marker,tag=portal_room,nbt={Rotation:[90.0f,0.0f]}] at @s run summon item_display ~ ~-0.5 ~1 {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697009}},Rotation:[90.0f,0.0f]}
execute as @e[type=marker,tag=portal_room,nbt={Rotation:[90.0f,0.0f]}] at @s run summon item_display ~ ~1.5 ~1 {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697010}},Rotation:[90.0f,0.0f]}
execute as @e[type=marker,tag=portal_room,nbt={Rotation:[-90.0f,0.0f]}] at @s run summon item_display ~ ~-0.5 ~ {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697009}},Rotation:[-90.0f,0.0f]}
execute as @e[type=marker,tag=portal_room,nbt={Rotation:[-90.0f,0.0f]}] at @s run summon item_display ~ ~1.5 ~ {brightness:{sky:10,block:15},item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":697010}},Rotation:[-90.0f,0.0f]}
kill @s