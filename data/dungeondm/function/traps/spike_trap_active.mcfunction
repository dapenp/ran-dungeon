execute as @a at @s if entity @e[tag=trap,distance=..1] run scoreboard players add @s spikeTimer 1
execute as @a[scores={spikeTimer=..1}] at @s if entity @e[tag=spike,distance=..3] run damage @p 5 minecraft:cactus
execute as @a[scores={spikeTimer=20..}] run scoreboard players set @s spikeTimer 0
execute as @a[scores={spikeTimer=..1}] at @s if entity @e[tag=trap,distance=..1] run execute at @e[tag=trap,sort=nearest,limit=1] run summon item_display ~ ~ ~ {Tags:["spike"],item:{id:"minecraft:emerald",Count:1b,components:{"minecraft:custom_model_data":697008}}}
execute as @a[scores={spikeTimer=7..}] at @s if entity @e[tag=spike,distance=..1] run kill @e[tag=spike,sort=nearest,distance=..1]
execute as @a[scores={spikeTimer=..1}] at @s if entity @e[tag=trap,distance=..1] run playsound minecraft:item.trident.hit_ground
execute if entity @e[tag=spike,distance=..0.5] run effect give @s minecraft:slowness 1 2