execute unless entity @e[tag=spike,distance=..0.5] run damage @p 69 minecraft:cactus
execute unless entity @e[tag=spike,distance=..0.5] run playsound minecraft:entity.evoker_fangs.attack
execute unless entity @e[tag=spike,distance=..0.5] run execute at @e[tag=trap,sort=nearest,limit=1] run summon item_display ~ ~ ~ {Tags:["spike"],item:{id:"minecraft:emerald",Count:1b,components:{"minecraft:custom_model_data":697008}}}
execute if entity @e[tag=spike,distance=..0.5] run effect give @s minecraft:slowness 1 2
