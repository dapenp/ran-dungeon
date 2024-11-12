execute unless entity @e[tag=trap,distance=..0.5] run scoreboard players set @s spikeTimer 0
execute unless entity @e[tag=spike,distance=..0.5] run kill @e[tag=spike,sort=nearest,distance=..1]